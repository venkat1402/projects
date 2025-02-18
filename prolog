% Facts representing symptoms
symptom(fever).
symptom(cough).
symptom(fatigue).
% Rules for diagnosing diseases based on symptoms
% Rule 3: If the patient has cough and fatigue, diagnose "chronic fatigue"
chronic_fatigue :- symptom(cough), symptom(fatigue).
% Rule 4: If the patient has all three symptoms, diagnose "severe flu"
severe_flu :- symptom(fever), symptom(cough), symptom(fatigue).
% Diagnostic query
diagnose :-
 severe_flu -> write('Diagnosis: Severe Flu');
 write('Diagnosis: Unknown').
