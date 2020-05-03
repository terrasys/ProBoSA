s$BAHG_u_v <- ifelse((s$v_koe_t>0 & s$v_koe_t<8 & s$v_koe_u>=80 & s$v_koe_u<=100) | 
                           (s$v_koe_t<0 & s$v_koe_t<8  & s$v_koe_u>=50 & s$v_koe_u<80) |
                           (s$v_koe_t>=8  & s$v_koe_t<12  & s$v_koe_u>=65 & s$v_koe_u<92) | 
                           (s$v_koe_t>=12 & s$v_koe_t<17  & s$v_koe_u>=65 & s$v_koe_u<88) | 
                           (s$v_koe_t>=8  & s$v_koe_t<17  & s$v_koe_u>=50 & s$v_koe_u<65) |
                           (s$v_koe_t>=17  & s$v_koe_t<25  & s$v_koe_u>=65 & s$v_koe_u<83) | 
                           (s$v_koe_t>=17  & s$v_koe_t<30  & s$v_koe_u>=50 & s$v_koe_u<65),
                       w.v,
                       0)