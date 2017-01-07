/**** Importing Data ***/

libname pro "/home/kustagia0/AMK/DataSources/Project";

PROC IMPORT OUT= geo DATAFILE= "/home/kustagia0/AMK/DataSources/Project/Geo_zip_data.xls"
           DBMS=xls REPLACE;
     GETNAMES=YES;
RUN;


data pro.geo;
   set work.geo;
   group=gender||age;
run;



data G1 ;set geo;						
	label	HSHD_2004	=	"	Households  by ZIP Code	";
	label	POP_2004	=	"	Population  by ZIP Code	";
	label	AHS2004	=	"	Average Household Size  by ZIP Code	";
	label	AHI2004	=	"	Average Household Income  by ZIP Code	";
	label	AGE0_14	=	"	Population, Ages  0-14  by ZIP Code	";
	label	AGE15_24	=	"	Population, Ages 15-24  by ZIP Code	";
	label	AGE15_44	=	"	Population, Ages 25-44  by ZIP Code	";
	label	AGE45_54	=	"	Population, Ages 45-54  by ZIP Code	";
	label	AGE55	=	"	Population, Ages 55 or above  by ZIP Code	";
	label	POP_White	=	"	Population, White (Non-Hispanic)  by ZIP Code	";
	label	POP_Black	=	"	Population, Black (Non-Hispanic)  by ZIP Code	";
	label	POP_Native	=	"	Population, Native American/Inuit/Aleut  by ZIP Code	";
	label	POP_Asia	=	"	Population, Asian/Pacific Islander  by ZIP Code	";
	label	POP_Other	=	"	Population, Other Race (Non-Hispanic)  by ZIP Code	";
	label	Owner_Dwl	=	"	Owner-Occupied Dwellings  by ZIP Code	";
	label	Med_Cash_Rent	=	"	Median Cash Rent (2000) by ZIP Code	";
	label	Renter_Dwl	=	"	Renter-Occupied Dwellings  by ZIP Code	";
	label	EDU9_12	=	"	Population, adults who completed grades 9-12, no diploma  by ZIP Code	";
	label	EDU_HS	=	"	Population, adults who completed high school  by ZIP Code	";
	label	EDU_Coll	=	"	Population, adults who completed some college  by ZIP Code	";
	label	EDU_Assoc	=	"	Population, adults with associate's degree  by ZIP Code	";
	label	EDU_Bach	=	"	Population, adults with bachelor's degree  by ZIP Code	";
	label	EDU_Prof	=	"	Population, adults with graduate or professional degree  by ZIP Code	";
	label	HOUS1990_2000	=	"	Housing units, Built 1990 to March 2000 by ZIP Code	";
	label	HOUS1970_1979	=	"	Housing units, Built 1970 to 1979 by ZIP Code	";
	label	HOUS1980_1989	=	"	Housing units, Built 1980 to 1989 by ZIP Code	";
	label	HSHD_Exp_Appa	=	"	Ave Household Exp - Apparel  by ZIP Code	";
	label	HSHD_Exp_Contr	=	"	Ave Household Exp - Contributions  by ZIP Code	";
	label	HSHD_Exp_Edua	=	"	Ave Household Exp - Education  by ZIP Code	";
	label	HSHD_Exp_Ente	=	"	Ave Household Exp - Entertainment  by ZIP Code	";
	label	HSHD_Exp_Food	=	"	Ave Household Exp - Food/Beverages  by ZIP Code	";
	label	HSHD_Exp_Gift	=	"	Ave Household Exp - Gifts  by ZIP Code	";
	label	HSHD_Exp_Heal	=	"	Ave Household Exp - Health Care  by ZIP Code	";
	label	HSHD_Exp_Furn	=	"	Ave Household Exp - Furnishings  by ZIP Code	";
	label	HSHD_Exp_Hhop	=	"	Ave Household Exp - HH Operations  by ZIP Code	";
	label	HSHD_Exp_Misc	=	"	Ave Household Exp - Misc  by ZIP Code	";
	label	HSHD_Exp_Pers	=	"	Ave Household Exp - Personal Care  by ZIP Code	";
	label	HSHD_Exp_Read	=	"	Ave Household Exp - Reading  by ZIP Code	";
	label	HSHD_Exp_Toba	=	"	Ave Household Exp - Tobacco  by ZIP Code	";
	label	HSHD_Exp_Tran	=	"	Ave Household Exp - Transportation  by ZIP Code	";
	label	HSHD_Exp_Util	=	"	Ave Household Exp - Utilities  by ZIP Code	";
	label	ANL_Rain	=	"	Annual Rainfall (Inches) by ZIP Code	";
	label	ANL_Snow	=	"	Annual Snowfall (Inches) by ZIP Code	";
	label	ANL_Htemp	=	"	Annual Ave High Temp (deg. F) by ZIP Code	";
	label	ANL_Ltemp	=	"	Annual Ave Low Temp (deg. F) by ZIP Code	";
	label	ANL_Atemp	=	"	Annual Ave Temp (deg. F) by ZIP Code	";
	label	VEHI_HSHD	=	"	Ave Vehicles per Household  by ZIP Code	";
	label	JAN_Htemp	=	"	January Ave High Temp (deg. F) by ZIP Code	";
	label	JAN_Ltemp	=	"	January Ave Low Temp (deg. F) by ZIP Code	";
	label	JAN_Atemp	=	"	January Ave Temp (deg. F) by ZIP Code	";
	label	JUL_Htemp	=	"	July Ave High Temp (deg. F) by ZIP Code	";
	label	JUL_Ltemp	=	"	July Ave Low Temp (deg. F) by ZIP Code	";
	label	JUL_Atemp	=	"	July Ave Temp (deg. F) by ZIP Code	";
	label	HAIL	=	"	Hail Index  by ZIP Code	";
	label	HURRICANE	=	"	Hurricane Index  by ZIP Code	";
	label	TORNADO	=	"	Tornado Index  by ZIP Code	";
	label	WEAT_Risk	=	"	Weather Risk  by ZIP Code	";
	label	WIND	=	"	Wind Index  by ZIP Code	";
	label	HSHD_Coup	=	"	Households That Use Cents-Off Coupons  by ZIP Code	";
	label	HSHD_Food30	=	"	Households That Spend $30 Or Less In Food Stores Per Week  by ZIP Code	";
	label	HSHD_Food31_40	=	"	Households That Spend $31 to $40 In Food Stores Per Week  by ZIP Code	";
	label	HSHD_Food41_50	=	"	Households That Spend $41 to $50 In Food Stores Per Week  by ZIP Code	";
	label	HSHD_Food51_60	=	"	Households That Spend $51 to $60 In Food Stores Per Week  by ZIP Code	";
	label	HSHD_Food61_70	=	"	Households That Spend $61 to $70 In Food Stores Per Week  by ZIP Code	";
	label	HSHD_Food_71_80	=	"	Households That Spend $71 to $80 In Food Stores Per Week  by ZIP Code	";
	label	HSHD_Food_81_100	=	"	Households That Spend $81 to $100 In Food Stores Per Week  by ZIP Code	";
	label	HSHD_Food101_124	=	"	Households That Spend $101 to $124 In Food Stores Per Week  by ZIP Code	";
	label	HSHD_Food125_149	=	"	Households That Spend $125 to $149 In Food Stores Per Week  by ZIP Code	";
	label	HSHD_Food150	=	"	Households That Spend $150 Or More In Food Stores Per Week  by ZIP Code	";
