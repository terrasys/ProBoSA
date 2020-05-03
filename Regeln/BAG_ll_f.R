s$BAG_ll_f <- ifelse((s$f_koe_t>=17 & s$f_koe_t<25 & s$f_koe_u>=40 & s$f_koe_u<50) | 
                           (s$f_koe_t>=17 & s$f_koe_t<25 & s$f_koe_u>=30 & s$f_koe_u<40) | 
                           (s$f_koe_t>=17 & s$f_koe_t<25 & s$f_koe_u>=15 & s$f_koe_u<30) |
                           (s$f_koe_t>=25 & s$f_koe_t<35 & s$f_koe_u>=30 & s$f_koe_u<50),
                       w.f,
                       0)