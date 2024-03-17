*** |  (C) 2008-2023 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

i21_trade_bal_reduction(t_all,k_trade)=f21_trade_bal_reduction(t_all,"easytrade","%c21_trade_liberalization%");
i21_trade_bal_reduction(t_all,k_hardtrade21)=f21_trade_bal_reduction(t_all,"hardtrade","%c21_trade_liberalization%");

i21_trade_margin(h,k_trade) = f21_trade_margin(h,k_trade);

if ((s21_trade_tariff=1),
    i21_trade_tariff(h,k_trade) = f21_trade_tariff(h,k_trade);
elseif (s21_trade_tariff=0),
    i21_trade_tariff(h,k_trade) = 0;
);


m_linear_time_interpol(p21_wood_trade_glo,s21_start_year,s21_target_year,s21_start_value,s21_target_value_wood);
m_linear_time_interpol(p21_woodfuel_trade_glo,s21_start_year,s21_target_year,s21_start_value,s21_target_value_woodfuel);

p21_timber_trade_glo(t_all,"wood") = p21_wood_trade_glo(t_all);
p21_timber_trade_glo(t_all,"woodfuel") = p21_woodfuel_trade_glo(t_all);
