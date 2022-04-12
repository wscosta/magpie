*** |  (C) 2008-2022 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

$setglobal c22_protect_scenario  WDPA
$setglobal c22_protect_scenario_noselect  WDPA
$setglobal c22_protect_fadein  by2030
$setglobal c22_ad_policy  npi
$setglobal c22_aolc_policy  npi


* Set-switch for countries affected by regional land protection policy
* Default: all iso countries selected
sets
  policy_countries36(iso) countries to be affected by land protection policy
                        / ABW,AFG,AGO,AIA,ALA,ALB,AND,ARE,ARG,ARM,
                          ASM,ATA,ATF,ATG,AUS,AUT,AZE,BDI,BEL,BEN,
                          BES,BFA,BGD,BGR,BHR,BHS,BIH,BLM,BLR,BLZ,
                          BMU,BOL,BRA,BRB,BRN,BTN,BVT,BWA,CAF,CAN,
                          CCK,CHN,CHE,CHL,CIV,CMR,COD,COG,COK,COL,
                          COM,CPV,CRI,CUB,CUW,CXR,CYM,CYP,CZE,DEU,
                          DJI,DMA,DNK,DOM,DZA,ECU,EGY,ERI,ESH,ESP,
                          EST,ETH,FIN,FJI,FLK,FRA,FRO,FSM,GAB,GBR,
                          GEO,GGY,GHA,GIB,GIN,GLP,GMB,GNB,GNQ,GRC,
                          GRD,GRL,GTM,GUF,GUM,GUY,HKG,HMD,HND,HRV,
                          HTI,HUN,IDN,IMN,IND,IOT,IRL,IRN,IRQ,ISL,
                          ISR,ITA,JAM,JEY,JOR,JPN,KAZ,KEN,KGZ,KHM,
                          KIR,KNA,KOR,KWT,LAO,LBN,LBR,LBY,LCA,LIE,
                          LKA,LSO,LTU,LUX,LVA,MAC,MAF,MAR,MCO,MDA,
                          MDG,MDV,MEX,MHL,MKD,MLI,MLT,MMR,MNE,MNG,
                          MNP,MOZ,MRT,MSR,MTQ,MUS,MWI,MYS,MYT,NAM,
                          NCL,NER,NFK,NGA,NIC,NIU,NLD,NOR,NPL,NRU,
                          NZL,OMN,PAK,PAN,PCN,PER,PHL,PLW,PNG,POL,
                          PRI,PRK,PRT,PRY,PSE,PYF,QAT,REU,ROU,RUS,
                          RWA,SAU,SDN,SEN,SGP,SGS,SHN,SJM,SLB,SLE,
                          SLV,SMR,SOM,SPM,SRB,SSD,STP,SUR,SVK,SVN,
                          SWE,SWZ,SXM,SYC,SYR,TCA,TCD,TGO,THA,TJK,
                          TKL,TKM,TLS,TON,TTO,TUN,TUR,TUV,TWN,TZA,
                          UGA,UKR,UMI,URY,USA,UZB,VAT,VCT,VEN,VGB,
                          VIR,VNM,VUT,WLF,WSM,YEM,ZAF,ZMB,ZWE /
;


table f22_protection_fader(t_all,prot_target22) Protection scenario fader (1)
$ondelim
$include "./modules/22_land_protection/input/f22_protection_fader.csv"
$offdelim
;

table f22_wdpa_baseline(t_all,j,land) Initial protected area as derived from WDPA until 2020 (mio. ha)
$ondelim
$include "./modules/22_land_protection/input/wdpa_baseline.cs3"
$offdelim
;
* fix to 2020 values for years after 2020
m_fillmissingyears(f22_wdpa_baseline,"j,land");

table f22_protect_area(j,prot_type) Conservation priority areas (mio. ha)
$ondelim
$include "./modules/22_land_protection/input/protect_area.cs3"
$offdelim
;

table f22_min_land_stock(t_all,j,pol22,pol_stock22) Land protection policies [minimum land stock] (Mha)
$ondelim
$include "./modules/22_land_protection/input/npi_ndc_ad_aolc_pol.cs3"
$offdelim
;

table f22_land_iso(t_ini10,iso,land) Land area for different land pools at ISO level (mio. ha)
$ondelim
$include "./modules/22_land_protection/input/avl_land_t_iso.cs3"
$offdelim;

