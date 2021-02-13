*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

$setglobal c35_protect_scenario  WDPA
$setglobal c35_ad_policy  npi
$setglobal c35_aolc_policy  npi

scalars
  s35_hvarea Flag for harvested area (0=zero 1=exognous 2=endogneous)	/ 2 /
  s35_hvarea_secdforest annual secdforest harvest rate for s35_hvarea=1 (percent per year) / 0.005 /
  s35_hvarea_primforest annual primforest harvest rate for s35_hvarea=1 (percent per year) / 0.0001 /
  s35_hvarea_other annual other land harvest rate for s35_hvarea=1 (percent per year) / 0 /
  s35_timber_harvest_cost_secdforest   Cost for harvesting from secondary forest (USD per ha) / 2000/
  s35_timber_harvest_cost_other        Cost for harvesting from other land (USD per ha) / 2000/
  s35_timber_harvest_cost_primforest   Cost for harvesting from primary forest (USD per ha) / 3000/
s35_natveg_harvest_shr Constrains the allowed wood harvest from natural vegetation (1=unconstrained) (1) /1/
s35_secdf_distribution Flag for secdf initialization (0=all secondary forest in highest age class 1=Equal distribution among all age classes 2=Poulter distribution from MODIS satellite data) (1) /2/
s35_forest_damage Damage simulation in forests (0=none 1=shifting agriculture 2=Combination of wildfire and shifting agriculture) /1/
;

parameter f35_protection_fader(t_all) Protection scenario fader (1)
/
$ondelim
$include "./modules/35_natveg/input/f35_protection_fader.csv"
$offdelim
/
;

table f35_protect_area(j,prot_type) Conservation priority areas (mio. ha)
$ondelim
$include "./modules/35_natveg/input/protect_area.cs3"
$offdelim
;

table f35_min_land_stock(t_all,j,pol35,pol_stock35) Land protection policies [minimum land stock] (Mha)
$ondelim
$include "./modules/35_natveg/input/npi_ndc_ad_aolc_pol.cs3"
$offdelim
;

table f35_forest_lost_share(i,driver_source) Share of area damanged by forest fires (1)
$ondelim
$include "./modules/35_natveg/input/f35_forest_lost_share.cs3"
$offdelim
;

parameter f35_forest_disturbance_share(i) Share of area damanged by forest disturbances (1)
/
$ondelim
$include "./modules/35_natveg/input/f35_forest_disturbance_share.cs4"
$offdelim
/;

parameter f35_gs_relativetarget(i) Relative growing stock target in each region (m3 per ha)
/
$ondelim
$include "./modules/35_natveg/input/f35_gs_relativetarget.cs4"
$offdelim
/;
