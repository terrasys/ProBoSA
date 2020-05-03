s$BAG_ll_bs <- ifelse((s$bs_koe_t>=17 & s$bs_koe_t<25 & s$bs_koe_u>=40 & s$bs_koe_u<50) | 
                           (s$bs_koe_t>=17 & s$bs_koe_t<25 & s$bs_koe_u>=30 & s$bs_koe_u<40) | 
                           (s$bs_koe_t>=17 & s$bs_koe_t<25 & s$bs_koe_u>=15 & s$bs_koe_u<30) |
                           (s$bs_koe_t>=25 & s$bs_koe_t<35 & s$bs_koe_u>=30 & s$bs_koe_u<50),
                       w.bs,
                       0)