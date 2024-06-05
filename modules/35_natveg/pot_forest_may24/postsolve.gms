*** |  (C) 2008-2024 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*secdforest age class calculation
pc35_secdforest(j,ac) = v35_secdforest.l(j,ac);

*other land age class calculation
pc35_land_other(j,othertype35,ac) = vm_land_other.l(j,othertype35,ac);

* Reset forest establishment bound
pcm_max_forest_est(j) = f35_pot_forest_area(j) - sum(land_forest, vm_land.l(j,land_forest));
pcm_max_forest_est(j)$(pcm_max_forest_est(j) < 0) = 0;

*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov35_secdforest(t,j,ac,"marginal")                        = v35_secdforest.m(j,ac);
 ov_land_other(t,j,othertype35,ac,"marginal")              = vm_land_other.m(j,othertype35,ac);
 ov_landdiff_natveg(t,"marginal")                          = vm_landdiff_natveg.m;
 ov35_other_expansion(t,j,othertype35,"marginal")          = v35_other_expansion.m(j,othertype35);
 ov35_other_reduction(t,j,othertype35,ac,"marginal")       = v35_other_reduction.m(j,othertype35,ac);
 ov35_secdforest_expansion(t,j,"marginal")                 = v35_secdforest_expansion.m(j);
 ov35_secdforest_reduction(t,j,ac,"marginal")              = v35_secdforest_reduction.m(j,ac);
 ov35_primforest_reduction(t,j,"marginal")                 = v35_primforest_reduction.m(j);
 ov35_hvarea_secdforest(t,j,ac,"marginal")                 = v35_hvarea_secdforest.m(j,ac);
 ov35_hvarea_other(t,j,othertype35,ac,"marginal")          = v35_hvarea_other.m(j,othertype35,ac);
 ov35_hvarea_primforest(t,j,"marginal")                    = v35_hvarea_primforest.m(j);
 ov_prod_natveg(t,j,land_natveg,kforestry,"marginal")      = vm_prod_natveg.m(j,land_natveg,kforestry);
 ov_cost_hvarea_natveg(t,i,"marginal")                     = vm_cost_hvarea_natveg.m(i);
 oq35_land_secdforest(t,j,"marginal")                      = q35_land_secdforest.m(j);
 oq35_land_other(t,j,"marginal")                           = q35_land_other.m(j);
 oq35_carbon_primforest(t,j,ag_pools,stockType,"marginal") = q35_carbon_primforest.m(j,ag_pools,stockType);
 oq35_carbon_secdforest(t,j,ag_pools,stockType,"marginal") = q35_carbon_secdforest.m(j,ag_pools,stockType);
 oq35_carbon_other(t,j,ag_pools,stockType,"marginal")      = q35_carbon_other.m(j,ag_pools,stockType);
 oq35_min_forest(t,j,"marginal")                           = q35_min_forest.m(j);
 oq35_min_other(t,j,"marginal")                            = q35_min_other.m(j);
 oq35_landdiff(t,"marginal")                               = q35_landdiff.m;
 oq35_other_expansion(t,j,othertype35,"marginal")          = q35_other_expansion.m(j,othertype35);
 oq35_other_reduction(t,j,othertype35,ac,"marginal")       = q35_other_reduction.m(j,othertype35,ac);
 oq35_secdforest_expansion(t,j,"marginal")                 = q35_secdforest_expansion.m(j);
 oq35_secdforest_reduction(t,j,ac,"marginal")              = q35_secdforest_reduction.m(j,ac);
 oq35_primforest_reduction(t,j,"marginal")                 = q35_primforest_reduction.m(j);
 oq35_secdforest_regeneration(t,j,"marginal")              = q35_secdforest_regeneration.m(j);
 oq35_max_forest_establishment(t,j,"marginal")             = q35_max_forest_establishment.m(j);
 oq35_other_regeneration(t,j,"marginal")                   = q35_other_regeneration.m(j);
 oq35_other_est(t,j,ac,"marginal")                         = q35_other_est.m(j,ac);
 oq35_secdforest_est(t,j,ac,"marginal")                    = q35_secdforest_est.m(j,ac);
 oq35_hvarea_other(t,j,othertype35,ac,"marginal")          = q35_hvarea_other.m(j,othertype35,ac);
 oq35_hvarea_secdforest(t,j,ac,"marginal")                 = q35_hvarea_secdforest.m(j,ac);
 oq35_hvarea_primforest(t,j,"marginal")                    = q35_hvarea_primforest.m(j);
 oq35_prod_secdforest(t,j,"marginal")                      = q35_prod_secdforest.m(j);
 oq35_prod_primforest(t,j,"marginal")                      = q35_prod_primforest.m(j);
 oq35_prod_other(t,j,"marginal")                           = q35_prod_other.m(j);
 oq35_cost_hvarea(t,i,"marginal")                          = q35_cost_hvarea.m(i);
 oq35_bv_primforest(t,j,potnatveg,"marginal")              = q35_bv_primforest.m(j,potnatveg);
 oq35_bv_secdforest(t,j,potnatveg,"marginal")              = q35_bv_secdforest.m(j,potnatveg);
 oq35_bv_other(t,j,potnatveg,"marginal")                   = q35_bv_other.m(j,potnatveg);
 oq35_natveg_conservation(t,j,"marginal")                  = q35_natveg_conservation.m(j);
 oq35_secdforest_restoration(t,j,"marginal")               = q35_secdforest_restoration.m(j);
 oq35_other_restoration(t,j,"marginal")                    = q35_other_restoration.m(j);
 ov35_secdforest(t,j,ac,"level")                           = v35_secdforest.l(j,ac);
 ov_land_other(t,j,othertype35,ac,"level")                 = vm_land_other.l(j,othertype35,ac);
 ov_landdiff_natveg(t,"level")                             = vm_landdiff_natveg.l;
 ov35_other_expansion(t,j,othertype35,"level")             = v35_other_expansion.l(j,othertype35);
 ov35_other_reduction(t,j,othertype35,ac,"level")          = v35_other_reduction.l(j,othertype35,ac);
 ov35_secdforest_expansion(t,j,"level")                    = v35_secdforest_expansion.l(j);
 ov35_secdforest_reduction(t,j,ac,"level")                 = v35_secdforest_reduction.l(j,ac);
 ov35_primforest_reduction(t,j,"level")                    = v35_primforest_reduction.l(j);
 ov35_hvarea_secdforest(t,j,ac,"level")                    = v35_hvarea_secdforest.l(j,ac);
 ov35_hvarea_other(t,j,othertype35,ac,"level")             = v35_hvarea_other.l(j,othertype35,ac);
 ov35_hvarea_primforest(t,j,"level")                       = v35_hvarea_primforest.l(j);
 ov_prod_natveg(t,j,land_natveg,kforestry,"level")         = vm_prod_natveg.l(j,land_natveg,kforestry);
 ov_cost_hvarea_natveg(t,i,"level")                        = vm_cost_hvarea_natveg.l(i);
 oq35_land_secdforest(t,j,"level")                         = q35_land_secdforest.l(j);
 oq35_land_other(t,j,"level")                              = q35_land_other.l(j);
 oq35_carbon_primforest(t,j,ag_pools,stockType,"level")    = q35_carbon_primforest.l(j,ag_pools,stockType);
 oq35_carbon_secdforest(t,j,ag_pools,stockType,"level")    = q35_carbon_secdforest.l(j,ag_pools,stockType);
 oq35_carbon_other(t,j,ag_pools,stockType,"level")         = q35_carbon_other.l(j,ag_pools,stockType);
 oq35_min_forest(t,j,"level")                              = q35_min_forest.l(j);
 oq35_min_other(t,j,"level")                               = q35_min_other.l(j);
 oq35_landdiff(t,"level")                                  = q35_landdiff.l;
 oq35_other_expansion(t,j,othertype35,"level")             = q35_other_expansion.l(j,othertype35);
 oq35_other_reduction(t,j,othertype35,ac,"level")          = q35_other_reduction.l(j,othertype35,ac);
 oq35_secdforest_expansion(t,j,"level")                    = q35_secdforest_expansion.l(j);
 oq35_secdforest_reduction(t,j,ac,"level")                 = q35_secdforest_reduction.l(j,ac);
 oq35_primforest_reduction(t,j,"level")                    = q35_primforest_reduction.l(j);
 oq35_secdforest_regeneration(t,j,"level")                 = q35_secdforest_regeneration.l(j);
 oq35_max_forest_establishment(t,j,"level")                = q35_max_forest_establishment.l(j);
 oq35_other_regeneration(t,j,"level")                      = q35_other_regeneration.l(j);
 oq35_other_est(t,j,ac,"level")                            = q35_other_est.l(j,ac);
 oq35_secdforest_est(t,j,ac,"level")                       = q35_secdforest_est.l(j,ac);
 oq35_hvarea_other(t,j,othertype35,ac,"level")             = q35_hvarea_other.l(j,othertype35,ac);
 oq35_hvarea_secdforest(t,j,ac,"level")                    = q35_hvarea_secdforest.l(j,ac);
 oq35_hvarea_primforest(t,j,"level")                       = q35_hvarea_primforest.l(j);
 oq35_prod_secdforest(t,j,"level")                         = q35_prod_secdforest.l(j);
 oq35_prod_primforest(t,j,"level")                         = q35_prod_primforest.l(j);
 oq35_prod_other(t,j,"level")                              = q35_prod_other.l(j);
 oq35_cost_hvarea(t,i,"level")                             = q35_cost_hvarea.l(i);
 oq35_bv_primforest(t,j,potnatveg,"level")                 = q35_bv_primforest.l(j,potnatveg);
 oq35_bv_secdforest(t,j,potnatveg,"level")                 = q35_bv_secdforest.l(j,potnatveg);
 oq35_bv_other(t,j,potnatveg,"level")                      = q35_bv_other.l(j,potnatveg);
 oq35_natveg_conservation(t,j,"level")                     = q35_natveg_conservation.l(j);
 oq35_secdforest_restoration(t,j,"level")                  = q35_secdforest_restoration.l(j);
 oq35_other_restoration(t,j,"level")                       = q35_other_restoration.l(j);
 ov35_secdforest(t,j,ac,"upper")                           = v35_secdforest.up(j,ac);
 ov_land_other(t,j,othertype35,ac,"upper")                 = vm_land_other.up(j,othertype35,ac);
 ov_landdiff_natveg(t,"upper")                             = vm_landdiff_natveg.up;
 ov35_other_expansion(t,j,othertype35,"upper")             = v35_other_expansion.up(j,othertype35);
 ov35_other_reduction(t,j,othertype35,ac,"upper")          = v35_other_reduction.up(j,othertype35,ac);
 ov35_secdforest_expansion(t,j,"upper")                    = v35_secdforest_expansion.up(j);
 ov35_secdforest_reduction(t,j,ac,"upper")                 = v35_secdforest_reduction.up(j,ac);
 ov35_primforest_reduction(t,j,"upper")                    = v35_primforest_reduction.up(j);
 ov35_hvarea_secdforest(t,j,ac,"upper")                    = v35_hvarea_secdforest.up(j,ac);
 ov35_hvarea_other(t,j,othertype35,ac,"upper")             = v35_hvarea_other.up(j,othertype35,ac);
 ov35_hvarea_primforest(t,j,"upper")                       = v35_hvarea_primforest.up(j);
 ov_prod_natveg(t,j,land_natveg,kforestry,"upper")         = vm_prod_natveg.up(j,land_natveg,kforestry);
 ov_cost_hvarea_natveg(t,i,"upper")                        = vm_cost_hvarea_natveg.up(i);
 oq35_land_secdforest(t,j,"upper")                         = q35_land_secdforest.up(j);
 oq35_land_other(t,j,"upper")                              = q35_land_other.up(j);
 oq35_carbon_primforest(t,j,ag_pools,stockType,"upper")    = q35_carbon_primforest.up(j,ag_pools,stockType);
 oq35_carbon_secdforest(t,j,ag_pools,stockType,"upper")    = q35_carbon_secdforest.up(j,ag_pools,stockType);
 oq35_carbon_other(t,j,ag_pools,stockType,"upper")         = q35_carbon_other.up(j,ag_pools,stockType);
 oq35_min_forest(t,j,"upper")                              = q35_min_forest.up(j);
 oq35_min_other(t,j,"upper")                               = q35_min_other.up(j);
 oq35_landdiff(t,"upper")                                  = q35_landdiff.up;
 oq35_other_expansion(t,j,othertype35,"upper")             = q35_other_expansion.up(j,othertype35);
 oq35_other_reduction(t,j,othertype35,ac,"upper")          = q35_other_reduction.up(j,othertype35,ac);
 oq35_secdforest_expansion(t,j,"upper")                    = q35_secdforest_expansion.up(j);
 oq35_secdforest_reduction(t,j,ac,"upper")                 = q35_secdforest_reduction.up(j,ac);
 oq35_primforest_reduction(t,j,"upper")                    = q35_primforest_reduction.up(j);
 oq35_secdforest_regeneration(t,j,"upper")                 = q35_secdforest_regeneration.up(j);
 oq35_max_forest_establishment(t,j,"upper")                = q35_max_forest_establishment.up(j);
 oq35_other_regeneration(t,j,"upper")                      = q35_other_regeneration.up(j);
 oq35_other_est(t,j,ac,"upper")                            = q35_other_est.up(j,ac);
 oq35_secdforest_est(t,j,ac,"upper")                       = q35_secdforest_est.up(j,ac);
 oq35_hvarea_other(t,j,othertype35,ac,"upper")             = q35_hvarea_other.up(j,othertype35,ac);
 oq35_hvarea_secdforest(t,j,ac,"upper")                    = q35_hvarea_secdforest.up(j,ac);
 oq35_hvarea_primforest(t,j,"upper")                       = q35_hvarea_primforest.up(j);
 oq35_prod_secdforest(t,j,"upper")                         = q35_prod_secdforest.up(j);
 oq35_prod_primforest(t,j,"upper")                         = q35_prod_primforest.up(j);
 oq35_prod_other(t,j,"upper")                              = q35_prod_other.up(j);
 oq35_cost_hvarea(t,i,"upper")                             = q35_cost_hvarea.up(i);
 oq35_bv_primforest(t,j,potnatveg,"upper")                 = q35_bv_primforest.up(j,potnatveg);
 oq35_bv_secdforest(t,j,potnatveg,"upper")                 = q35_bv_secdforest.up(j,potnatveg);
 oq35_bv_other(t,j,potnatveg,"upper")                      = q35_bv_other.up(j,potnatveg);
 oq35_natveg_conservation(t,j,"upper")                     = q35_natveg_conservation.up(j);
 oq35_secdforest_restoration(t,j,"upper")                  = q35_secdforest_restoration.up(j);
 oq35_other_restoration(t,j,"upper")                       = q35_other_restoration.up(j);
 ov35_secdforest(t,j,ac,"lower")                           = v35_secdforest.lo(j,ac);
 ov_land_other(t,j,othertype35,ac,"lower")                 = vm_land_other.lo(j,othertype35,ac);
 ov_landdiff_natveg(t,"lower")                             = vm_landdiff_natveg.lo;
 ov35_other_expansion(t,j,othertype35,"lower")             = v35_other_expansion.lo(j,othertype35);
 ov35_other_reduction(t,j,othertype35,ac,"lower")          = v35_other_reduction.lo(j,othertype35,ac);
 ov35_secdforest_expansion(t,j,"lower")                    = v35_secdforest_expansion.lo(j);
 ov35_secdforest_reduction(t,j,ac,"lower")                 = v35_secdforest_reduction.lo(j,ac);
 ov35_primforest_reduction(t,j,"lower")                    = v35_primforest_reduction.lo(j);
 ov35_hvarea_secdforest(t,j,ac,"lower")                    = v35_hvarea_secdforest.lo(j,ac);
 ov35_hvarea_other(t,j,othertype35,ac,"lower")             = v35_hvarea_other.lo(j,othertype35,ac);
 ov35_hvarea_primforest(t,j,"lower")                       = v35_hvarea_primforest.lo(j);
 ov_prod_natveg(t,j,land_natveg,kforestry,"lower")         = vm_prod_natveg.lo(j,land_natveg,kforestry);
 ov_cost_hvarea_natveg(t,i,"lower")                        = vm_cost_hvarea_natveg.lo(i);
 oq35_land_secdforest(t,j,"lower")                         = q35_land_secdforest.lo(j);
 oq35_land_other(t,j,"lower")                              = q35_land_other.lo(j);
 oq35_carbon_primforest(t,j,ag_pools,stockType,"lower")    = q35_carbon_primforest.lo(j,ag_pools,stockType);
 oq35_carbon_secdforest(t,j,ag_pools,stockType,"lower")    = q35_carbon_secdforest.lo(j,ag_pools,stockType);
 oq35_carbon_other(t,j,ag_pools,stockType,"lower")         = q35_carbon_other.lo(j,ag_pools,stockType);
 oq35_min_forest(t,j,"lower")                              = q35_min_forest.lo(j);
 oq35_min_other(t,j,"lower")                               = q35_min_other.lo(j);
 oq35_landdiff(t,"lower")                                  = q35_landdiff.lo;
 oq35_other_expansion(t,j,othertype35,"lower")             = q35_other_expansion.lo(j,othertype35);
 oq35_other_reduction(t,j,othertype35,ac,"lower")          = q35_other_reduction.lo(j,othertype35,ac);
 oq35_secdforest_expansion(t,j,"lower")                    = q35_secdforest_expansion.lo(j);
 oq35_secdforest_reduction(t,j,ac,"lower")                 = q35_secdforest_reduction.lo(j,ac);
 oq35_primforest_reduction(t,j,"lower")                    = q35_primforest_reduction.lo(j);
 oq35_secdforest_regeneration(t,j,"lower")                 = q35_secdforest_regeneration.lo(j);
 oq35_max_forest_establishment(t,j,"lower")                = q35_max_forest_establishment.lo(j);
 oq35_other_regeneration(t,j,"lower")                      = q35_other_regeneration.lo(j);
 oq35_other_est(t,j,ac,"lower")                            = q35_other_est.lo(j,ac);
 oq35_secdforest_est(t,j,ac,"lower")                       = q35_secdforest_est.lo(j,ac);
 oq35_hvarea_other(t,j,othertype35,ac,"lower")             = q35_hvarea_other.lo(j,othertype35,ac);
 oq35_hvarea_secdforest(t,j,ac,"lower")                    = q35_hvarea_secdforest.lo(j,ac);
 oq35_hvarea_primforest(t,j,"lower")                       = q35_hvarea_primforest.lo(j);
 oq35_prod_secdforest(t,j,"lower")                         = q35_prod_secdforest.lo(j);
 oq35_prod_primforest(t,j,"lower")                         = q35_prod_primforest.lo(j);
 oq35_prod_other(t,j,"lower")                              = q35_prod_other.lo(j);
 oq35_cost_hvarea(t,i,"lower")                             = q35_cost_hvarea.lo(i);
 oq35_bv_primforest(t,j,potnatveg,"lower")                 = q35_bv_primforest.lo(j,potnatveg);
 oq35_bv_secdforest(t,j,potnatveg,"lower")                 = q35_bv_secdforest.lo(j,potnatveg);
 oq35_bv_other(t,j,potnatveg,"lower")                      = q35_bv_other.lo(j,potnatveg);
 oq35_natveg_conservation(t,j,"lower")                     = q35_natveg_conservation.lo(j);
 oq35_secdforest_restoration(t,j,"lower")                  = q35_secdforest_restoration.lo(j);
 oq35_other_restoration(t,j,"lower")                       = q35_other_restoration.lo(j);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################
