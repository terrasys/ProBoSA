s$BAG_ll_m <- ifelse((s$m_koe_t>=17 & s$m_koe_t<25 & s$m_koe_u>=40 & s$m_koe_u<50) | 
                           (s$m_koe_t>=17 & s$m_koe_t<25 & s$m_koe_u>=30 & s$m_koe_u<40) | 
                           (s$m_koe_t>=17 & s$m_koe_t<25 & s$m_koe_u>=15 & s$m_koe_u<30) |
                           (s$m_koe_t>=25 & s$m_koe_t<35 & s$m_koe_u>=30 & s$m_koe_u<50),
                       w.m,
                       0)