# NorCPM1_Prediction_Skill
Repository with updated Scripts for CDO, Python and .sh to process and plot the prediction skill analysis carried at the BCPU.
The repository is organized as Follows:

Ens_member_analysis.sh: creates a folder on your directory in NIRD for each ensemble memeber of the hindcast simulation.
Then calculates the mean for each year.Each time serie belongs to one certain year of each hindcast. 
Thus the first time serie is the first year of each hindcast merged in a time x lat x lon matrix with time=59.

Ens_member_analysis_siconc.sh: creates a folder on your directory in NIRD for each ensemble memeber of the hindcast simulation 
for the Sea Ice Concentration in cell (SICONC) variable.
Then calculates the mean for each year.Each time serie belongs to one certain year of each hindcast. 
Thus the first time serie is the first year of each hindcast merged in a time x lat x lon matrix with time=59.

ensmean_calc_allvars.sh: this calculates the hindcast ensemble mean for the variables tos, HFDS and, siconc. 
Then applies the same resample tecnique and 10 time series of 59 timesteps.
Each time serie belongs to one certain year of each hindcast. 
Thus the first time serie is the first year of each hindcast merged in a time x lat x lon matrix with time=59.


assim_ensmean_remapbil_allvars.sh : to calculate the ensemble mean for the DA runs, then remaps to a regular lat/lon grid, 
finally applies year mean. This is for the variables tos, hfds,siconc.


assim_ensmean_anomaly_allvar.sh : once the ensemble means are calculated, this script will calculate the anomalies for each time serie. 
This will be used for correlations. 

ensemble_mean_anomaly_allvar.sh : this calculates the ensemble mean anomalies for the hindcast simulations. This is only applied to hfds, and tos. 

#Jupyther notebook

Each notebook is designed to plot the variable it mentions. Make sure you check and modify the path were you have your data. 
Dependencies can be easily solved by checking you have all packages installed. Make sure you have xarray.utils from @juiliusbusecke in order to perform the 
correlation analysis. 
