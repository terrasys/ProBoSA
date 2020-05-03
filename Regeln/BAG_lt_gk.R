s$BAG_lt_gk <- ifelse((s$gk_koe_t>=45 & s$gk_koe_t<65  & s$gk_koe_u>0 & s$gk_koe_u<15) | 
                           (s$gk_koe_t>=45 & s$gk_koe_t<65  & s$gk_koe_u>=15 & s$gk_koe_u<30) | 
                           (s$gk_koe_t>=45 & s$gk_koe_t<65  & s$gk_koe_u>=30 & s$gk_koe_u<55) |
                           (s$gk_koe_t>=65 & s$gk_koe_t<=100 & s$gk_koe_u<30),
                       w.gk,
                       0)