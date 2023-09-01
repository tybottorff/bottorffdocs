const chessboard = document.getElementById('chessboard');

for (let i = 0; i < 8; i++) {
  for (let j = 0; j < 8; j++) {
    const square = document.createElement('div');
    square.classList.add('square');
    if ((i + j) % 2 === 1) {
      square.classList.add('black');
    }
    chessboard.appendChild(square);
  }
}
const PythonShell = require('python-shell');

const pyshell = new PythonShell('chess.py');

chessboard.addEventListener('click', (event) => {
  const square = event.target;
  if (square.classList.contains('square')) {
    // send a message to the Python script to make a move
    pyshell.send(square.id);
    pyshell.on('message', (moveResult) => {
      if (moveResult === 'true') {
        // move was successful, update the board
        updateBoard();
      } else {
        // move was invalid, show an error message
        alert('Invalid move!');
      }
    });
  }
});

function updateBoard() {
  // send a message to the Python script to get the current FEN string
  pyshell.send('get_fen');
  pyshell.on('message', (fen) => {
    // use the FEN string to update the chessboard
  });
}

