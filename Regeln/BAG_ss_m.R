s$BAG_ss_m <- ifelse((s$m_koe_t<0 & s$m_koe_t<5 & 
                      s$m_koe_u>0 & s$m_koe_u<10),
                         w.m,
                         0)