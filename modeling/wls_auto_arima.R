library(forecast)
library(TTR)
library(pracma)
library(dplyr)

setwd('F:/BigContest_NOVUS/NOVUS_Futures/Preprocessing/data')

"""
--승률 ARIMA--

한화 0,1,0
기아 0,1,1 
KT 0,1,0 
엘지 2,0,0 
롯데 0,1,0
NC 0,1,0
두산 0,0,1 
SK 0,1,1 
샘숭 2,1,0 
키움 0,1,1
"""



# 한화 3,0,2
pit_hh <- read.csv('./pit/pit_HH.csv')
head(pit_hh)
hh_wls <- pit_hh[,4]
head(hh_wls)
auto.arima(hh_wls)
head(hh_wls)

# 기아 0,1,0  
pit_ht <- read.csv('./pit/pit_HT.csv')
ht_wls <- pit_ht[,4]
head(ht_wls)
auto.arima(ht_wls)

# 크트 0,1,0 
pit_kt <- read.csv('./pit/pit_KT.csv')
kt_wls <- pit_kt[,4]
head(kt_wls)
auto.arima(kt_wls)

# 엘지 2,0,0 
pit_lg <- read.csv('./pit/pit_LG.csv')
lg_wls <- pit_lg[,4]
head(lg_wls)
auto.arima(lg_wls)

# 롯데 1,0,3
pit_lt <- read.csv('./pit/pit_LT.csv')
lt_wls <- pit_lt[,4]
head(lt_wls)
auto.arima(lt_wls)

# 엔씨 0,1,0
pit_nc <- read.csv('./pit/pit_NC.csv')
nc_wls <- pit_nc[,4]
head(nc_wls)
auto.arima(nc_wls)

# 두산 4,1,1 
pit_ob <- read.csv('./pit/pit_OB.csv')
ob_wls <- pit_ob[,4]
head(ob_wls)
auto.arima(ob_wls)

# 스크 0,1,0 
pit_sk <- read.csv('./pit/pit_SK.csv')
sk_wls <- pit_sk[,4]
head(sk_wls)
auto.arima(sk_wls)

# 샘숭 0,1,0 
pit_ss <- read.csv('./pit/pit_SS.csv')
ss_wls <- pit_ss[,4]
head(ss_wls)
auto.arima(ss_wls)

# 키움 1,0,0 
pit_wo <- read.csv('./pit/pit_WO.csv')
wo_wls <- pit_wo[,4]
head(wo_wls)
auto.arima(wo_wls)

"""
-- 자책점 ARIMA --
한화 1,2,1
기아 1,2,1
kt 0,1,0
lg 1,1,0
롯데 1,0,0
nc 0,2,1
두산 2,1,1
sk 1,0,1 
삼성 1,0,0 
키움 0,1,1

"""
# 한화 2,0,1
hh_er <- pit_hh[,3]
hh_er
auto.arima(hh_er)

# 기아 1,1,2
ht_er <- pit_ht[,3]
ht_er
head(pit_ht)
pit_ht$ER <- round(movavg(pit_ht$ER,n=18),digits=2)
ht_er <- pit_ht$ER
auto.arima(ht_er)

# kt 0,1,0
kt_er <- pit_kt[,3]
head(kt_er)
auto.arima(kt_er)

# lg 1,0,2
lg_er <- pit_lg[,3]
head(lg_er)
auto.arima(lg_er)

# 롯데 1,0,0
lt_er <- pit_lt[,3]
head(lt_er)
auto.arima(lt_er)

# nc 2,1,0
nc_er <- pit_nc[,3]
head(nc_er)
auto.arima(nc_er)

# 두산 2,1,1
ob_er <- pit_ob[,3]
head(ob_er)
auto.arima(ob_er)

# sk 0,1,1 
sk_er <- pit_sk[,3]
head(sk_er)
auto.arima(sk_er)

# 삼성 1,0,0 
ss_er <- pit_ss[,3]
head(ss_er)
auto.arima(ss_er)

# 키움 0,1,1
wo_er <- pit_wo[,5]
head(wo_er)
auto.arima(wo_er)
