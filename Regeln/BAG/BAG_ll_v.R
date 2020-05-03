s$BAG_ll_v <- ifelse((s$v_koe_t>=17 & s$v_koe_t<25 & s$v_koe_u>=40 & s$v_koe_u<50) | 
                           (s$v_koe_t>=17 & s$v_koe_t<25 & s$v_koe_u>=30 & s$v_koe_u<40) | 
                           (s$v_koe_t>=17 & s$v_koe_t<25 & s$v_koe_u>=15 & s$v_koe_u<30) |
                           (s$v_koe_t>=25 & s$v_koe_t<35 & s$v_koe_u>=30 & s$v_koe_u<50),
                       w.v,
                       0)