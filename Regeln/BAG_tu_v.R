s$BAG_tu_v <- ifelse((s$v_koe_t>=17  & s$v_koe_t<25  & s$v_koe_u>=65 & s$v_koe_u<83) | 
                     (s$v_koe_t>=17  & s$v_koe_t<30  & s$v_koe_u>=50 & s$v_koe_u<65),
                       w.v,
                       0)