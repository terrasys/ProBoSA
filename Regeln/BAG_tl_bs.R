s$BAG_tl_bs <- ifelse((s$bs_koe_t>=25 & s$bs_koe_t<45 & s$bs_koe_u>=15 & s$bs_koe_u<30) | 
                      (s$bs_koe_t>=25 & s$bs_koe_t<35 & s$bs_koe_u>0   & s$bs_koe_u<15) | 
                      (s$bs_koe_t>=35 & s$bs_koe_t<45 & s$bs_koe_u>0   & s$bs_koe_u<15),
                       w.bs,
                       0)