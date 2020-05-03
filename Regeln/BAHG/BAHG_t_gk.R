s$BAHG_t_gk <- ifelse((s$gk_koe_t>=35 & s$gk_koe_t<45  & s$gk_koe_u>=30 & s$gk_koe_u<50) | 
                           (s$gk_koe_t>=30 & s$gk_koe_t<45  & s$gk_koe_u>=50 & s$gk_koe_u<65) | 
                           (s$gk_koe_t>=25 & s$gk_koe_t<35  & s$gk_koe_u>=65 & s$gk_koe_u<75) |
                           (s$gk_koe_t>=45 & s$gk_koe_t<65  & s$gk_koe_u>0 & s$gk_koe_u<15) | 
                           (s$gk_koe_t>=45 & s$gk_koe_t<65  & s$gk_koe_u>=15 & s$gk_koe_u<30) | 
                           (s$gk_koe_t>=45 & s$gk_koe_t<65  & s$gk_koe_u>=30 & s$gk_koe_u<55) |
                           (s$gk_koe_t>=65 & s$gk_koe_t<=100 & s$gk_koe_u<30), 
                       w.gk,
                       0)