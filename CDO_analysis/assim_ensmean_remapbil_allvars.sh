cd /nird/home/u1/jpo013/norcpm/tos/assim/

cdo ensmean tos_Omon_NorCPM1_dcppA-assim_r[1-10]*.nc tos_Omon_NorCPM1_dcppA-assim_ensmeanr.nc

cdo -O remapbil,r360x180 tos_Omon_NorCPM1_dcppA-assim_ensmeanr.nc tos_Omon_NorCPM1_dcppA-assim_ensmeany.nc

cdo -O yearmean tos_Omon_NorCPM1_dcppA-assim_ensmeany.nc tos_Omon_NorCPM1_dcppA-assim_ensmean.nc


cd /nird/home/u1/jpo013/norcpm/hfds/assim/

cdo ensmean hfds_Omon_NorCPM1_dcppA-assim_r[1-10]*.nc hfds_Omon_NorCPM1_dcppA-assim_ensmeanr.nc

cdo -O remapbil,r360x180 hfds_Omon_NorCPM1_dcppA-assim_ensmeanr.nc hfds_Omon_NorCPM1_dcppA-assim_ensmeany.nc

cdo -O yearmean hfds_Omon_NorCPM1_dcppA-assim_ensmeany.nc hfds_Omon_NorCPM1_dcppA-assim_ensmean.nc

cd /nird/home/u1/jpo013/norcpm/siconc/assim/

cdo ensmean siconc_SImon_NorCPM1_dcppA-assim_r[1-10]*.nc siconc_SImon_NorCPM1_dcppA-assim_ensmeanr.nc
cdo -O remapbil,r360x180 siconc_SImon_NorCPM1_dcppA-assim_ensmeanr.nc siconc_SImon_NorCPM1_dcppA-assim_ensmeany.nc
cdo -O yearmean siconc_SImon_NorCPM1_dcppA-assim_ensmeany.nc siconc_SImon_NorCPM1_dcppA-assim_ensmean.nc