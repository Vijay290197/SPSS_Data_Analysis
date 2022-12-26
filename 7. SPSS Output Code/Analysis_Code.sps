* Encoding: UTF-8.
* =========================================================== .
* File name:   SURNAME-A1-PartA-2021.sps .
* Written by:  Forename Surname, email@lakeheadu.ca
* Date:        DD-MMM-YYYY.
* =========================================================== .

* In the lecture slides on hypothesis testing, the first example 
* involved flipping a coin N=11 times, and using the decision rule 
* that minimizes the overall probability of error.  In that example,
* H0 stated that p, the probability of a Head on each toss, was 0.5; 
* and H1 stated that p = 0.15.  

* In this syntax file, you will generate another example like that, 
* but with these changes:
* N = 25 (i.e., toss the coin 25 times)
* H0: p = 0.5 
* H1: p = 0.75.

* Issue NEW FILE and DATASET CLOSE commands to start with a new empty dataset.
[INSERT YOUR COMMANDS HERE].
COMPUTE N = $CASENUM.
EXECUTE.

* Use the matrix language MAKE function to create a column matrix
* with 26 rows, and then save the data to the working dataset.
MATRIX. 
COMPUTE X = MAKE(26,1,0).
SAVE {X} /OUTFILE=* /VARIABLES = X.
END MATRIX.

* SPSS has a system variable that returns the current row number in the dataset.
* Look it up and use it to set variable X = the current row number minus 1.
COMPUTE X = [INSERT YOUR CODE HERE].
* Format X to show no decimals.
[INSERT YOUR COMMAND HERE].

* Compute new variables pX0 and pX1 where 
* pX0 = p(X | H0) and pX1 = p(X | H1).  
* HINT: Try a search on <SPSS PDF functions>, or see the UNIVERSALS section
* of the Command Syntax Reference manual.

COMPUTE pX0 = [INSERT YOUR CODE HERE].
COMPUTE pX1 = [INSERT YOUR CODE HERE].

* Format pX0 and pX1 to display 4 decimals.
* Then list the data in the output window.
[INSERT YOUR COMMANDS HERE].

* Use the Legacy graphics dialogs to plot the two binomial distributions as bar charts.
[INSERT YOUR COMMANDS HERE].

* For this example, we used the decision rule that minimizes the overall probability of error.
* Using that decision rule compute a new variable called Reject, and set it equal 1 on rows 
* where you would reject H0 and 0 on rows where you would not reject H0.  
COMPUTE Reject = [INSERT YOUR CODE HERE].
* Format variable reject to show only 1 decimal.
[INSERT YOUR COMMAND HERE].
* Add value labels "Reject H0" and "Fail to reject H0" to variable Reject.    
[INSERT YOUR COMMAND HERE].
* List the data in the output window.
[INSERT YOUR COMMAND HERE].
* Split the file by variable Reject, then use the DESCRIPTIVES command 
* to display the SUMS of variables pX0 and pX1. 
[INSERT YOUR COMMANDS HERE].

* Fill in the missing values in the following comment lines.
* Alpha = ______.
* Beta = ______.
* Power = ______.

* =========================================================== .

