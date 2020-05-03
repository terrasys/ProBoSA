s$BAG_ut_bs <- ifelse((s$bs_koe_t>=35 & s$bs_koe_t<45  & s$bs_koe_u>=30 & s$bs_koe_u<50) | 
                           (s$bs_koe_t>=30 & s$bs_koe_t<45  & s$bs_koe_u>=50 & s$bs_koe_u<65) | 
                           (s$bs_koe_t>=25 & s$bs_koe_t<35  & s$bs_koe_u>=65 & s$bs_koe_u<75),
                       w.bs,
                       0)