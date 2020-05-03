s$BAG_tl_f <- ifelse((s$f_koe_t>=25 & s$f_koe_t<45 & s$f_koe_u>=15 & s$f_koe_u<30) | 
                     (s$f_koe_t>=25 & s$f_koe_t<35 & s$f_koe_u>0   & s$f_koe_u<15) | 
                     (s$f_koe_t>=35 & s$f_koe_t<45 & s$f_koe_u>0   & s$f_koe_u<15),
                       w.f,
                       0)