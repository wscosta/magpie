*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

$setglobal c39_cost_establish  medium
$setglobal c39_cost_landclear  medium
* options: low, medium, high


table f39_cost_landclear(cost_estimate39,bound39) lower and upper bound for land clearing costs in inital timestep ($US per ha)
$ondelim
$include "./modules/39_landconversion/gdp_vegc_apr18/input/f39_cost_landclear.csv"
$offdelim;


table f39_cost_establish(land,cost_estimate39,bound39) lower and upper bound for land establishing costs in inital timestep ($US per ha)
$ondelim
$include "./modules/39_landconversion/gdp_vegc_apr18/input/f39_cost_establish.cs3"
$offdelim;
