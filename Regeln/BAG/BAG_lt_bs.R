s$BAG_lt_bs <- ifelse((s$bs_koe_t>=45 & s$bs_koe_t<65  & s$bs_koe_u>0 & s$bs_koe_u<15) | 
                           (s$bs_koe_t>=45 & s$bs_koe_t<65  & s$bs_koe_u>=15 & s$bs_koe_u<30) | 
                           (s$bs_koe_t>=45 & s$bs_koe_t<65  & s$bs_koe_u>=30 & s$bs_koe_u<55) |
                           (s$bs_koe_t>=65 & s$bs_koe_t<=100 & s$bs_koe_u<30),
                       w.bs,
                       0)