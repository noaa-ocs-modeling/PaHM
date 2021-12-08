{#mainpage}
=================

\if logo_on
<center>
<img src="pahm_logo-text.png" width="795" height="48" alt="Parametric Hurricane Modeling System"/><br/>
Version: 1.0.0
</center>
\endif


Over the years, various parametric wind models have been developed to estimate the surface winds within
a tropical cyclone given the track of the storm. Such models can be very useful on forcing ocean and wave models
in storm surge simulations, as they are lightweight and they do not require much time or computational resources
to produce the wind fields on the fly for the duration of the storm. The Parametric Modeling System
(*PaHM* @ref https://github.com/noaa-ocs-modeling/PaHM) is developed to be used as a general atmospheric
modeling system for coastal applications.

*PaHM* is not only an atmospheric model but rather a modeling system that contains multiple parametric models
(i.e., Rankine Vortex Model, Holland Models (1980, 2010), Willoughby Model and the Generalized Asymmetric Vortex Model GAHM),
and it is left to the user to activate any of these models to generate the wind fields at run time.
In the case of the presence of multiple storms in the basin, *PaHM* has the capability to integrate all the storms
when generating the wind fields. *PaHM* can be used either as a standalone atmospheric model, or
can be coupled with ocean and wave models via NOAA's Environmental Modeling System (NEMS), a common modeling coupling
framework that implements the National Unified Operational Prediction Capability (NUOPC). 


# Table of Contents


## Modeling System Description

A presentation of the [Parametric Hurricane Modeling System](@ref model) with implemented features and roadmap.


## Installation guide

Installation and developement of *PaHM* is done through the distributed version control system Git.
Even if a tarball could be sufficient, we advise to use Git system to follow *PaHM* development
and merge easily to new versions.
Building *PaHM* from sources requires to compile third party libraries and the use of CMake. These
points are detailed below.

- [System prerequisites](@ref install_prerequisites)

- [Build Third party libraries](@ref install_third_party)

- [Get PaHM](@ref install_getpahm) on GitHub repository

- [Build PaHM](@ref install_build)

- [Run PaHM] (@ref run_pahm) (different ways to execute PaHM).


## User guide

- [Project's files organization](@ref user_sources) to get started with *PaHM*.

- [User interface documentation](@ref user_ui) to define and run *PaHM*.


## Best pratices

Some [advices](@ref best_practices) around *PaHM*.


## Developer's corner

This part of the documentation is intended for advanced developers, where he or she will find useful information on each
[**Module and topic**](modules.html)
as well as precise descriptions and comments on subroutines, functions, variables, and types.

The detailed descriptions of [Verification and validation test cases](@ref verification_validation) are also detailed with configurations and expected numerical results.

## PaHM code


The complete Fortran source code and its associated documentation is visible
in [this section](@ref pahm_dev_doc).




