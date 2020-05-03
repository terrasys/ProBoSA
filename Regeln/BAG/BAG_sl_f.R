s$BAG_sl_f <- ifelse((s$f_koe_t>=8 & s$f_koe_t<17 & s$f_koe_u>=40 & s$f_koe_u<50) | 
                           (s$f_koe_t>=12 & s$f_koe_t<17  & s$f_koe_u>=10 & s$f_koe_u<40) | 
                           (s$f_koe_t>=17 & s$f_koe_t<25 & s$f_koe_u>0 & s$f_koe_u<15),
                       w.f,
                       0)