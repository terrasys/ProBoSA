s$BAHG_t_v <- ifelse((s$v_koe_t>=35 & s$v_koe_t<45  & s$v_koe_u>=30 & s$v_koe_u<50) | 
                           (s$v_koe_t>=30 & s$v_koe_t<45  & s$v_koe_u>=50 & s$v_koe_u<65) | 
                           (s$v_koe_t>=25 & s$v_koe_t<35  & s$v_koe_u>=65 & s$v_koe_u<75) |
                           (s$v_koe_t>=45 & s$v_koe_t<65  & s$v_koe_u>0 & s$v_koe_u<15) | 
                           (s$v_koe_t>=45 & s$v_koe_t<65  & s$v_koe_u>=15 & s$v_koe_u<30) | 
                           (s$v_koe_t>=45 & s$v_koe_t<65  & s$v_koe_u>=30 & s$v_koe_u<55) |
                           (s$v_koe_t>=65 & s$v_koe_t<=100 & s$v_koe_u<30), 
                       w.v,
                       0)