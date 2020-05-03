s$BAG_sl_v <- ifelse((s$v_koe_t>=8 & s$v_koe_t<17 & s$v_koe_u>=40 & s$v_koe_u<50) | 
                           (s$v_koe_t>=12 & s$v_koe_t<17  & s$v_koe_u>=10 & s$v_koe_u<40) | 
                           (s$v_koe_t>=17 & s$v_koe_t<25  & s$v_koe_u<0 & s$v_koe_u<15),
                       w.v,
                       0)