s$BAG_lt_f <- ifelse((s$f_koe_t>=45 & s$f_koe_t<65  & s$f_koe_u>0 & s$f_koe_u<15) | 
                           (s$f_koe_t>=45 & s$f_koe_t<65  & s$f_koe_u>=15 & s$f_koe_u<30) | 
                           (s$f_koe_t>=45 & s$f_koe_t<65  & s$f_koe_u>=30 & s$f_koe_u<55) |
                           (s$f_koe_t>=65 & s$f_koe_t<=100 & s$f_koe_u<30),
                       w.f,
                       0)