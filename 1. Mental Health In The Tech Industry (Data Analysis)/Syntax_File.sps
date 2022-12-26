* Encoding: UTF-8.
DATASET NAME DataSet1 WINDOW=FRONT. 
AUTORECODE VARIABLES=benefits 
  /INTO NewBenefits 
  /PRINT.


AUTORECODE VARIABLES=treatment 
  /INTO New_Treatment 
  /PRINT.

AUTORECODE VARIABLES=state 
  /INTO New_State 
  /PRINT. 
state into New_State 
Old Value  New Value  Value Label

CROSSTABS 
  /TABLES=state BY treatment 
  /FORMAT=AVALUE TABLES 
  /STATISTICS=CHISQ 
  /CELLS=COUNT 
  /COUNT ROUND CELL.

T-TEST 
  /TESTVAL=0 
  /MISSING=ANALYSIS 
  /VARIABLES=New_Benefits 
  /CRITERIA=CI(.95).


AUTORECODE VARIABLES=seek_help 
  /INTO New_seek_help 
  /PRINT. 

T-TEST 
  /TESTVAL=0 
  /MISSING=ANALYSIS 
  /VARIABLES=New_seek_help 
  /CRITERIA=CI(.95).

CROSSTABS 
  /TABLES=Country BY seek_help 
  /FORMAT=AVALUE TABLES 
  /STATISTICS=CHISQ 
  /CELLS=COUNT 
  /COUNT ROUND CELL.


AUTORECODE VARIABLES=supervisor 
  /INTO New_supervisor 
  /PRINT.


T-TEST 
  /TESTVAL=0 
  /MISSING=ANALYSIS 
  /VARIABLES=New_supervisor 
  /CRITERIA=CI(.95).


AUTORECODE VARIABLES=Gender family_history care_options wellness_program anonymity leave 
    work_interfere 
  /INTO New_Gender New_Family_History New_Care_options New_Well_Pro New_Anonymity New_Leave 
    New_work_interfere 
  /PRINT. 
Gender into New_Gender



LOGISTIC REGRESSION VARIABLES Y_Treatment 
  /METHOD=ENTER New_Benefits New_work_interfere New_Family_History New_Care_options New_Well_Pro 
    New_Leave New_Anonymity New_seek_help New_supervisor 
  /CLASSPLOT 
  /PRINT=CORR 
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).




