library(RODBC)

# platform report

p_data <- sqlQuery(channel, "select register_num,asset_sale_amt,first_trade_num from bi.bi_dds_main_plat_report_m")


odbcClose(channel)
