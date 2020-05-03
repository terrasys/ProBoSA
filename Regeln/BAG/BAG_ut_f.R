s$BAG_ut_f <- ifelse((s$f_koe_t>=35 & s$f_koe_t<45  & s$f_koe_u>=30 & s$f_koe_u<50) | 
                     (s$f_koe_t>=30 & s$f_koe_t<45  & s$f_koe_u>=50 & s$f_koe_u<65) | 
                     (s$f_koe_t>=25 & s$f_koe_t<35  & s$f_koe_u>=65 & s$f_koe_u<75),
                       w.f,
                       0)