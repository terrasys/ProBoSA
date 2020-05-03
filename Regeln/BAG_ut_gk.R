s$BAG_ut_gk <- ifelse((s$gk_koe_t>=35 & s$gk_koe_t<45  & s$gk_koe_u>=30 & s$gk_koe_u<50) | 
                      (s$gk_koe_t>=30 & s$gk_koe_t<45  & s$gk_koe_u>=50 & s$gk_koe_u<65) | 
                      (s$gk_koe_t>=25 & s$gk_koe_t<35  & s$gk_koe_u>=65 & s$gk_koe_u<75),
                       w.gk,
                       0)