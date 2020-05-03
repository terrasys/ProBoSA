s$BAG_us_gk <- ifelse((s$gk_koe_t>0 & s$gk_koe_t<8 & s$gk_koe_u>=25 & s$gk_koe_u<40) | 
                           (s$gk_koe_t>0 & s$gk_koe_t<8  & s$gk_koe_u>=40 & s$gk_koe_u<50),
                       w.gk,
                       0)