;run;						



/* 

1. Tried using Top zipcode by population, the results were not significant
2. Tried using all the Zipcode for analysis, the predictions were not really significant,
 as the dataset is huge(Over 29,000zipcode data)
3. Finally, Considered Top 200 Zipcodes by Avg Household Size as a Subset for the Analysis 

*/

/* Top 200 Zipcode by Avg Household Size */
proc rank data=g1
out=pop1
descending;
ranks
	incr_rank
	;
var
	AHS2004;
run;

data G2;
   set pop1;
   if (incr_rank<201);
run; 





/**** Factor Analysis****/
title 'Factor Analysis Demographic, socio-economic, and environmental variables';
PROC FACTOR DATA=g2 ROTATE=VARIMAX n=8
out=Independent  
scree  FUZZ=0.4 reorder ;
var 

HSHD_2004
POP_2004
AHS2004
AHI2004
/* AGE0_14 */
AGE15_24
AGE15_44
AGE45_54
AGE55
POP_White
POP_Black
POP_Native
POP_Asia
/* POP_Other */
Owner_Dwl
Med_Cash_Rent
Renter_Dwl
EDU9_12
EDU_HS
EDU_Coll
/* EDU_Assoc */
EDU_Bach
EDU_Prof
HOUS1990_2000
HOUS1970_1979
HOUS1980_1989
ANL_Rain
ANL_Snow
ANL_Htemp
ANL_Ltemp
ANL_Atemp
VEHI_HSHD
JAN_Htemp
JAN_Ltemp
JAN_Atemp
JUL_Htemp
JUL_Ltemp
JUL_Atemp
HAIL
HURRICANE
TORNADO
WEAT_Risk
WIND
HSHD_Coup
HSHD_Food30
HSHD_Food31_40
/* HSHD_Food41_50 */
HSHD_Food51_60
HSHD_Food61_70
HSHD_Food_71_80
HSHD_Food_81_100
HSHD_Food101_124
HSHD_Food125_149
HSHD_Food150

