s$BAHG_l_gk <- ifelse((s$gk_koe_t>=17 & s$gk_koe_t<25 & s$gk_koe_u>=40 & s$gk_koe_u<50) | 
                           (s$gk_koe_t>=17 & s$gk_koe_t<25 & s$gk_koe_u>=30 & s$gk_koe_u<40) | 
                           (s$gk_koe_t>=17 & s$gk_koe_t<25 & s$gk_koe_u>=15 & s$gk_koe_u<30) |
                           (s$gk_koe_t>=25 & s$gk_koe_t<35 & s$gk_koe_u>=30 & s$gk_koe_u<50) |
                           (s$gk_koe_t>=25 & s$gk_koe_t<45 & s$gk_koe_u>=15 & s$gk_koe_u<30) | 
                           (s$gk_koe_t>=25 & s$gk_koe_t<35  & s$gk_koe_u>0 & s$gk_koe_u<15) | 
                           (s$gk_koe_t>=35 & s$gk_koe_t<45  & s$gk_koe_u>0 & s$gk_koe_u<15) |
                           (s$gk_koe_t>=8 & s$gk_koe_t<17 & s$gk_koe_u>=40 & s$gk_koe_u<50) | 
                           (s$gk_koe_t>=12 & s$gk_koe_t<17  & s$gk_koe_u>=10 & s$gk_koe_u<40) | 
                           (s$gk_koe_t>=17 & s$gk_koe_t<25   & s$gk_koe_u>0 & s$gk_koe_u<15),
                       w.gk,
                       0)