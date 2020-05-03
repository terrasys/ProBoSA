s$BAG_tu_bs <- ifelse((s$bs_koe_t>=17  & s$bs_koe_t<25  & s$bs_koe_u>=65 & s$bs_koe_u<83) | 
                      (s$bs_koe_t>=17  & s$bs_koe_t<30  & s$bs_koe_u>=50 & s$bs_koe_u<65),
                       w.bs,
                       0)