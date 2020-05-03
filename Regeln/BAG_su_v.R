s$BAG_su_v <- ifelse((s$v_koe_t>0 & s$v_koe_t<8 & s$v_koe_u>=80 & s$v_koe_u<=100) | 
                     (s$v_koe_t>0 & s$v_koe_t<8 & s$v_koe_u>=50 & s$v_koe_u<80),
                       w.v,
                       0)