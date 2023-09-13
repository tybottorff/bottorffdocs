# Bioinformatics/biostatistics
 - ROC: receiver operating characteristics, performance measure for automated classification, provides visual and numerical summary of predictor behavior
 - voom algorithm: mean-variance modeling, estimate mean-variance in data, then use this to compute appropriate precision weight for each observation. count data (like RNAseq) always shows mean-variance relationships (increasing variance with increasing count size). convert counts to logCPM values (adding 0.5 to avoid log of 0), normalize matrix of logCPM values, fit linear models, fit trend to square root standard deviations as function of average log count measure, use trend line to predict variance of each logCPM value, inverse variance is precision weight estimate
## Statistics
 - discrete random variables (like counts) will have associated probability distributions (also called probability mass function): list of possible values of random variable and their associated probabilities (or as a formula rather than a list), defined for a finite or countably infinite set of possible values (usually integers)
 - cumulative distribution function: probability that random variable is less than or equal to a certain value
 - continuous random variables: things like time, distance, log of gene expression level, antibody levels (can also model some discrete variables with many possible values as continuous), probability density function (rather than probability mass function as for discrete variables) which is defined for all real numbers in range of random variable, area = probability (area under probability density function between points a and b is same as probability of random variable having value between a and b)
 - mean = 1st moment, expected value (average value observed if you could observe variable infinite number of times, weighted average of all possible values where weights are probabilities)
 - variance = 2nd moment, measures spread of data (sum of squares of differences between each value and mean, divided by number of values minus 1), square root of variance is standard deviation (which has same units as original variable)
 - percentiles are calculated with inverse of cumulative distribution function (i.e. find value of random variable that has a certain probability of random variable being less than or equal to it)
### Discrete probability distributions
 - Bernoulli random variable: 2 possible values (0 or 1), usually comes up in success vs. failure (only 2 outcomes), probability of success is p, probability of failure is 1-p
 - Binomial random variable: similar to Bernoulli random variable but now we have n independent trials (each trial is a Bernoulli random variable), probability of success is within each trial is still p, probability of failure within each trial is still is 1-p, X is the number of successes in n trials (X is a random binomial variable, its probability distribution is the binomial distribution), probability of X = x is (n choose x) * p^x * (1-p)^(n-x) where (n choose x) = n!/(x!(n-x)!) (n choose x) is the number of ways to choose x successes from n trials, mean = np, variance = np*(1-p)
 - Geometric random variable: similar to binomial random variable except we run trials until we get 1 success (number of trials is discrete random variable), for example something like number of nucleotides until the next T in a DNA sequence after the previous T, mean is 1/p, variance is (1-p)/p^2
 - Negative binomial random variable: similar to geometric random variable except we run trials until we get r successes (number of trials is discrete random variable), for example comparing two DNA sequences until we get 4 mismatches for example, mean is r/p, variance is r*(1-p)/p^2
 - Poisson random variable: discrete random variable, counting events over some continuous interval (like time or space intervals), conditions include independence of whether or not event occurs in one subinterval and another as well as chance of event occurring in subinterval only depending on length of subinterval (rather than where subinterval occurs within overall interval), λ is the average number of times we expect an event to occur in an interval, probability of X = x is e^(-λ) * λ^x / x!, mean is λ, variance is λ, good for counts over time or space but RNAseq for example often doesn't follow Poisson distribution (mean and variance are not equal)
 - Multinomial distribution: like binomial distribution but trials can have > 2 possible outcomes
### Common continuous distributions
 - normal distribution: probability density function is 1/(sqrt(2*π)*σ) * e^(-(x-μ)^2/(2*σ^2)), mean = μ, variance = σ^2, symmetric around mean
 - Γ (gamma) distribution
 - exponential distribution: special case of gamma distribution, probability density function is λ * e^(-λx), mean = 1/λ, variance = 1/λ^2
 - β distribution
 - t-distribution: probability density function is Γ((v+1)/2) / (sqrt(v*π) * Γ(v/2)) * (1 + x^2/v)^(-(v+1)/2), mean = 0, variance = v/(v-2) for v > 2, v is degrees of freedom (number of independent observations in sample), t-distribution approaches normal distribution as v approaches infinity, symmetric around mean (0) as well (like normal distribution)
 - chi-squared distribution: special case of gamma distribution, probability density function is 1/(2^(v/2) * Γ(v/2)) * x^(v/2-1) * e^(-x/2), mean = v, variance = 2v, v is degrees of freedom (number of independent observations in sample), chi-squared distribution approaches normal distribution as v approaches infinity, skewed right
 - F distribution
