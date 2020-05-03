s$BAG_us_bs <- ifelse((s$bs_koe_t>0 & s$bs_koe_t<8 & s$bs_koe_u>=25 & s$bs_koe_u<40) | 
                      (s$bs_koe_t>0 & s$bs_koe_t<8  & s$bs_koe_u>=40 & s$bs_koe_u<50),
                       w.bs,
                       0)