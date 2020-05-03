s$BAHG_u_f <- ifelse((s$f_koe_t>0 & s$f_koe_t<8 & s$f_koe_u>=80 & s$f_koe_u<=100) | 
                           (s$f_koe_t<0 & s$f_koe_t<8  & s$f_koe_u>=50 & s$f_koe_u<80) |
                           (s$f_koe_t>=8  & s$f_koe_t<12  & s$f_koe_u>=65 & s$f_koe_u<92) | 
                           (s$f_koe_t>=12 & s$f_koe_t<17  & s$f_koe_u>=65 & s$f_koe_u<88) | 
                           (s$f_koe_t>=8  & s$f_koe_t<17  & s$f_koe_u>=50 & s$f_koe_u<65) |
                           (s$f_koe_t>=17  & s$f_koe_t<25  & s$f_koe_u>=65 & s$f_koe_u<83) | 
                           (s$f_koe_t>=17  & s$f_koe_t<30  & s$f_koe_u>=50 & s$f_koe_u<65),
                       w.f,
                       0)