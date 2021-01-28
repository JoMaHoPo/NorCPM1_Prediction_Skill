cd /nird/home/u1/jpo013/norcpm/tos/Ensemble_mean/

mkdir Ensemble_mean_anomaly/

for i in {2..11}

do

cdo timmean tos_Omon_ensemean_year${i}_timeseries.nc year${i}_timmean.nc

cdo div tos_Omon_ensemean_year${i}_timeseries.nc tos_Omon_ensemean_year${i}_timeseries.nc  shaper.nc

cdo mul year${i}_timmean.nc shaper.nc  tos_mean_timeserie.nc

cdo sub  tos_Omon_ensemean_year${i}_timeseries.nc  tos_mean_timeserie.nc Ensemble_mean_anomaly/tos_Omon_ensemean_year${i}_anomaly.nc 
rm shaper.nc
rm *timmean.nc
rm *_mean_timeserie.nc
done


cd /nird/home/u1/jpo013/norcpm/hfds/Ensemble_mean/

mkdir Ensemble_mean_anomaly/

for i in {2..11}

do

cdo timmean hfds_Omon_ensemean_year${i}_timeseries.nc year${i}_timmean.nc

cdo div hfds_Omon_ensemean_year${i}_timeseries.nc hfds_Omon_ensemean_year${i}_timeseries.nc  shaper.nc

cdo mul year${i}_timmean.nc shaper.nc  hfds_mean_timeserie.nc

cdo sub  hfds_Omon_ensemean_year${i}_timeseries.nc  hfds_mean_timeserie.nc Ensemble_mean_anomaly/hfds_Omon_ensemean_year${i}_anomaly.nc 

rm shaper.nc
rm *timmean.nc
rm *_mean_timeserie.nc
done



