s$BAG_tu_f <- ifelse((s$f_koe_t>=17  & s$f_koe_t<25  & s$f_koe_u>=65 & s$f_koe_u<83) | 
                     (s$f_koe_t>=17  & s$f_koe_t<30  & s$f_koe_u>=50 & s$f_koe_u<65),
                       w.f,
                       0)