;
run;



/* Regression - Ave Household Expenditure on Apparel  by ZIP Code */

title 'Regression - Ave Household Expenditure on Apparel  by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Appa = Factor1- Factor8
/ tol vif collin;
run;




/* Regression - HSHD_Exp_Contr	Ave Household Exp - Contributions  by ZIP Code*/
title 'Regression - Ave Household Expenditure on Contributions by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Contr = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Edua	Ave Household Exp - Education  by ZIP Code */

title 'Regression - Ave Household Expenditure on Education by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Edua = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Ente	Ave Household Exp - Entertainment  by ZIP Code */
title 'Regression - Ave Household Expenditure on Entertainment by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Ente = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Food	Ave Household Exp - Food/Beverages  by ZIP Code */
title 'Regression - Ave Household Expenditure on Food/Beverages by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Food = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Gift	Ave Household Exp - Gifts  by ZIP Code */
title 'Regression - Ave Household Expenditure on Gifts by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Gift = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Heal	Ave Household Exp - Health Care  by ZIP Code */
title 'Regression - Ave Household Expenditure on  Health Care by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Heal = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Furn	Ave Household Exp - Furnishings  by ZIP Code
 */
title 'Regression - Ave Household Expenditure on Furnishings by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Furn = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Hhop	Ave Household Exp - HH Operations  by ZIP Code */
title 'Regression - Ave Household Expenditure on HH Operation by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Hhop = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Misc	Ave Household Exp - Misc  by ZIP Code */
title 'Regression - Ave Household Expenditure on Misc by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Misc = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Pers	Ave Household Exp - Personal Care  by ZIP Code */
title 'Regression - Ave Household Expenditure on Personal Care by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Pers = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Read	Ave Household Exp - Reading  by ZIP Code */
title 'Regression - Ave Household Expenditure on Reading by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Read = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Toba	Ave Household Exp - Tobacco  by ZIP Code */
title 'Regression - Ave Household Expenditure on Tobacco by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Toba = Factor1- Factor8
/ tol vif collin;
run;



