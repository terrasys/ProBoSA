s$BAG_su_f <- ifelse((s$f_koe_t>0 & s$f_koe_t<8 & s$f_koe_u>=80 & s$f_koe_u<=100) | 
                     (s$f_koe_t>0 & s$f_koe_t<8  & s$f_koe_u>=50 & s$f_koe_u<80),
                       w.f,
                       0)