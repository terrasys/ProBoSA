s$BAG_ss_gk <- ifelse(s$gk_koe_t<0 & s$gk_koe_t<5 & 
                           s$gk_koe_u>0 & s$gk_koe_u<10,
                         w.gk,
                         0)