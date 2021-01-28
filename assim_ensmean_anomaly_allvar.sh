cd /nird/home/u1/jpo013/norcpm/tos/assim/

cdo timmean tos_Omon_NorCPM1_dcppA-assim_ensmean.nc tos_Omon_NorCPM1_dcppA-assim_ensmean_timmean.nc

cdo div tos_Omon_NorCPM1_dcppA-assim_ensmean.nc tos_Omon_NorCPM1_dcppA-assim_ensmean.nc shaper.nc

cdo mul tos_Omon_NorCPM1_dcppA-assim_ensmean_timmean.nc shaper.nc  tos_mean_timeserie.nc

cdo sub tos_Omon_NorCPM1_dcppA-assim_ensmean.nc tos_mean_timeserie.nc tos_Omon_NorCPM1_dcppA-assim_ensmean_anomaly.nc 

rm shaper.nc
rm *_NorCPM1_dcppA-assim_ensmean_timmean.nc
rm *_mean_timeserie.nc


cd /nird/home/u1/jpo013/norcpm/hfds/assim/

cdo timmean hfds_Omon_NorCPM1_dcppA-assim_ensmean.nc hfds_Omon_NorCPM1_dcppA-assim_ensmean_timmean.nc

cdo div hfds_Omon_NorCPM1_dcppA-assim_ensmean.nc hfds_Omon_NorCPM1_dcppA-assim_ensmean.nc shaper.nc

cdo mul hfds_Omon_NorCPM1_dcppA-assim_ensmean_timmean.nc shaper.nc  hfds_mean_timeserie.nc

cdo sub hfds_Omon_NorCPM1_dcppA-assim_ensmean.nc hfds_mean_timeserie.nc hfds_Omon_NorCPM1_dcppA-assim_ensmean_anomaly.nc 

rm shaper.nc
rm *_NorCPM1_dcppA-assim_ensmean_timmean.nc
rm *_mean_timeserie.nc



