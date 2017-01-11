*** (C) 2008-2016 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3 
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de

* Here you can put your additional declarations


positive variables

*** nutrient balances
 vm_nr_inorg_fert_reg(i)         inorganic fertilizer application (Tg Nutrients)
 vm_nr_inorg_fert_costs(i)        cost of inorganic fertiliuers (Million USD)
 v50_nr_eff(i)           cropland nutrient uptake efficiency (Tg nutrient)
* v50_nr_dep_crop(i)                 atmospheric deposition on cropland (Tg Nr)
 v50_nr_withdrawals(i,kcr)               withdrawals of Nr from soils (Tg Nutrients)
;

equations
*** fertilizer costs
 q50_nr_cost_fert(i)     fertilizer costs
 q50_managament_nitrogen(i,kcr)       management intensity influences nitrogen efficiency

*** nutrient balances

 q50_nr_bal_crp(i)         cropland nutrient inputs have to equal withdrawals and losses
 q50_nr_withdrawals(i,kcr)  calculating nr withdrawals
* q50_nr_atmospheric_deposition_cropland(i) calculation of atmospheric deposition

;

*** EOF declarations.gms ***

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_nr_inorg_fert_reg(t,i,type)         inorganic fertilizer application (Tg Nutrients)
 ov_nr_inorg_fert_costs(t,i,type)       cost of inorganic fertiliuers (Million USD)
 ov50_nr_eff(t,i,type)                  cropland nutrient uptake efficiency (Tg nutrient)
 ov50_nr_withdrawals(t,i,kcr,type)      withdrawals of Nr from soils (Tg Nutrients)
 oq50_nr_cost_fert(t,i,type)            fertilizer costs
 oq50_managament_nitrogen(t,i,kcr,type) management intensity influences nitrogen efficiency
 oq50_nr_bal_crp(t,i,type)              cropland nutrient inputs have to equal withdrawals and losses
 oq50_nr_withdrawals(t,i,kcr,type)      calculating nr withdrawals
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################