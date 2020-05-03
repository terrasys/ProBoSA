s$BAG_su_bs <- ifelse((s$bs_koe_t>0 & s$bs_koe_t<8 & s$bs_koe_u>=80 & s$bs_koe_u<=100) | 
                      (s$bs_koe_t<0 & s$bs_koe_t<8  & s$bs_koe_u>=50 & s$bs_koe_u<80),
                       w.bs,
                       0)