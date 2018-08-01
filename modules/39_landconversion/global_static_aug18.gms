*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

*' @description
*'In the global_static_aug18 realisation, per hectare land conversion costs are separated into 
*' costs for expansion of cropland, pasture and forestry (establishment costs) and 
*' costs for reduction of primary forest, secondary forest and other natural land (clearing costs).
*' Due to limited data availability for land conversion costs we scale a global range of 
*' costs from the literature with regional GDP per capita and 
*' spatially explicit vegetation carbon density @kreidenweis_pasture_2018.
*'
*' @limitations Data availability for per hectare land conversion costs is very limited.

*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/39_landconversion/global_static_aug18/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/39_landconversion/global_static_aug18/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/39_landconversion/global_static_aug18/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/39_landconversion/global_static_aug18/equations.gms"
$Ifi "%phase%" == "preloop" $include "./modules/39_landconversion/global_static_aug18/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/39_landconversion/global_static_aug18/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/39_landconversion/global_static_aug18/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
