/*-------------------------------------------
Create Demographics Dataset
-------------------------------------------*/
data raw_dm;
    call streaminit(123);

    do subjid = 1001 to 1120;

        if rand("uniform") < 0.5 then trt="HTN-101";
        else trt="PLACEBO";

        age = rand("integer", 35,75);

        if rand("uniform")<0.5 then sex="M";
        else sex="F";

        if rand("uniform")<0.6 then race="ASIAN";
        else if rand("uniform")<0.85 then race="WHITE";
        else race="BLACK";

        weight = rand("normal",70,12);

        output;
    end;
run;


/*-------------------------------------------
Vital Signs Dataset
-------------------------------------------*/
data raw_vs;
    call streaminit(222);

    do subjid = 1001 to 1120;
        do visit = 1 to 5;

            if visit=1 then visitn=0;
            else visitn=visit*7;

            sysbp = rand("normal",150,12) - visit*2;
            diabp = rand("normal",95,8) - visit*1.5;

            output;
        end;
    end;
run;


/*-------------------------------------------
Adverse Events Dataset
-------------------------------------------*/
data raw_ae;
    call streaminit(555);

    do subjid=1001 to 1120;

        n = rand("integer",0,3);

        do i=1 to n;

            if rand("uniform")<0.4 then aeterm="HEADACHE";
            else if rand("uniform")<0.7 then aeterm="DIZZINESS";
            else aeterm="NAUSEA";

            if rand("uniform")<0.7 then severity="MILD";
            else if rand("uniform")<0.9 then severity="MODERATE";
            else severity="SEVERE";

            day = rand("integer",1,30);

            output;
        end;
    end;
run;



/*-------------------------------------------
ADSL Creation
-------------------------------------------*/
proc sort data=raw_dm; by subjid; run;
proc sort data=raw_vs; by subjid visitn; run;

/* baseline BP */
data baseline;
    set raw_vs;
    where visitn=0;
    keep subjid sysbp diabp;
    rename sysbp=base_sysbp diabp=base_diabp;
run;

data adam_adsl;
    merge raw_dm baseline;
    by subjid;

    length saffl $1 trtan 8;

    saffl="Y";

    if trt="HTN-101" then trtan=1;
    else trtan=0;

    label
        saffl="Safety Population Flag"
        trtan="Treatment Numeric";
run;




/*-------------------------------------------
ADAE Dataset
-------------------------------------------*/
proc sort data=raw_ae; by subjid; run;

data adam_adae;
    merge raw_ae(in=a) adam_adsl(in=b keep=subjid trtan);
    by subjid;

    if a;

    length trtemfl $1;

    if day>=1 then trtemfl="Y";
    else trtemfl="N";

    label trtemfl="Treatment Emergent Flag";
run;