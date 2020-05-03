s$BAG_lt_m <- ifelse((s$m_koe_t>=45 & s$m_koe_t<65  & s$m_koe_u>0 & s$m_koe_u<15) | 
                           (s$m_koe_t>=45 & s$m_koe_t<65  & s$m_koe_u>=15 & s$m_koe_u<30) | 
                           (s$m_koe_t>=45 & s$m_koe_t<65  & s$m_koe_u>=30 & s$m_koe_u<55) |
                           (s$m_koe_t>=65 & s$m_koe_t<=100 & s$m_koe_u<30),
                       w.m,
                       0)