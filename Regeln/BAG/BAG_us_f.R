s$BAG_us_f <- ifelse((s$f_koe_t>0 & s$f_koe_t<8 & s$f_koe_u>=25 & s$f_koe_u<40) | 
                     (s$f_koe_t>0 & s$f_koe_t<8  & s$f_koe_u>=40 & s$f_koe_u<50),
                       w.f,
                       0)