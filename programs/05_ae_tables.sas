proc freq data=adam_adae;
    tables trtan*aeterm / nopercent;
    where trtemfl="Y";
    title "Table 3: Treatment Emergent Adverse Events";
run;