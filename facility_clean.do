*---------------------------------------------------------------------
*	Goal:			Prepare for SP Faclity Data

*	Input Data:		1) facility_raw.dta;
					
*	Output Data:	1)Facility_data_clean.do
										
* 	Author(s):      Gao Jiayuan
*	Created: 		2018-03-16
* 	Last Modified: 	2018-03-23
*---------------------------------------------------------------------

/*-----------------------------------------------------------
 Note: primary steps of this do file
    Step 1: Bring in data
    Step 2: Rename
	Step 3: Gen raw var
	Step 4: 处理异常值(已标出的题目)
		Step 4.1: Fac1 B section
		Step 4.2: Fac1 C section
		Step 4.3: Fac1 D section
		Step 4.4: Fac1 E section
		Step 4.5: Fac1 F section
		Step 4.6: Fac2 F section
	Step 5: add label
	Step 6: 处理异常值（未标出的题目）
	    Step 6.1: Fac1 A section
		Step 6.2: Fac1 B section
		Step 6.3: Fac1 C section
		Step 6.4: Fac1 D section
		Step 6.5: Fac1 E section
	    Step 6.6: Fac1 F section
		Step 6.7: Fac2 A section
		Step 6.8: Fac2 B section
-----------------------------------------------------------*/

/*-----
Step 1: Bring in data
-----*/
clear all
set more off
capture log close

/*set directories - GJY*/  

global rawdatadir "C:/Users/THINKPAF/Dropbox (REAP)/SP Baseline data Clean/Clean of facility data/Raw_Data"
global workdatadir "C:/Users/THINKPAF/Dropbox (REAP)/SP Baseline data Clean/Clean of facility data/Work_Data"
global cleandatadir "C:/Users/THINKPAF/Dropbox (REAP)/SP Baseline data Clean/Clean of facility data/Clean_Data"

/*-------Step 1: Bring in data--------*/
use "$rawdatadir/facility_raw.dta",clear

**核对问卷编码
duplicates report form_code



