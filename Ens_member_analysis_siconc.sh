

for t in {1..10}
do 
cd /nird/home/u1/jpo013/norcpm/siconc/ 
mkdir Ensemble_member_${t}
cd Ensemble_member_${t}
mkdir yearmean 
for i in {1960..2018}
do
cdo -O remapbil,r360x180 /projects/NS9034K/CMIP6/DCPP/NCC/NorCPM1/dcppA-hindcast/s${i}-r${t}i1*/SImon/siconc/gn/latest/*.nc siconc_SImon_${i}_ensm_${t}.nc
done

for i in {1960..2018}
do
cdo -O yearmean siconc_SImon_${i}_ensm_${t}.nc yearmean/siconc_SImon_${i}_ensm_${t}_yearmean.nc
done

for i in {2..11}
do
mkdir year_${i}/
for j in {1960..2018}
do
cdo -O seltimestep,${i} yearmean/siconc_SImon_${j}_ensm_${t}_yearmean.nc year_${i}/siconc_SImon_${j}_ensm_${t}_year${i}.nc
done
cdo -O cat year_${i}/*.nc  siconc_SImon_ensm_${t}_year${i}_timeseries.nc
cdo -O timmean  siconc_SImon_ensm_${t}_year${i}_timeseries.nc siconc_SImon_ensm_${t}_year${i}_timmean.nc
done

rm *_ensm_${t}.nc
rm -r year_*/
rm -r yearmean

done



