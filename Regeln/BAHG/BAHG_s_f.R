s$BAHG_s_f <- ifelse((s$f_koe_t>0 & s$f_koe_t<5 & 
                         s$f_koe_u>0 & s$f_koe_u<10) | 
                        ((s$f_koe_t>0 & s$f_koe_t<5 & s$f_koe_u>=10 & s$f_koe_u<25) | 
                           (s$f_koe_t>=5 & s$f_koe_t<8  & s$f_koe_u>=10 & s$f_koe_u<25) | 
                           (s$f_koe_t>=8 & s$f_koe_t<12  & s$f_koe_u>=10 & s$f_koe_u<40) |
                           (s$f_koe_t>=5 & s$f_koe_t<17  & s$f_koe_u<10)) | 
                        ((s$f_koe_t>0 & s$f_koe_t<8 & s$f_koe_u>=25 & s$f_koe_u<40) | 
                           (s$f_koe_t>0 & s$f_koe_t<8  & s$f_koe_u>=40 & s$f_koe_u<50)) ,
                      w.f,
                      0)