/* Regression - HSHD_Exp_Tran	Ave Household Exp - Transportation  by ZIP Code */
title 'Regression - Ave Household Expenditure on Transportation by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Tran = Factor1- Factor8
/ tol vif collin;
run;


/* Regression - HSHD_Exp_Util	Ave Household Exp - Utilities  by ZIP Code */
title 'Regression - Ave Household Expenditure on Utilities by ZIP Code';
Proc Reg data =  Independent;
model HSHD_Exp_Util = Factor1- Factor8
/ tol vif collin;
run;



ods graphics on;
title 'Correlation of Expenditure Data';
proc corr data=independent
          plots=scatter(alpha=.20 .30);
var HSHD_Exp_Appa HSHD_Exp_Contr	HSHD_Exp_Edua
 	HSHD_Exp_Ente	HSHD_Exp_Food	HSHD_Exp_Gift	HSHD_Exp_Heal	
 	HSHD_Exp_Furn	HSHD_Exp_Hhop	HSHD_Exp_Misc	HSHD_Exp_Pers	
 	HSHD_Exp_Read	HSHD_Exp_Toba	HSHD_Exp_Tran	HSHD_Exp_Util;
 run;
ods graphics off;




/* Cluster Analysis */

/* Top 10 Zipcode by Factor1 */
proc rank data=independent
out=FactRank1
descending;
ranks
	incr_rank
	;
var
	Factor1;
run;

data Fact1;
   set FactRank1;
   if (incr_rank<11 & incr_rank~=.);
run; 

proc sort data=Fact1;
   by Zipcode;
run;


/* Top 10 Zipcode by Factor2 */
proc rank data=independent
out=FactRank2
descending;
ranks
	incr_rank
	;
var
	Factor2;
run;

data Fact2;
   set FactRank2;
   if (incr_rank<11 & incr_rank~=.);
run; 

proc sort data=Fact2;
   by Zipcode;
run;




/*Top 10 Zipcode by Factor3 */
proc rank data=independent
out=FactRank3
descending;
ranks
	incr_rank
	;
var
	Factor3;
run;

data Fact3;
   set FactRank3;
   if (incr_rank<11 & incr_rank~=.);
run; 

proc sort data=Fact3;
   by Zipcode;
run;



/* Top 10 Zipcode by Factor4 */
proc rank data=independent
out=FactRank4
descending;
ranks
	incr_rank
	;
var
	Factor4;
run;

data Fact4;
   set FactRank4;
   if (incr_rank<11 & incr_rank~=.);
run; 

proc sort data=Fact4;
   by Zipcode;
run;


/* Top 10 Zipcode by Factor5 */
proc rank data=independent
out=FactRank5
descending;
ranks
	incr_rank
	;
var
	Factor5;
run;

data Fact5;
   set FactRank5;
   if (incr_rank<11 & incr_rank~=.);
run; 

proc sort data=Fact5;
   by Zipcode;
run;



/* Top 10 Zipcode by Factor6 */
proc rank data=independent
out=FactRank6
descending;
ranks
	incr_rank
	;
var
	Factor6;
run;

data Fact6;
   set FactRank6;
   if (incr_rank<11 & incr_rank~=.);
run; 

proc sort data=Fact6;
   by Zipcode;
run;



/* Top 10 Zipcode by Factor7 */
proc rank data=independent
out=FactRank7
descending;
ranks
	incr_rank
	;
var
	Factor7;
run;

data Fact7;
   set FactRank7;
   if (incr_rank<11 & incr_rank~=.);
run; 

proc sort data=Fact7;
   by Zipcode;
run;



/* Top 10 Zipcode by Factor8 */
proc rank data=independent
out=FactRank8
descending;
ranks
	incr_rank
	;
var
	Factor8;
run;

data Fact8;
   set FactRank8;
   if (incr_rank<11 & incr_rank~=.);
run; 

proc sort data=Fact8;
   by Zipcode;
run;



options linesize=120;

