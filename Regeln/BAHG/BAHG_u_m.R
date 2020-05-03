s$BAHG_u_m <- ifelse((s$m_koe_t>0 & s$m_koe_t<8 & s$m_koe_u>=80 & s$m_koe_u<=100) | 
                           (s$m_koe_t<0 & s$m_koe_t<8  & s$m_koe_u>=50 & s$m_koe_u<80) |
                           (s$m_koe_t>=8  & s$m_koe_t<12  & s$m_koe_u>=65 & s$m_koe_u<92) | 
                           (s$m_koe_t>=12 & s$m_koe_t<17  & s$m_koe_u>=65 & s$m_koe_u<88) | 
                           (s$m_koe_t>=8  & s$m_koe_t<17  & s$m_koe_u>=50 & s$m_koe_u<65) |
                           (s$m_koe_t>=17  & s$m_koe_t<25  & s$m_koe_u>=65 & s$m_koe_u<83) | 
                           (s$m_koe_t>=17  & s$m_koe_t<30  & s$m_koe_u>=50 & s$m_koe_u<65),
                       w.m,
                       0)