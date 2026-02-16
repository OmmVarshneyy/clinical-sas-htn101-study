proc freq data=adam_adsl;
    tables trt*sex / nopercent norow nocol;
    title "Table 1: Sex Distribution by Treatment";
run;

proc means data=adam_adsl mean std;
    class trt;
    var age weight base_sysbp;
    title "Table 2: Baseline Characteristics";
run;



