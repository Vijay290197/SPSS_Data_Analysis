* Encoding: UTF-8.

*Correlation Analysis

CORRELATIONS
  /VARIABLES=age_t4_sv ExecutiveFunction_mean ToM_simple ToM_advanced bpvs Dweck_emotion
    Dweck_ability
  /PRINT=TWOTAIL NOSIG
  /STATISTICS DESCRIPTIVES
  /MISSING=PAIRWISE.

*Regression Analysis

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CHANGE
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT ToM_advanced
  /METHOD=ENTER ToM_simple
  /METHOD=ENTER ToM_simple ExecutiveFunction_mean
  /METHOD=ENTER ToM_simple ExecutiveFunction_mean bpvs
  /RESIDUALS NORMPROB(ZRESID).

*____________________________________________________________________________
*Mediation
*Interaction Term

COMPUTE AgexVerbal=age_t4_sv * bpvs.
EXECUTE.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CHANGE
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT ExecutiveFunction_mean
  /METHOD=ENTER age_t4_sv bpvs AgexVerbal.

*______________________________________________________________________________

*Screening Data

EXAMINE VARIABLES=age_t4_sv
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

EXAMINE VARIABLES=ExecutiveFunction_mean
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

EXAMINE VARIABLES=ToM_simple
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

EXAMINE VARIABLES=ToM_advanced
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

EXAMINE VARIABLES=bpvs
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

EXAMINE VARIABLES=Dweck_emotion 
  /COMPARE VARIABLE 
  /PLOT=BOXPLOT 
  /STATISTICS=NONE 
  /NOTOTAL 
  /MISSING=LISTWISE.

EXAMINE VARIABLES=Dweck_ability 
  /COMPARE VARIABLE 
  /PLOT=BOXPLOT 
  /STATISTICS=NONE 
  /NOTOTAL 
  /MISSING=LISTWISE.

*Histograms indicating non-parametric data

GRAPH
  /HISTOGRAM=age_t4_sv.

GRAPH 
  /HISTOGRAM=ExecutiveFunction_mean.

GRAPH
  /HISTOGRAM=ToM_simple.

GRAPH
  /HISTOGRAM=ToM_advanced.

GRAPH 
  /HISTOGRAM=bpvs.

GRAPH
  /HISTOGRAM=Dweck_emotion.

GRAPH 
  /HISTOGRAM=Dweck_ability.



