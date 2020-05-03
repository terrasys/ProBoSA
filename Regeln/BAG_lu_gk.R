s$BAG_lu_gk <- ifelse((s$gk_koe_t>=8  & s$gk_koe_t<12  & s$gk_koe_u>=65 & s$gk_koe_u<92) | 
                           (s$gk_koe_t>=12 & s$gk_koe_t<17  & s$gk_koe_u>=65 & s$gk_koe_u<88) | 
                           (s$gk_koe_t>=8  & s$gk_koe_t<17  & s$gk_koe_u>=50 & s$gk_koe_u<65),
                       w.gk,
                       0)