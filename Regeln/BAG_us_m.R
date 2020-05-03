s$BAG_us_m <- ifelse((s$m_koe_t>0 & s$m_koe_t<8 & s$m_koe_u>=25 & s$m_koe_u<40) | 
                           (s$m_koe_t>0 & s$m_koe_t<8  & s$m_koe_u>=40 & s$m_koe_u<50),
                       w.m,
                       0)