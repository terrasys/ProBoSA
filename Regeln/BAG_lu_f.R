s$BAG_lu_f <- ifelse((s$f_koe_t>=8  & s$f_koe_t<12  & s$f_koe_u>=65 & s$f_koe_u<92) | 
                           (s$f_koe_t>=12 & s$f_koe_t<17  & s$f_koe_u>=65 & s$f_koe_u<88) | 
                           (s$f_koe_t>=8  & s$f_koe_t<17  & s$f_koe_u>=50 & s$f_koe_u<65),
                       w.f,
                       0)