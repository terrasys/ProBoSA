s$BAG_lu_v <- ifelse((s$v_koe_t>=8  & s$v_koe_t<12  & s$v_koe_u>=65 & s$v_koe_u<92) | 
                           (s$v_koe_t>=12 & s$v_koe_t<17  & s$v_koe_u>=65 & s$v_koe_u<88) | 
                           (s$v_koe_t>=8  & s$v_koe_t<17  & s$v_koe_u>=50 & s$v_koe_u<65),
                       w.v,
                       0)