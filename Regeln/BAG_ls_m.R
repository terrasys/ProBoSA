s$BAG_ls_m <- ifelse((s$m_koe_t>0 & s$m_koe_t<5 & s$m_koe_u>=10 & s$m_koe_u<25) | 
                           (s$m_koe_t>=5 & s$m_koe_t<8  & s$m_koe_u>=10 & s$m_koe_u<25) | 
                           (s$m_koe_t>=8 & s$m_koe_t<12  & s$m_koe_u>=10 & s$m_koe_u<40) |
                           (s$m_koe_t>=5 & s$m_koe_t<17  & s$m_koe_u<10),
                       w.m,
                       0)