s$BAG_ut_m <- ifelse((s$m_koe_t>=35 & s$m_koe_t<45  & s$m_koe_u>=30 & s$m_koe_u<50) | 
                           (s$m_koe_t>=30 & s$m_koe_t<45  & s$m_koe_u>=50 & s$m_koe_u<65) | 
                           (s$m_koe_t>=25 & s$m_koe_t<35  & s$m_koe_u>=65 & s$m_koe_u<75),
                       w.m,
                       0)