## Sequence alignment
 - scoring method often used (for example matching bases +2, mismatch -1, gap -2, or maybe 0 for matches, -1 for mismatch, and -3 for gap), such as the popular dynamic programming Needleman-Wunsch algorithm (global alignment) or Smith-Waterman algorithm (local alignment), these are guaranteed to find the highest scoring alignment but are slow
 - heuristic algorithms: faster, like BLAST (basic local alignment search tool) and FASTA, based on string matching theory (best alignment likely has at least some small region of perfectly matching residues, so search for these small perfect match regions then focus on these seed regions, extend search outwards from seeds looking for high-scoring local alignment in neighborhood of seed, rank alignments after analyzes all such seeds), this doesn't guarantee finding the best alignment (best alignment could have many close substitutions and gaps that don't match perfectly)
 - scoring algorithms based on log-likelihood ratio (log-odds), assigned values (like +2 for match) are possible log-odds values that sum to the log-likelihood ratio
 - Markov chains: describe process that moves from state to state in discrete steps, process here is DNA sequence and steps are bases from 5' to 3', states are the possible bases
## Dimensional reduction
### PCA
 - unsupervised method
 - find smaller number of dimensions (2) that retain most of useful information in data
 - linear combination of original variables, possibly an issue to only have linear combinations of variables
 - PCs are sets of linearly uncorrelated variables
 - mechanism/steps: calculate matrix that summarizes how variables relate to one another, break matrix down into direction and magnitude (~importance) components
 - PC matrix has same number of dimensions as original data, but many PCs may not be informative (so we reduce the number of PCs once we see how much variance each PC vector explains)
 - variance explained by each PC: look at eigenvalues in scree plot (elbow plot, shows eigenvalues on y-axis for each PC on x-axis), with non-ideal scree plots one can just pick PCs with eigenvalues > 1 (Kaiser rule) or select enough PCs to explain a set % of the variance in the data (say 80% for example)
 - finds new directions (PCs) in data along which there is maximal variation (direction defined as linear combination of data by vector with weights), i.e. PC with maximal variance
 - correlation matrix: correlations between each pair of variables
 - eigenvalues represent amount of variance related to component
 - each PC is an orthogonal vector to the rest
### tSNE
 - unsupervised method
 - T-distributed stochastic neighbor embedding, non-linear scaling
 - iterative method, repeatedly move data points closer or further away from each other depending on 'similarity'
 - slow
### UMAP
 - unsupervised method
 - uniform manifold approximation and projection
 - quicker and can preserve more global structure than tSNE (more like PCA)
 - preserves centroids of clusters, can plot on graph
### k-means
 - clustering technique
 - choose random coordinates for locations of k-centroids, group data points together by finding nearest centroid (k groups), calculate new center of each centroid by taking mean position of data points in each group, iterate until centroids stop moving significant amounts
 - downside is you need to choose the number of clusters beforehand (k value)
 - minimizing the within cluster sum of squares over K clusters, partition data points into K initial clusters (randomly or heuristically), computes cluster means, constructs new partition by associating each point with closest cluster mean (yielding new clusters of which means are calculated), make new partition by associating each point with closest cluster mean again, repeat until convergence (data points no longer change clusters)
