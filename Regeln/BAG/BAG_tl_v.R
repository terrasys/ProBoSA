s$BAG_tl_v <- ifelse((s$v_koe_t>=25 & s$v_koe_t<45 & s$v_koe_u>=15 & s$v_koe_u<30) | 
                     (s$v_koe_t>=25 & s$v_koe_t<35 & s$v_koe_u>0 & s$v_koe_u<15) | 
                     (s$v_koe_t>=35 & s$v_koe_t<45 & s$v_koe_u>0 & s$v_koe_u<15),
                       w.v,
                       0)