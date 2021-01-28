
for t in {1..10}
do 
cd /nird/home/u1/jpo013/norcpm/hfds/ 
mkdir Ensemble_member_${t}
cd Ensemble_member_${t}
mkdir yearmean 
for i in {1960..2018}
do
cdo -O remapbil,r360x180 /projects/NS9034K/CMIP6/DCPP/NCC/NorCPM1/dcppA-hindcast/s${i}-r${t}i1*/Omon/hfds/gn/latest/*.nc hfds_Omon_${i}_ensm_${t}.nc
done

for i in {1960..2018}
do
cdo -O yearmean hfds_Omon_${i}_ensm_${t}.nc yearmean/hfds_Omon_${i}_ensm_${t}_yearmean.nc
done

for i in {2..11}
do
mkdir year_${i}/
for j in {1960..2018}
do
cdo -O seltimestep,${i} yearmean/hfds_Omon_${j}_ensm_${t}_yearmean.nc year_${i}/hfds_Omon_${j}_ensm_${t}_year${i}.nc
done
cdo -O cat year_${i}/*.nc  hfds_Omon_ensm_${t}_year${i}_timeseries.nc
cdo -O timmean  hfds_Omon_ensm_${t}_year${i}_timeseries.nc hfds_Omon_ensm_${t}_year${i}_timmean.nc
done

rm *_ensm_${t}.nc
rm -r year_*/
rm -r yearmean

done

for t in {1..10}
do 
cd /nird/home/u1/jpo013/norcpm/tos/ 
mkdir Ensemble_member_${t}
cd Ensemble_member_${t}
mkdir yearmean 
for i in {1960..2018}
do
cdo -O remapbil,r360x180 /projects/NS9034K/CMIP6/DCPP/NCC/NorCPM1/dcppA-hindcast/s${i}-r${t}i1*/Omon/tos/gn/latest/*.nc tos_Omon_${i}_ensm_${t}.nc
done

for i in {1960..2018}
do
cdo -O yearmean tos_Omon_${i}_ensm_${t}.nc yearmean/tos_Omon_${i}_ensm_${t}_yearmean.nc
done

for i in {2..11}
do
mkdir year_${i}/
for j in {1960..2018}
do
cdo -O seltimestep,${i} yearmean/tos_Omon_${j}_ensm_${t}_yearmean.nc year_${i}/tos_Omon_${j}_ensm_${t}_year${i}.nc
done
cdo -O cat year_${i}/*.nc  tos_Omon_ensm_${t}_year${i}_timeseries.nc
cdo -O timmean  tos_Omon_ensm_${t}_year${i}_timeseries.nc tos_Omon_ensm_${t}_year${i}_timmean.nc
done

rm *_ensm_${t}.nc
rm -r year_*/
rm -r yearmean

done




