#dplyr / pracma �ٿ�

install.packages("dplyr") 
library(dplyr)

setwd("C:/Users/Oldcar/Desktop/2020�����׽�Ʈ �����ͺм��о�-ǻ�Ľ�����_������������_����������(.CSV)_����, ��Ʈ�� ����") # ���� ��ġ �Է�
hit <- read.csv("2020�����׽�Ʈ_������������_����������_��Ÿ��_2020.csv") #���� ���� �� ���� �Է�
head(hit) # ���� �Է��� �� �Ǿ����� Ȯ��
th <- hit%>%mutate(BA = (HIT+H2+H3+HR)/AB)%>%select(GDAY_DS,T_ID,BA) #(mutate�� �� �߰�)
# hit��� ������ mutate�Լ��� ���� _ ����� 
head(th)

hit_HH <- th%>%filter(T_ID=="HH") # 팀별 추출
hit_HT <- th%>%filter(T_ID=="HT")
hit_KT <- th%>%filter(T_ID=="KT")
hit_LG <- th%>%filter(T_ID=="LG")
hit_LT <- th%>%filter(T_ID=="LT")
hit_NC <- th%>%filter(T_ID=="NC")
hit_OB <- th%>%filter(T_ID=="OB")
hit_SK <- th%>%filter(T_ID=="SK")
hit_SS <- th%>%filter(T_ID=="SS")
hit_WO <- th%>%filter(T_ID=="WO")

install.packages("pracma")
library(pracma)

hit_HH[,3] <- round(movavg(hit_HH[,3],n=18),digits=2 ) #3열 이동평균하고 소숫점 2자리까지만 출력
hit_HT[,3] <- round(movavg(hit_HT[,3],n=18),digits=2 )
hit_KT[,3] <- round(movavg(hit_KT[,3],n=18),digits=2 )
hit_LG[,3] <- round(movavg(hit_LG[,3],n=18),digits=2 )
hit_LT[,3] <- round(movavg(hit_LT[,3],n=18),digits=2 )
hit_NC[,3] <- round(movavg(hit_NC[,3],n=18),digits=2 )
hit_OB[,3] <- round(movavg(hit_OB[,3],n=18),digits=2 )
hit_SK[,3] <- round(movavg(hit_SK[,3],n=18),digits=2 )
hit_SS[,3] <- round(movavg(hit_SS[,3],n=18),digits=2 )
hit_WO[,3] <- round(movavg(hit_WO[,3],n=18),digits=2 )


#엑셀 파일로 만들기.

write.csv(hit_HH,file="hit_HH.csv")
write.csv(hit_HT,file="hit_HT.csv")
write.csv(hit_KT,file="hit_KT.csv")
write.csv(hit_LG,file="hit_LG.csv")
write.csv(hit_LT,file="hit_LT.csv")
write.csv(hit_NC,file="hit_NC.csv")
write.csv(hit_OB,file="hit_OB.csv")
write.csv(hit_SK,file="hit_SK.csv")
write.csv(hit_SS,file="hit_SS.csv")
write.csv(hit_WO,file="hit_WO.csv")

