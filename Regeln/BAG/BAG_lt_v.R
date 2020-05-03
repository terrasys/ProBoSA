s$BAG_lt_v <- ifelse((s$v_koe_t>=45 & s$v_koe_t<65  & s$v_koe_u>0 & s$v_koe_u<15) | 
                           (s$v_koe_t>=45 & s$v_koe_t<65  & s$v_koe_u>=15 & s$v_koe_u<30) | 
                           (s$v_koe_t>=45 & s$v_koe_t<65  & s$v_koe_u>=30 & s$v_koe_u<55) |
                           (s$v_koe_t>=65 & s$v_koe_t<=100 & s$v_koe_u<30),
                       w.v,
                       0)