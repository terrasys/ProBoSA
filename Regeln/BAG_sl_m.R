s$BAG_sl_m <- ifelse((s$m_koe_t>=8 & s$m_koe_t<17 & s$m_koe_u>=40 & s$m_koe_u<50) | 
                           (s$m_koe_t>=12 & s$m_koe_t<17  & s$m_koe_u>=10 & s$m_koe_u<40) | 
                           (s$m_koe_t>=17 & s$m_koe_t<25  & s$m_koe_u>0 & s$m_koe_u<15),
                       w.m,
                       0)