s$BAG_lu_m <- ifelse((s$m_koe_t>=8  & s$m_koe_t<12  & s$m_koe_u>=65 & s$m_koe_u<92) | 
                           (s$m_koe_t>=12 & s$m_koe_t<17  & s$m_koe_u>=65 & s$m_koe_u<88) | 
                           (s$m_koe_t>=8  & s$m_koe_t<17  & s$m_koe_u>=50 & s$m_koe_u<65),
                       w.m,
                       0)