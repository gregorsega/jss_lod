Usage of Lod_auto_compute_lognormal.xlsm
----------------------------------------

The file is a notebook in MS Excel. In order to run the calculations properly, the following steps must be taken:
1. Macros must be enabled. (If this feature is not available, it can be enabled by pressing the "Enable content" button when the file is opened.)
2. The Excel Add-on Solver must be enabled. (If this feature is not already installed, one should enable it by choosing File > Options and then 
Add-ins, selecting Excel Add-ins in the Manage box below, clicking Go, and finally enabling the Solver Add-in check box and confirming this by clicking OK.)
   
The file has two worksheets (tabs), "Normal" (for the normal distribution) and "Lognormal" (for the lognormal distribution).

Color codes:
All input fields (cells) are marked with a yellow background and a thick border.
Optional input fields are marked with a green background and a thick border.
Result fields are marked with a blue background and a thick border.

Procedure for the normal distribution:
--------------------------------------

1. The data (measurements) above the level of detection (LOD) should be entered or copied into column B.
If there are already some data in column B from prior calculations, all data should first be deleted (in case the new data has fewer entries 
than the previous data). The data do not need to be sorted.

2. One must enter the number of missing data points (the number of data points below the LOD) into cell F4 ("Number of missing data (measurements below LOD)").

3. The LOD value should be entered into cell F8.

4. The values of sigma (standard deviation) and mu (mean value) are then computed by pressing the button "Calculate!".

Optional:
5. The initial value of sigma can be (prior to Step 4—Calculate!) entered into cell F10. 

	The value is used by internal procedures (macros) of MS Visual Basic, so some initial values can result in the Solver returning an error message. 
	In this case, a different initial value (higher or lower) can be used.
	For nearly all valid data, the button "Reset sigma" writes an appropriate initial value into cell F10, which leads to the calculation of the final result in Step 4. 

	After the button "Reset sigma" is pressed, the Solver finds a solution, and one must choose the "Keep Solver solution" button and confirm this 
	by clicking "OK." This writes the estimated value of sigma into cell F10.

Results (output): The estimated value of mu (mean value) is written into cell F15. If the value is not valid due to the above-mentioned scenario, 
there will be an ERROR! message written next to it. In this case, the "Calculate!" button should be clicked again (possibly with a different initial 
value of sigma in cell F10).

The value of sigma (standard deviation) is written in cell F10. If some initial value was written into this cell in Step 5, the previous value 
will be overwritten with the final result.

In addition, the theoretical value of factor C corresponding to this set of data is calculated and shown in cell F17.


Procedure for the lognormal distribution:
-------------------------------------

Follow the same steps used for the normal distribution, with the addition of estimations of the mean and standard deviation values 
(because they are not equal to the parameters mu and sigma).


This readme.txt file is a complementary file for the following manuscript:
Verbovšek, T. & Šega, G. Estimating true mean value and standard deviation of data censored by limit of detection (Nature Geoscience, year, ...).
