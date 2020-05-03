s$BAG_su_m <- ifelse((s$m_koe_t>0 & s$m_koe_t<8 & s$m_koe_u>=80 & s$m_koe_u<=100) | 
                     (s$m_koe_t>0 & s$m_koe_t<8 & s$m_koe_u>=50 & s$m_koe_u<80),
                       w.m,
                       0)