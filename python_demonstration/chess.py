class ChessPiece:
    def __init__(self, color, symbol):
        self.color = color
        self.symbol = symbol
    
    def __str__(self):
        if self.color == "w":
            return self.symbol.upper()
        else:
            return self.symbol.lower()

class ChessGame:
    def __init__(self):
        # Initialize the board as a 2D list of ChessPiece objects
        self.board = [
            [ChessPiece("w", "R"), ChessPiece("w", "N"), ChessPiece("w", "B"), ChessPiece("w", "Q"), ChessPiece("w", "K"), ChessPiece("w", "B"), ChessPiece("w", "N"), ChessPiece("w", "R")],
            [ChessPiece("w", "P"), ChessPiece("w", "P"), ChessPiece("w", "P"), ChessPiece("w", "P"), ChessPiece("w", "P"), ChessPiece("w", "P"), ChessPiece("w", "P"), ChessPiece("w", "P")],
            [None, None, None, None, None, None, None, None],
            [None, None, None, None, None, None, None, None],
            [None, None, None, None, None, None, None, None],
            [None, None, None, None, None, None, None, None],
            [ChessPiece("b", "p"), ChessPiece("b", "p"), ChessPiece("b", "p"), ChessPiece("b", "p"), ChessPiece("b", "p"), ChessPiece("b", "p"), ChessPiece("b", "p"), ChessPiece("b", "p")],
            [ChessPiece("b", "r"), ChessPiece("b", "n"), ChessPiece("b", "b"), ChessPiece("b", "q"), ChessPiece("b", "k"), ChessPiece("b", "b"), ChessPiece("b", "n"), ChessPiece("b", "r")]
        ]
        # Keep track of which player's turn it is
        self.turn = "w"
    
    def make_move(self, move):
        # Parse the move string to determine the start and end positions
        start_pos, end_pos = move.split("-")
        # Use the ord() function to convert the letter to a number (a = 0, b = 1, etc. since we're subtracting the unicode value of "a" which is 97, and the unicode value of the subsequent letters are 98, 99, etc.)
        # rows refer to the numerical part of the chess moves, columns refer to the letter part of the chess moves
        start_row, start_col = int(start_pos[1]) - 1, ord(start_pos[0]) - ord("a")
        end_row, end_col = int(end_pos[1]) - 1, ord(end_pos[0]) - ord("a")
        
        # Check if the move is legal
        if not self.is_legal_move(start_row, start_col, end_row, end_col):
            print("Illegal move")
            return
        
        # Perform the move on the board
        self.board[end_row][end_col] = self.board[start_row][start_col]
        self.board[start_row][start_col] = None
        
        # Switch the turn to the other player
        self.turn = "b" if self.turn == "w" else "w"

    
    def is_legal_move(self, start_row, start_col, end_row, end_col):
        # Get the piece at the start position
        piece = self.board[start_row][start_col]
        
        # Check if the piece exists
        if piece is None:
            return False
        
        # Check if it's the right color's turn
        if piece.color != self.turn:
            return False
        
        # Check if the piece is a pawn
        if piece.symbol in ["P", "p"]:
            # Legal pawn moves
            # Check if the pawn is moving forward one square to an unoccopied position
            if self.turn == "b" and start_row - end_row == 1 and start_col == end_col and self.board[end_row][end_col] is None:
                return True
            elif self.turn == "w" and end_row - start_row == 1 and start_col == end_col and self.board[end_row][end_col] is None:
                return True
            # Check if the pawn is moving forward two squares across unoccupied positions when not having moved before
            elif self.turn == "b" and start_row == 7 and end_row == 5 and start_col == end_col and self.board[5][end_col] is None and self.board[6][end_col] is None:
                return True
            elif self.turn == "w" and start_row == 2 and end_row == 4 and start_col == end_col and self.board[4][end_col] is None and self.board[3][end_col] is None:
                return True
            # Check if the pawn is capturing an opponent's piece diagonally
            elif self.turn == "b" and start_row - end_row == 1 and abs(start_col - end_col) == 1 and self.board[end_row][end_col] is not None and self.board[end_row][end_col].color != self.turn:
                return True
            elif self.turn == "w" and end_row - start_row == 1 and abs(start_col - end_col) == 1 and self.board[end_row][end_col] is not None:
                return True
            # Check if the pawn is capturing another pawn that moved next to it (2 square move), i.e. en passant
            # ...
            else:
                return False

        # Check if the piece is a knight
        if piece.symbol in ["N", "n"]:
            # Legal knight moves
            # Check if the knight is moving 2 squares up/down and 1 square left/right or vice versa to an unoccupied position or capturing an opponent's piece
            if abs(start_row - end_row) == 2 and abs(start_col - end_col) == 1 and (self.board[end_row][end_col] is None or self.board[end_row][end_col].color != self.turn):
                return True
            elif abs(start_row - end_row) == 1 and abs(start_col - end_col) == 2 and (self.board[end_row][end_col] is None or self.board[end_row][end_col].color != self.turn):
                return True
            else:
                return False

        # Check if the piece is a bishop
        if piece.symbol in ["B", "b"]:
            # Legal bishop moves
            # Check if the bishop is moving diagonally
            if abs(start_row - end_row) == abs(start_col - end_col):
                for i in range(1, abs(start_row - end_row)):
                    # Check that the bishop stops at the first piece it encounters
                    if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i] != self.board[end_row][end_col]:
                        return False
                    # Check that the bishop only captures an enemy piece
                    if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i].color != self.turn:
                        return False
                return True
            else:
                return False
         
        # Check if the piece is a rook
        if piece.symbol in ["R", "r"]:
            # Legal rook moves
            # Check if the rook is moving horizontally
            if start_row == end_row:
                # Check that the rook stops at the first piece it encounters
                for i in range(1, abs(start_row - end_row)):
                    if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i] != self.board[end_row][end_col]:
                        return False
                # Check that the rook only captures an enemy piece
                if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i].color != self.turn:
                    return False
                else:
                    return True
            # Check if the rook is moving vertically
            elif start_col == end_col:
                # Check that the rook stops at the first piece it encounters
                for i in range(1, abs(start_row - end_row)):
                    if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i] != self.board[end_row][end_col]:
                        return False
                # Check that the rook only captures an enemy piece
                if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i].color != self.turn:
                    return False
                else:
                    return True         
            else:
                return False
    
        # Check if the piece is a queen
        if piece.symbol in ["Q", "q"]:
            # Legal queen moves (bishop and rook moves)
            # Check if the queen is moving horizontally
            if start_row == end_row:
                # Check that the queen stops at the first piece it encounters
                for i in range(1, abs(start_row - end_row)):
                    if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i] != self.board[end_row][end_col]:
                        return False
                # Check that the queen only captures an enemy piece
                if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i].color != self.turn:
                    return False
                return True
            # Check if the queen is moving vertically
            if start_col == end_col:
                # Check that the queen stops at the first piece it encounters
                for i in range(1, abs(start_row - end_row)):
                    if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i] != self.board[end_row][end_col]:
                        return False
                # Check that the queen only captures an enemy piece
                if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i].color != self.turn:
                    return False
                return True
            # Check if the queen is moving diagonally
            if abs(start_row - end_row) == abs(start_col - end_col):
                for i in range(1, abs(start_row - end_row)):
                    # Check that the queen stops at the first piece it encounters
                    if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i] != self.board[end_row][end_col]:
                        return False
                    # Check that the queen only captures an enemy piece
                    if self.board[start_row + i][start_col + i] is not None and self.board[start_row + i][start_col + i].color != self.turn:
                        return False
                return True
            else:
                return False

        # Check if the piece is a king
        if piece.symbol in ["K", "k"]:
            # Legal king moves
            # Check if the king is moving one square in any direction
            if abs(start_row - end_row) <= 1 and abs(start_col - end_col) <= 1:
                return True
        
        # If all checks pass, return True
        return True

    def get_pgn(self):
        # Initialize an empty string to store the PGN
        pgn = ""
        
        # Loop through the board and append the moves to the PGN string
        for row in self.board:
            for col in row:
                if col is not None:
                    pgn += str(col)
        return pgn

from IPython.display import clear_output

game = ChessGame()

while True:
    # Clear the output
    clear_output()
    
    # Print the board
    for row in game.board:
        print(" ".join([str(col) if col is not None else "." for col in row]))
    print()
    
    # Print a reminder of the rows and columns next to the board
    print("Rows (top to bot): " + " ".join([str(i) for i in range(1, 9)]))
    print("Columns (left to right): " + " ".join([chr(i) for i in range(97, 105)]))

    # Prompt the user to enter a move
    move = input(f"Enter a move ({game.turn}'s turn): ")
    game.make_move(move)