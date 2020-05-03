s$BAG_tu_gk <- ifelse((s$gk_koe_t>=17  & s$gk_koe_t<25  & s$gk_koe_u>=65 & s$gk_koe_u<83) | 
                      (s$gk_koe_t>=17  & s$gk_koe_t<30  & s$gk_koe_u>=50 & s$gk_koe_u<65),
                       w.gk,
                       0)