data Topzip;
   merge Fact1 Fact2 Fact3 Fact4 Fact5 Fact6 Fact7 Fact8;
   by Zipcode;
run;



 ************************************************************************************;
 * *;
 * If you know the within-cluster covariances, you can transform the data to make *;
 * the clusters spherical. However, since you do not know what the clusters are, *;
 * you cannot calculate exactly the within-cluster covariance matrix. The ACECLUS *;
 * procedure estimates the within-cluster covariance matrix to transform the data, *;
 * even when you have no knowledge of cluster membership or the number of clusters. *;
 * *;
 ************************************************************************************;
title 'Using METHOD=WARD'S'';
proc aceclus data=Topzip out=Ace p=.03 noprint;
var HSHD_Exp_Appa HSHD_Exp_Contr	HSHD_Exp_Edua
 	HSHD_Exp_Ente	HSHD_Exp_Food	HSHD_Exp_Gift	HSHD_Exp_Heal	
 	HSHD_Exp_Furn	HSHD_Exp_Hhop	HSHD_Exp_Misc	HSHD_Exp_Pers	
 	HSHD_Exp_Read	HSHD_Exp_Toba	HSHD_Exp_Tran	HSHD_Exp_Util;
run;


/*---------------------- WARD'S --------------------*/
title 'Using METHOD=WARD S';
ods graphics on;
proc cluster data=Ace method=ward ccc pseudo print=80 outtree=Tree;
var can1 can2 can3 Can4 Can5 Can6 Can7 Can8 Can9 Can10 Can11 Can12 Can13 Can14 Can15;
id Zipcode;
run;


 **********************************************************************************;
* *;
* PLOTTING HORIZONTAL TREE DIAGRAM WITH RESPECT TO R_SQUARED *;
* *;
**** **** * ***************************** *******************************************;

title 'PLOTTING HORIZONTAL TREE DIAGRAM WITH RESPECT TO R_SQUARED';
goptions vsize=9in hsize=6.4in htext=.9pct htitle=3pct;
axis1 order=(0 to 1 by 0.2);
proc tree data=Tree out=New nclusters=3
haxis=axis1 horizontal;
height _rsq_;
copy can1 can2 can3;
id Zipcode;
run;




proc sgplot data=New;
scatter y=can2 x=can1 / group=cluster;
run;
ods graphics off;




/*---------------------- Average linkage --------------------*/
title2 'Using METHOD=AVERAGE';
ods graphics on;
proc cluster data=Ace method=average pseudo print=80 outtree=Tree;
var can1 can2 can3 Can4 Can5 Can6 Can7 Can8 Can9 Can10 Can11 Can12 Can13 Can14 Can15;
id Zipcode;
run;

goptions vsize=9in hsize=6.4in htext=.9pct htitle=3pct;
axis1 order=(0 to 1 by 0.2);
proc tree data=Tree out=New nclusters=3
haxis=axis1 horizontal;
height _rsq_;
copy can1 can2 can3;
id Zipcode;
run;


proc sgplot data=New;
scatter y=can2 x=can1 / group=cluster;
run;
ods graphics off;





/*---------------------- Centroid method --------------------*/
title2 'Using METHOD=CENTROID';
ods graphics on;
proc cluster data=Ace method=centroid pseudo print=80 outtree=Tree;
var can1 can2 can3 Can4 Can5 Can6 Can7 Can8 Can9 Can10 Can11 Can12 Can13 Can14 Can15;
id Zipcode;
run;


goptions vsize=9in hsize=6.4in htext=.9pct htitle=3pct;
axis1 order=(0 to 1 by 0.2);
proc tree data=Tree out=New nclusters=3
haxis=axis1 horizontal;
height _rsq_;
copy can1 can2 can3;
id Zipcode;
run;


proc sgplot data=New;
scatter y=can2 x=can1 / group=cluster;
run;
ods graphics off;