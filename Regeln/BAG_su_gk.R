s$BAG_su_gk <- ifelse((s$gk_koe_t>0 & s$gk_koe_t<8 & s$gk_koe_u>=80 & s$gk_koe_u<=100) | 
                      (s$gk_koe_t>0 & s$gk_koe_t<8 & s$gk_koe_u>=50 & s$gk_koe_u<80),
                       w.gk,
                       0)