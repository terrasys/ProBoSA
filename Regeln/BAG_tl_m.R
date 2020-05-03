s$BAG_tl_m <- ifelse((s$m_koe_t>=25 & s$m_koe_t<45 & s$m_koe_u>=15 & s$m_koe_u<30) | 
                     (s$m_koe_t>=25 & s$m_koe_t<35 & s$m_koe_u>0 & s$m_koe_u<15) | 
                     (s$m_koe_t>=35 & s$m_koe_t<45 & s$m_koe_u>0 & s$m_koe_u<15),
                       w.m,
                       0)