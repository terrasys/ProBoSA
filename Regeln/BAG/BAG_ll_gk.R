s$BAG_ll_gk <- ifelse((s$gk_koe_t>=17 & s$gk_koe_t<25 & s$gk_koe_u>=40 & s$gk_koe_u<50) | 
                           (s$gk_koe_t>=17 & s$gk_koe_t<25 & s$gk_koe_u>=30 & s$gk_koe_u<40) | 
                           (s$gk_koe_t>=17 & s$gk_koe_t<25 & s$gk_koe_u>=15 & s$gk_koe_u<30) |
                           (s$gk_koe_t>=25 & s$gk_koe_t<35 & s$gk_koe_u>=30 & s$gk_koe_u<50),
                       w.gk,
                       0)