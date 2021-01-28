cd /nird/home/u1/jpo013/norcpm/tos/
mkdir Ensemble_mean
cd Ensemble_mean
for i in {1960..2018}

do

cp /projects/NS9034K/CMIP6/DCPP/NCC/NorCPM1/dcppA-hindcast/s${i}-r*i1p1f1/Omon/tos/gn/latest/*.nc /nird/home/u1/jpo013/norcpm/tos/Ensemble_mean/

cdo ensmean tos_Omon_NorCPM1_dcppA-hindcast_s${i}-r[1-10]*.nc  tos_Omon_NorCPM1_dcppA-hindcast_s${i}_ensmeanr.nc
  
rm  tos_Omon_NorCPM1_dcppA-hindcast_s${i}-r*.nc

done

for i in {1960..2018}
do
cdo -O remapbil,r360x180 /nird/home/u1/jpo013/norcpm/tos/Ensemble_mean/tos_Omon_NorCPM1_dcppA-hindcast_s${i}_ensmeanr.nc   tos_Omon_NorCPM1_dcppA-hindcast_s${i}_ensmean.nc
done

mkdir yearmean/ 

for i in {1960..2018}
do
cdo -O yearmean  tos_Omon_NorCPM1_dcppA-hindcast_s${i}_ensmean.nc yearmean/tos_Omon_NorCPM1_dcppA-hindcast_s${i}_ensmean_yearmean.nc
done

for i in {2..11}
do
mkdir year_${i}/
for j in {1960..2018}
do
cdo -O seltimestep,${i} yearmean/tos_Omon_NorCPM1_dcppA-hindcast_s${j}_ensmean_yearmean.nc year_${i}/tos_Omon_NorCPM1_dcppA-hindcast_s${j}_ensmean_year${i}.nc
done
cdo -O cat year_${i}/*.nc  tos_Omon_ensemean_year${i}_timeseries.nc
cdo -O timmean  tos_Omon_ensemean_year${i}_timeseries.nc tos_Omon_ensmean_year${i}_timmean.nc
done

rm -r year_*/
rm -r yearmean

cd /nird/home/u1/jpo013/norcpm/hfds/
mkdir Ensemble_mean
cd Ensemble_mean
for i in {1960..2018}

do

cp /projects/NS9034K/CMIP6/DCPP/NCC/NorCPM1/dcppA-hindcast/s${i}-r*i1p1f1/Omon/hfds/gn/latest/*.nc /nird/home/u1/jpo013/norcpm/hfds/Ensemble_mean/

cdo ensmean hfds_Omon_NorCPM1_dcppA-hindcast_s${i}-r[1-10]*.nc  hfds_Omon_NorCPM1_dcppA-hindcast_s${i}_ensmeanr.nc
  
rm  hfds_Omon_NorCPM1_dcppA-hindcast_s${i}-r*.nc

done

for i in {1960..2018}
do
cdo -O remapbil,r360x180 /nird/home/u1/jpo013/norcpm/hfds/Ensemble_mean/hfds_Omon_NorCPM1_dcppA-hindcast_s${i}_ensmeanr.nc   hfds_Omon_NorCPM1_dcppA-hindcast_s${i}_ensmean.nc
done

mkdir yearmean/ 

for i in {1960..2018}
do
cdo -O yearmean  hfds_Omon_NorCPM1_dcppA-hindcast_s${i}_ensmean.nc yearmean/hfds_Omon_NorCPM1_dcppA-hindcast_s${i}_ensmean_yearmean.nc
done

for i in {2..11}
do
mkdir year_${i}/
for j in {1960..2018}
do
cdo -O seltimestep,${i} yearmean/hfds_Omon_NorCPM1_dcppA-hindcast_s${j}_ensmean_yearmean.nc year_${i}/hfds_Omon_NorCPM1_dcppA-hindcast_s${j}_ensmean_year${i}.nc
done
cdo -O cat year_${i}/*.nc  hfds_Omon_ensemean_year${i}_timeseries.nc
cdo -O timmean  hfds_Omon_ensemean_year${i}_timeseries.nc hfds_Omon_ensmean_year${i}_timmean.nc
done

rm -r year_*/
rm -r yearmean


cd /nird/home/u1/jpo013/norcpm/siconc/
mkdir Ensemble_mean
cd Ensemble_mean
for i in {1960..2018}

do

cp /projects/NS9034K/CMIP6/DCPP/NCC/NorCPM1/dcppA-hindcast/s${i}-r*i1p1f1/SImon/siconc/gn/latest/*.nc /nird/home/u1/jpo013/norcpm/siconc/Ensemble_mean/

cdo ensmean siconc_SImon_NorCPM1_dcppA-hindcast_s${i}-r[1-10]*.nc  siconc_SImon_NorCPM1_dcppA-hindcast_s${i}_ensmeanr.nc
  
rm  siconc_SImon_NorCPM1_dcppA-hindcast_s${i}-r*.nc

done

for i in {1960..2018}
do
cdo -O remapbil,r360x180 /nird/home/u1/jpo013/norcpm/siconc/Ensemble_mean/siconc_SImon_NorCPM1_dcppA-hindcast_s${i}_ensmeanr.nc   siconc_SImon_NorCPM1_dcppA-hindcast_s${i}_ensmean.nc
done

mkdir yearmean/ 

for i in {1960..2018}
do
cdo -O yearmean  siconc_SImon_NorCPM1_dcppA-hindcast_s${i}_ensmean.nc yearmean/siconc_SImon_NorCPM1_dcppA-hindcast_s${i}_ensmean_yearmean.nc
done

for i in {2..11}
do
mkdir year_${i}/
for j in {1960..2018}
do
cdo -O seltimestep,${i} yearmean/siconc_SImon_NorCPM1_dcppA-hindcast_s${j}_ensmean_yearmean.nc year_${i}/siconc_SImon_NorCPM1_dcppA-hindcast_s${j}_ensmean_year${i}.nc
done
cdo -O cat year_${i}/*.nc  siconc_SImon_ensemean_year${i}_timeseries.nc
cdo -O timmean  siconc_SImon_ensemean_year${i}_timeseries.nc siconc_SImon_ensmean_year${i}_timmean.nc
done

rm -r year_*/
rm -r yearmean
