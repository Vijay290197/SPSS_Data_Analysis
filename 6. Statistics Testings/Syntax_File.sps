* Encoding: UTF-8.
* Parametric Test
* One-Way Anova Test

ONEWAY stroke_1 BY smoking_status 
  /STATISTICS DESCRIPTIVES 
  /PLOT MEANS 
  /MISSING ANALYSIS 
  /POSTHOC=TUKEY ALPHA(0.05).

* perform t-test

T-TEST GROUPS=gender(1 2) 
  /MISSING=ANALYSIS 
  /VARIABLES=hypertension_1 
  /CRITERIA=CI(.95).

DESCRIPTIVES VARIABLES=avg_glucose_level_1 
  /STATISTICS=MEAN STDDEV MIN MAX.


T-TEST PAIRS=bmi_1 WITH hypertension_1 (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.


T-TEST GROUPS=gender(1 2) 
  /MISSING=ANALYSIS 
  /VARIABLES=avg_glucose_level_1 
  /CRITERIA=CI(.95).
