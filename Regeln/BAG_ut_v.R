s$BAG_ut_v <- ifelse((s$v_koe_t>=35 & s$v_koe_t<45  & s$v_koe_u>=30 & s$v_koe_u<50) | 
                     (s$v_koe_t>=30 & s$v_koe_t<45  & s$v_koe_u>=50 & s$v_koe_u<65) | 
                     (s$v_koe_t>=25 & s$v_koe_t<35  & s$v_koe_u>=65 & s$v_koe_u<75),
                       w.v,
                       0)