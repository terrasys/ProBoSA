s$BAHG_u_bs <- ifelse((s$bs_koe_t>0 & s$bs_koe_t<8 & s$bs_koe_u>=80 & s$bs_koe_u<=100) | 
                           (s$bs_koe_t<0 & s$bs_koe_t<8  & s$bs_koe_u>=50 & s$bs_koe_u<80) |
                           (s$bs_koe_t>=8  & s$bs_koe_t<12  & s$bs_koe_u>=65 & s$bs_koe_u<92) | 
                           (s$bs_koe_t>=12 & s$bs_koe_t<17  & s$bs_koe_u>=65 & s$bs_koe_u<88) | 
                           (s$bs_koe_t>=8  & s$bs_koe_t<17  & s$bs_koe_u>=50 & s$bs_koe_u<65) |
                           (s$bs_koe_t>=17  & s$bs_koe_t<25  & s$bs_koe_u>=65 & s$bs_koe_u<83) | 
                           (s$bs_koe_t>=17  & s$bs_koe_t<30  & s$bs_koe_u>=50 & s$bs_koe_u<65),
                       w.bs,
                       0)