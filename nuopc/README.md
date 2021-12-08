# PaHM
ESMF/NUOPC cap to read unstructured ATM forcing from netcdf file and provide it to coupled application 

# To Cite:


## Development of a Flexible Coupling Interface for ADCIRC Model for Coastal Inundation Studies

### Authors
Panagiotis Velissariou, Saeed Moghimi
### Publication date
2021
### Description
To enable flexible model coupling in storm surge studies, a coupling cap for ADvanced CIRCulation model (ADCIRC) was developed. The cap is essentially a wrap-around ADCIRC model which enables the model to communicate seamlessly with other model components, eg, surface wave and numerical weather prediction models. All the model components advertise their imported and exported fields at the runtime and connect to each other for exchanging data based on the availability of the advertised fields. Models can operate on structured or unstructured grids and the regridding capability will be provided by Earth System Modelling Framework (ESMF) and National Unified Operational Prediction Capability (NUOPC) infrastructures. We implemented the coupled application including ADCIRC cap as well as NUOPC compliant caps to read WaveWatchIII and Hurricane Weather Research and Forecasting Model (HWRF) generated forcing fields. We validated the coupled application for hurricane Ike on very high resolution mesh that covers the entire US Atlantic coastal water. We also showed that inclusion of the surface waves improves the model performance of both total water level and coastal inundation. Also shown how the maximum wave set-up and maximum surge regions may happen at various time and locations depending on the storm track and its landfalling region.

https://repository.library.noaa.gov/view/noaa/20609/noaa_20609_DS1.pdf


### Disclaimer 
The United States Department of Commerce (DOC) GitHub project code is provided on an 'as is' basis and the user assumes responsibility for its use. DOC has relinquished control of the information and no longer has responsibility to protect the integrity, confidentiality, or availability of the information. Any claims against the Department of Commerce stemming from the use of its GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.
