s$BAHG_s_v <- ifelse((s$v_koe_t>0 & s$v_koe_t<5 & 
                        s$v_koe_u>0 & s$v_koe_u<10) | 
                       ((s$v_koe_t>0 & s$v_koe_t<5 & s$v_koe_u>=10 & s$v_koe_u<25) | 
                          (s$v_koe_t>=5 & s$v_koe_t<8  & s$v_koe_u>=10 & s$v_koe_u<25) | 
                          (s$v_koe_t>=8 & s$v_koe_t<12  & s$v_koe_u>=10 & s$v_koe_u<40) |
                          (s$v_koe_t>=5 & s$v_koe_t<17  & s$v_koe_u<10)) | 
                       ((s$v_koe_t>0 & s$v_koe_t<8 & s$v_koe_u>=25 & s$v_koe_u<40) | 
                          (s$v_koe_t>0 & s$v_koe_t<8  & s$v_koe_u>=40 & s$v_koe_u<50)) ,
                     w.v,
                     0)