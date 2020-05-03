s$BAG_tu_m <- ifelse((s$m_koe_t>=17  & s$m_koe_t<25  & s$m_koe_u>=65 & s$m_koe_u<83) | 
                     (s$m_koe_t>=17  & s$m_koe_t<30  & s$m_koe_u>=50 & s$m_koe_u<65),
                      w.m,
                      0)