#### Bootstrapping
 - "cluster stability" is used to determine whether or not clusters are reproducible in a replicate experiment, bootstrapping is a non-parametric method to assess cluster stability by generating replicate datasets *in silico*
 - one can resample genes to generate a "replicate" dataset (make bootstrap replicate by sampling genes with replacement, applying clustering method to replicate, recording clusters, and repeating), then report the percentage of times two cells that were originally clustered together are still clustered together in the replicate dataset (also report percentage of times that two cells that weren't originally clustered together still aren't clustered together), larger values here being higher cluster stability. there are some problematic assumptions here though (genes aren't always independent nor interchangeable)
 - one can also resample by cell: reasonable to assume cells were independently drawn from population
## Sequencing
 - barcodes help delineate which reads came from which sample/cell, can also help understand how many counts are unique and not just from amplification (PCR)
 - UMI: unique molecular identifier, complex indices added to libraries before PCR amplification (enables identification of PCR duplicates), a type of barcode
 - amplification is required but introduces biases (some reads amplified more than others), UMIs help with this as you only count 1 read with a given UMI (even if it was amplified 100 times)
# Github
 - Can create new repo on git like tbottorff.github.io, then in terminal git init --> git remote add origin link to tbottorff.github.io --> commit as usual --> push to tbottorff.github.io
 - .gitignore: file placed in root directory of a project, tells github which files to ignore (untracked files)
# Javascript
 - console.log('Hello World'); for hello world
 - can run with node or js file_name in terminal
 - console.log('Hello World'.length); to get length of string, can concatenate strings with +
 - other methods like console.log('Hello     World'.trim()) and .toUpperCase() and .startsWith('X')
 - <script> tag in lines before and after script to insert a script into HTML or can attach script file (do for long scripts) like <script src="/path/to/script.js"></script> or /path can be a URL (ends in .js)
 - Can add multiple scripts in separate lines
 - Can add multiple statements within a script, separate with ; or line breaks unless line ends in an operation like + or the next line begins with a [
 - Add comments with // (equivalent to R #) or /* for a multi line comment without each new line needing // (end comment with */)
 - 'use' strict'; is always good at the beginning to ensure modern mode of Javascript
 - n at the end of a number means it's really big
 - Use `` for strings with evaluation inside, like alert(`the result is ${1+2}`); otherwise can use "" or ''
 - let isGreater = 4 > 1; stores true as isGreater
 - console.log("text"); to print some text
 - define variables with var myNumber = 3; OR var myString = "string"; OR var myBoolean = true; (or false) OR var myArray = []; (array ~ list) OR var myObject = {};
 - for var myArray = [1, 2, 3]; console.log(myArray[0]); spits out 1 (0th element in array)
 - manipulate arrays with push/pop (myArray.push(1); adds 1 to the end of the array, pop removes variables from the end). unshift/shift ~ push/pop but from beginning of array. splice to remove any part of array (like myArray.splice(3,5);)
## Commands
 - alert( "text" ); comes out as a print basically
 - let message = 'Hello' stores 'Hello' as message i.e. can do alert(message);
 - after defining with let, if using let again then that copies to new variable
 - const is like let except variable cannot be reassigned
 - typeof yields the type of whatever is next
 - String converts whatever to a string Number converts whatever to a number, Number(true) = 1, Number(false) = 0
 - Boolean(0) = false, Boolean("") = false (empty string)
## D3 library
 - At beginning of script to get library: <script src="https://d3js.org/d3.v5.min.js"></script>
 - d3.selectAll("p").style("color", "blue"); is a d3 library way to change color of stuff, or d3.select("body").style("background-color", "black"); for just the background I think
 - To randomly color paragraphs: d3.selectAll("p").style("color", function() {
  return "hsl(" + Math.random() * 360 + ",100%,50%)";
});
 - To alternate shades of gray for even/odd nodes: d3.selectAll("p").style("color", function(d, i) {
  return i % 2 ? "#fff" : "#eee";
});
 - To fade background to black: d3.select("body").transition()
    .style("background-color", "black");
 - I'll want to parse the simulation data columns like d3.tsvParse(await FileAttachment("file.tsv").text()), I'm not sure how d3 takes .tsv.gz files but I could just gunzip them into .tsv files
 - d3.extent(data, d => d.date) to get range of date column of data
 - Will likely use reveal function for animation, can specify duration with .duration(time) I think, interpolate/tween for transitions
 - d3.interpolate returns a function that takes a 0 < time < 1 and returns inbetween value for transition
 - Can create slider like viewof number = html`<input type="range" min="0" max="100" step="1">`, then can call number to show slider choice, this will be cool to have sliders for rates and then be able to search for the correct simulation to animate based on the chosen rates
 - Can also do this as a text input: viewof name = html`<input type="text" placeholder="Type a name!">`
 - Can do a drop down selection: viewof fruit = html`<select>
  <option value="apple">Apple</option>
  <option value="orange" selected>Orange</option>
  <option value="banana">Banana</option>
</select>` this will be useful for model choice (make option values each model)
# Jupyter notebook for bioinformatics
 - Do not on rhino, just on regular computer git
 - Start with nohup jupyter --no-browser --port=3018 --ip=127.0.0.1 & (shouldn't have to do ever again unless cluster resets or something)
 - ssh -L 3018:local host:3018 -c -o ServerAliveInternal=30 -fN rhino3snail (do everytime I need to open)
 - if on lab computer, just do ssh -L 3018:localhost:3018 -C -o ServerAliveInterval=30 -fN rhino3 and then localhost:3018 into browser
 - Open new R dev notebooks (.ipynb files)

# Python
## commands
 - np.round(number,x) rounds number to x decimal points
 - np.arange(start,stop,step) makes an array from [start,stop) with step interval
 - list(np.arange(start,stop,step)) makes a list of the np.arange array
 - pandas helps work with data structures
 - itertools helps with sequences
 - super().__init__(): super() gives access to methods in superclass from inheriting subclass, super() returns a temporary object of superclass that allows us to call that superclass' methods, like able to define a superclass rectangle (with area and perimeter formulas) then define a subclass square that inherits rectangle class definitions (area, perimeter)

   class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width

    def area(self):
        return self.length * self.width

    def perimeter(self):
        return 2 * self.length + 2 * self.width

 - Here we declare that the Square class inherits from the Rectangle class
class Square(Rectangle):
    def __init__(self, length):
        super().__init__(length, length)
### bools
 - c = (a == b), c is type bool and value (True or False) depends on if a is/isn't equal to b
### dictionaries
 - dict = {"one": 1, "two": 2}
 - dict["one"] --> 1
 - can include lists as values (1, 2 above, versus keys "one", "two")
 - assign new pair to dict: dict["three"] = 3
 - can get all keys with dict_name.keys(), get all values with dict_name.values(), or items (key: value pairs) with dict_name.items()
 - keys cannot be mutable, but values can be (for example lists are mutable)
### functions
 - def function_name(input_1, input_2):
      result = some kind of operation(s) involving input_1 and input_2
      return result
### help with functions
 - help(function_name)
### introspection
 - dir: dir(list_name) gives methods (build in functions) and attributes (accessible internal data) for object
 - id: id(list_name) gives unique object identifier, b = a for list a will have both with same id (referenced not copied, changes to b change a)
### lists
 - numbers = [1, 2, 3]
 - numbers[0] calls 0th value in list = 1
 - variable_name.append --> append to end of list
 - list_name.sort() sorts list into ascending numerical order
 - list_name.split('split_by') splits list_name into pieces around split_by matches (whitespace by default)
 - b = a[:] copies list a --> b (better than b = a since this doesn't protect a from changes to b), can also copy with b = list(a)
 - enumerate(list_name) lets get index and element, like
   for i,word in enumerate(words):
       print('The',i,'word is',word)
 - comprehension: can make a list with something like w = [len(i) for i in protseq.split('!')] instead of w = []
    for i in protseq.split('*'):
        w.append(len(i))
### loops
 - for i in range(1, 10):
 - for i in numbers: where numbers is a tuple/list
 - for i in string: also works
 - for key in dict.keys(): where dict is a dictionary (can access value with dict[key])
 - break --> break out, like for x in range(0, 5): if x == 1: break
 - continue jumps us to next iteration
 - can use if: and else:
 - include assert statement equivalency to stop loop if this returns false
### math
 - a//3 means truncate decimal float off of a/3
 - a%b gives remainder from a/b
 - j = sqrt(-1) i.e. i
 - abs(complex #) = hypotenuse length in 2D complex plot
### mkdir within python
 - import os
 - os.mkdir("name_of_dir") into current directory
### placeholders (%)
 - with name and number defined, can do...
   print('%s %d' % (name, number)), %s gets the string, %d gets the decimal
 - format is always '%x %y...' % (whatever_wanted_for_x, whatever_wanted_for_y...)
 - %f for float
 - %g for generic number
### print
 - print ("text", variable) (I like this one better)
 - print ("text" + str(variable))
### quotes
 - "\"ain't\" isn't a word" --> "ain't" isn't a word (\ escapes "
### regular expressions
 - import re
 - match = re.compile(regex command)
 - . = anything except newline
 - ^ = start of string
 - $ = end of string
 - ab*  = a with any number of b's after (even 0, so a, ab, abb...), do ab+ for any non-0 number of b's, ab? for a or ab only
 - a{m} = m # of a's, can do a{m,n} for # of a's b/w m & n
 - \ escapes special characters
### tuples
 - numbers = (1, 2, 3)
 - list that cannot be mutated once formed
### variable classes
 - int (integers)
 - float (decimals)
 - convert float to int with int(number_that_is_a_float), but it rounds to integer closer to 0 (floor if positive, ceiling if negative)
 - convert int to float with float(number_that_is_an_int)
 - ?variable_name gives info on variable (type, length if a list...)
 - a += 3 means add 3 to a
#### str (strings)
 - slice with [index_1:index_2], can omit an index (1st index assumed to be 0, last index assumed to be end)
 - f-strings:
name = 'name_ex'
age = 27
message = f'My name is {name}, and I am {age} years old.'
### working with data
#### copying vs. referencing
 - reference with ref_df = old_df, this doesn't preserve old_df to changes made to ref_df
 - copy with copy_df = old_df.copy(), this does preserve old_df to changes made to copy_df
#### counting
 - df.count() counts values in each column
#### export
 - df.to_csv("path/name.csv", index=False)
#### filter
 - df = df[df.column_name > 0]
#### grouping
 - df.groupby("column_name")
#### import
 - import urllib.request
 - urllib.request.urlretrieve("url to data", "path to data including name")
#### looking at data
 - df.head(x) shows column names & first x rows, as does df[:y]
 - df.tail(y) shows column names & last y rows, as does df[-y:]
 - df.info() gives info like columns, rows, data types
 - df[["column_1", "column_2"] ] (no space there, I don't want to make an emacs link) or df.column_name to subset to 1 column, can add .modifiers at end (like .head(), or .dtype to get data type (0 means character)
 - df[0:3] to access first 3 rows
 - access column, row value with df.iloc[2, 1] which gets value in column 2, row 1, can also do ranges here (df.iloc[0:2, 1:4], or df.iloc[:2, 4:]) or specific vaues (df.iloc[[1, 5], [25, 77]), can also call using column names (df.iloc[0, ["column_name_1"]), using loc instead of iloc gets inclusive bounds
 - subset with df.[column_name==value] to filter, can do multiple filters with df.[(column_name_1 > value_1) & (column_name_2 != value_2)], use | instead of & for OR instead of AND
 - get unique values in a column with pd.unique(df["column_name"])
#### missing data
 - pd.isnull(df), True means missing data (NaN), can remove NA rows from 1 column with df[-pd.isnull(df.column_name)]
 - df.dropna()) removes na rows, can subset to 1 column with .dropna(subset = ["column_name"])
 - df.column_name = df.column_name.fillna(0) to fill NAs with 0, this could mess up summary statistics, so perhaps better to replace with mean i.e. .fillna(df.mean())
#### performing math on data
 - can do df.column_name/365 for example to get that column values / 365
 - can do df.column_name.head()/365 or .min()/365 whatever ...()
#### plot (similar to R)
 - (p9.ggplot(data=df,
                         mapping=p9.aes(x='column_1', y='column_2'))
    + p9.geom_point()
    + p9.labs(title="Title",
              x="x-axis",
              y="y-axis")
    + p9.theme(text=p9.element_text(size=16)
#### read csv
 - import pandas as pd
 - df = pd.read_csv("path to data w/ name")
#### summary statistics
 - df.column_name.describe() for general summary statistics
 - df.column_name.min() for specific statistic (minimum)
## Strings
 - Escape special characters with \
 - str_length() gives the numbers of characters in a str
 - str_c() combines strings, can use sep argument to add a separation character, like str_c("x", "y", sep = ",") yields "x,y"
 - str_sub(x, start, end), subsets a string, can use negative numbers for start and end values to count backwards
## Regular expression matching patterns
 - str_view(x, "expression to look for") to search for "expression to look for" in string x
 - str_view(x, ".a.") searches for a with any characters around it except for a newline
 - str_view(x, "\\.a") to look for .a since we need \ to escape the special . (usually matches any character) and \ to escape the \
 - str_view(x, "\\\\") to look for a \
 - ^ to match start of string, like str_view(x, "^a") will look for a at beginning, $ for end of string, like str_view(x, "a$") for ending in a
 - \d matches any digit, need to use as \\d
 - \s matches and white space (space, tab, newline), need to use as \\s
 - [abc] matches a, b, or c
 - [^abc] matches anything except a, b, or c
 - abc|d..f will match either abc or deaf
 - ? means 0 or 1, + means 1 or more, * means 0 or morei
 - {n} means n times, {n,} means n or more, {,n} means at most n, {n,m} means between n and m
 - (..)\\1 matches 2 repeats of any 2 characters, like nana, coco, juju, not sure what the \\1 does
# Terminal
## Commands
### Cluster
 - .snapshot backs up cluster data, monthly, daily, hourly
### add, commit, push
 - git add filename (can do multiple filenames with spaces between them)
 - git commit -m "description" OR git commit -uno (description in top line in vim, sub description 2 lines below)
 - git push -u origin master
 - git diff file 1 file 2 can yield differences between 2 files (useful for example in looking for discrepancies in model.py between different directories), can also be done in Emacs with magit E (Ediff)
### clone
 - git clone (paste link from Github Clone or Download button) to get a new repo
### cd
 - cd /mnt/c = get from Ubuntu home on laptop to laptop C drive
 - cd .. = go up a level
 - cd . = stay in current level
 - cd = cd ~ = cd $home = go to home
 - cd / = go to root
### mkdir
 - mkdir -p for nested folders (like mkdir folder_1/folder_2/folder_3)
### rmdir and rm
 - rmdir emptydir = remove empty directory
 - rmdir directory_name = remove directory_name
 - rm -i filename = remove filename but asks first for y/n confirmation
### ls
 - ls = list subdirectories
 - ls -a = ls but with more information and shows hidden files (start with . like .filename)
 - ls -al = ls-a but with more information like file permissions (i.e. -rw-r)
 - ls -alF = like ls -al
 - ls -lat = see file modification time
 - ls -I "slurm" ignores slurm
 - ls | wc -l counts files in directory
### ln
 - ln -s ../go to file to symbolically link file to current directory
### cat
 - cat filename = print filename to terminal
 - cat filename1 filename 2 > directory = copy filenames1-2 to directory
### cp
 - cp filename1 filename2 = copy filename1 to filename2 (overwrite)
 - cp * /directory path = copy all files in current directory to /directory path end
 - cp filename.bak = make backup of filename
 - scp to copy files through a ssh, like scp <source> <destination>
### mv
 - mv filename1 filename2 = rename filename1 as filename2
 - mv filename /directory = cut filename and paste in /directory
 - Can use mv to rename a directory name (by moving it from current location to same location with new name)
### Ctrl x ctrl shift + to zoom in terminal
### viewing files
 - nano filename = text editor opens filename (Ctrl = ^)
 - head -x filename = view first x lines of filename
 - tail -x filename = view last x lines of filename
#### vim filename = open filename with vim
 - u for undo in ESC mode in vim
 - ctrl x ctrl for file path autocomplete in vim
##### modes
 - i = insert mode (text editor)
 - Esc = command mode
 - v = visual mode (can select text using cursor movement before deciding what to do with it)
##### moving cursor/searching (in command mode)
 - h = move left
 - k = move up
 - l = move right
 - j = move down
 - w = move to start of next word
 - e = move to end of word
 - b = move to beginning of current/previous word
 - 0 = beginning of line
 - $ = end of line
 - fx = find next x
 - /text = search for text, move to next/previous occurrence with n/N
 - G = go to end of file
 - gg = go to beginning of file
 - 3G = go to third line
 - ggVG to select all text, d to delete
 - * finds next occurrence of word highlighted
 - /# finds previous occurrence of word highlighted 
##### other commands
 - set wrap or set nowrap to allow wrapping of lines of text or not allow it
 - O/o to insert new line above/below current line
 - X/x to delete character to left of/currently highlighted by cursor
 - In command mode, rx = replace character currently highlighted with x without switching to insert mode
 - d = cut, can combine with commands like dw = cut first word on right of cursor
 - p = paste
 - . = repeat previous command
 - :w = save
 - :q = quit
 - :q! = quit without saving
 - u = undo
 - Ctrl R = redo
 - :help = help
 - 3w = same as pressing w 3 times
 - 3fx = find 3rd occurrence of next x
 - % jumps to matching (, {, or [
 - Esc 30 i - Esc = make 30 dashes and go back to command mode
### permissions
 - chmod g+w filename = give g and w permissions to filename (r = read, w = write, x = execute, + = add permission, - = remove permission, = = set permission, u = user, g = group, o = others, 644 = read only, 755 = executable)
 - chgrp = change group permissions
### grep
 - grep -i search_name filename = search for search_name in filename and ignore capital sensitivity (-v = display lines that don't match, -n = precede each match with line number, -c = print total count of matched lines)
 - grep search_name *.txt = search for search_name in all files ending in .txt
 - grep search_name * = search for search_name in all files in directory
 - zgrep works like grep but on zipped files like .gz
 - can do recursively within a repo: grep R "string" /repo/ for string in /repo
### ps aux
 - ps aux = list all processes
 - ps aux | grep tybottorff = list all processes under tybottorff
### (un)compress
 - gzip filename = compress filename
 - gunzip filename = uncompress filename
### pipes (|)
 - | to combine commands, like ls -alF | grep .cpp = list all files and grab names of files that have .cpp in name
### ssh and ports
 - ssh -l destination = open secure connection to destination
 - ssh snail.fhcrc.org then ssh mrna = get into lab computer from outside Hutch
 - ssh -L 6326:localhost:6326 -C -o ServerAliveInterval=30 -fN rhino3 (not in rhino3, only have to do like mounting rhino3 after restarting computer) to open port for Jupyter, then just type ipy and click on Jupyter link
 - ssh rhino3 then ipy to get Jupyter link
 - sshfs tbottorf@rhino3://fh/fast/subramaniam_a ~/mounts/rhino to mount rhino, unmount (fusermount -u PATH_TO_MOUNT like fusermount -u /fh/fast/subramaniam_a) and try again (or just restart computer) if I get error "fuse: bad mount point... Transport endpoint is not connected"
 - sshfs tbottorf@rhino3://fh/scratch/delete90/subramaniam_a/user/tbottorf/git/tybottorffdocs/modeling/simulation_runs ~/mounts/scratch_simulation_runs to use for R analysis of simulation run data (make more ln -s path end with . if doing other directory simulation analysis)
#### mounting rhino
 - sshfs tbottorf@rhino03://fh/fast/subramaniam_a /home/tbottorff//mounts/rhino
 - Do every time I restart lab computer
 - sshfs tbottorf@rhino03://fh/fast/subramaniam_a /fh/fast/subramaniam_a for bioinformatics R
### other commands
 - lpr filename = send filename to default printer
 - passwd = change password
 - for file in svg/*.svg; do inkscape -C -z --export-png="${file//svg/png}" "$file"; done in presentation directory to convert .svg to .png for .html presentation
 - programname -v = give version number of program name
 - kill -9 x = kill process with ID number x
 - mail tybottorff@gmail.com filename = mail tybottorff@gmail.com filename
 - pine = read mail
 - telnet destination = open connection to destination
 - ftp destination = upload/download files to destination
 - ncftp destination = connect to archives at destination
 - history = list recently executed commands
 - ispell filename = spellcheck filename
 - df = see how much free disk space
 - du -b directory = estimate disk usage of subdirectory in bytes
 - ping destination = see if destination alive
 - logout = exit terminal/connection to destination
 - command > filename = send output of command to filename
 - command < filename = use filename as input for command
 - pwd = print pathway to current directory
 - who = print user on system now
 - command --help = get help on command
 - bg job_name = run job_name in background
 - fg job_name = run job_name in foreground
 - less filename = view file without modifying
 - more filename = view filename 1 page at a time
 - wc -w filename = count words in filename (wc -l = count lines)
 - uname = print system information
 - command --abort = abort command
 - Ctrl R to search in history of commands
 - which python to show directory python is in
 - python -V to show python version
 - find ./ -type f -exec sed -i -e 's/30S/40S/g' {} \; to replace 30S with 40S in all files in ./ (recursive)
## Tmux
 - ctrl b % to open new pane
 - ctrl b arrow key to navigate panes
 - ctrl b d to exit pane
 - ctrl b c for new tab
 - ctrl b p/n to switch to previous/next tab (current tab has * symbol)
 - tmux new-s session_name to open a session named session_name
 - after exiting, can resume session_name within tmux attach-session -t session_name
 - tmux ls to look for tmux sessions
## Notes
 - Can add multiple arguments at same time (order doesn't matter) like ls -al = ls -la or grep -ivc science science.txt
 - Symbolic linkage = like Windows shortcut
 - Clone/pull means to copy from server to computer (push = opposite)
 - Head = current spot
 - GitHub = Emacs origin
 - My lab computer is called mrna
 - Good to rebase with git pull --rebase when starting pull (why?)
 - Passwordless ssh (generate key, share key with other computer, get other computer's key)
 - conda = virtual environment in which you install packages
 - Pull from GitHub after someone makes edits (like Rasi for weekly notes). Better to pull more than needed just in case. Can pull in terminal in home/git/tybottorffdocs with git pull --rebase or in magit-status F (r to cycle until r state = True) u
 - home/git/tybottorffdocs on lab computer is where I can delete files and then push to GitHub to have it deleted there too
 - Always commit things separately
### autojump (j)
 - can type stuff like j luciferase_assays while on rhino and it'll take me to my luciferase_assays where I spend time!, can just do j keyword
 - keep running j keyword (wherever it takes you) to scroll through 1st-nth popular destinations for keyword
### for file in...
 - for file in svg/*.svg; do inkscape -C -z --export-png="${file//svg/png}" "$file"; done --> export pngs from svgs in svg directory
 - script below converts all .jpg files to .png and then assembles montage of those .png files into montage (.jpg converted then deleted), not sure how to elegantly name the initially converted .jpg they get .jpg.png names as of now)
 - #!/bin/bash
for f in *.jpg
do convert $f $f.png
magick montage *.png montage.jpg
convert montage.jpg montage.png
rm montage.jpg
done
### Scripts
 - start file with #! /bin/sh, then can have lines below have code (like terminal code like ls, pwd, echo "text that you want script to say", can use variables like...
   echo "what's your name?"
   read name
   echo "How are you $name?"
   read answer
   echo "I am $answer too"
   so one can use $ to call variables (can set variables like variable = "hello" echo $variable or using this read stuff)
### stdin (input), stdout (output), stederr (error)
 - if script filename.sh has an echo output and a stederr error, doing sh filename.sh > stdout_capture.txt will still yield stederr error but will move echo stdout to the .txt file, > does the redirection
 - >1 redirects stdout, >2 redirects stederr, can do both at the same time like sh test.sh 1> stdout_cap.txt 2> stederr_cap.txt, can redirect both to same .txt with sh filename.sh > cap_both.txt 2>&1
### variables
 - assign: (declare) variable_name="assignment", declare is optional
 - calling: echo "$variable_name"
 - assigning over a previously assigned variable with overwrite
 - assign only if not currently assigned: variable_name=${variable_name:-"new_name"}
 - unassign: unset variable_name
 - if variable is a path (like /home/test), then cd "${variable}" will take you there, so you can couple commands with variables
 - need to prepend/export variable if switching shells between assignment/use
 - $HOST, $HOSTNAME, $PWD, $USER reserved, not sure what differnece is between HOST and HOSTNAME when doing echo $HOST vs. echo $HOSTNAME (on rhino, hostname spits out rhino03 or whatever, host nothing, but on mrna hostname spits mrna and host spits x86_64-conda_cos6-linux-gnu), $HOSTNAME is the easier to interpret what I'm using for ssh
## Rhino remote computing
### cluster jobs
#### hitparade
 - summarize all jobs running/queued on cluster by user/account
#### sacct
 - see cluster history
 - -a flag for all users
 - -L flag for all clusters
#### sbatch
 - sbatch script.sh to submit
#### scancel
 - cancel pending/running job (step)
 - get ID from when sbatch submits
#### squeue
 - report state of job(s) (step[s])
 - squeue --user=user_name
#### tail
 - tail -f output_file (like an .out) to see output growing in ~real time
#### top, htop
 - top: see people's CPU/memory use, commands, user IDs
 - htop: see cluster node use in addition to what top shows
### grabnode --> gizmo cluster
 - enter cpus/cores I'd like
 - enter memory I'd like
 - enter max days I'd like
 - enter if I need gpu
 - now running on gizmo instead of rhino, can do everything else as normal but computation runs on gizmo instead of rhino
### modules
 - module avail pattern --> see available modules fitting pattern
 - module load package_name/version, like module load Python/... (can copy and paste from module avail output)
 - module list --> show currently loaded modules
 - module unload package_name
 - module purge --> unload all packages
 - including module stuff in scripts... include these two lines (top one normal, 2nd one special here), be specific with package_name/version (don't just say ml Python in script, ml Python/...)
#!/bin/bash
source /app/lmod/lmod/init/profile
/# this source thing activates module load
** R (lectures 12-16)
 - mutate_if(is.factor, as.character) --> if factor mutate to character
 - filter_all(any_vars(str_detect(., pattern = "Ca"))) looks for string "Ca" across any column and returns rows that have "Ca" in any column, filter_all(any_vars(. < 0.1)) to similarly return any rows with a column value < 0.1, all_vars instead of any_vars looks for rows with all columns meeting the requirement rather than any column meeting the requirement
 - filter_if: like filter_all but we can add a condition first, like filter_if(is.character, any_vars(is.na(.))) filtering for is.character and then any column having an na
 - scale_y_continuous(trans = 'log10',
                        breaks = scales::trans_breaks('log10', function(x) 10^x),
                        labels = scales::trans_format('log10', scales::math_format(10^.x)))
   for log10 axis scales
# Vscode
 - type code to open vscode
 - open folder
 - bottom left button to sync with updated git
 - markdown preview to see html preview (can open in browser)
 - install extensions (pandoc) for markdown preview (change settings to use pandoc under config)
 - ctrl \ to open command line from vscode
 - pandoc fignos filter to handle fig refs
 - zotero export as yaml instead of bib (keep updated better cs yaml)
 - open in browser extension
 - F5 to run open file

 # R
 - It's good to specify which package a command comes from, like dyplr::rename() since rename() and slice() are also in the Bioconductor package and the order in which one loads the packages matters unless you call it out with the ::
 - To get .md markdown file, just knit .Rmd when all done when file, then git add, commit, push analyze_results folder and .md
 - How to filter for specific rows: '''annotations %>% NEW LINE filter(d_stall == 60 & k_elong_stall == 0.001)'''
 - coord_flip() can be used to switch x and y axes (add at bottom of ggplot)
 - To remove an axis label, use...

ggplot(data = diamonds, mapping = aes(x = clarity)) + geom_bar(aes(fill = cut))+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

 - To save as a .svg using ggsave...

ggsave(filename, plot = last_plot(), device = svg)

 - is.finite to deal with lnf