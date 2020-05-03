s$BAG_tl_gk <- ifelse((s$gk_koe_t>=25 & s$gk_koe_t<45 & s$gk_koe_u>=15 & s$gk_koe_u<30) | 
                      (s$gk_koe_t>=25 & s$gk_koe_t<35 & s$gk_koe_u>0 & s$gk_koe_u<15) | 
                      (s$gk_koe_t>=35 & s$gk_koe_t<45 & s$gk_koe_u>0  & s$gk_koe_u<15),
                       w.gk,
                       0)