##########################################
########### Autor: oramonviana ###########
####### Testando o pacote Radiant ########
############## Date: Mar/22 ##############
##########################################


# Instalação e library dos Pacotes Radiant e timetk:
#install.packages("radiant", repos = "https://radiant-rstats.github.io/minicran/", 
#                 type = "binary")
#install.packages("timetk")
library("radiant")
library("timetk")
library("tidyverse")

# Carregando dataset:
US_Regional_Sales_Data <- readxl::read_xlsx("data//US_Regional_Sales_Data.xlsx")
US_Regional_Sales_Data %>% glimpse()

# Alterando nome das colunas:
US_Regional_Sales_Data <- rename(US_Regional_Sales_Data, 
                                 "Sales_Channel" = "Sales Channel",
                                 "SalesTeam_ID" = "_SalesTeamID",
                                 "Customer_ID" = "_CustomerID",
                                 "Store_ID" = "_StoreID",
                                 "Product_ID" = "_ProductID",
                                 "Store_ID" = "_StoreID",
                                 "Order_Quantity" = "Order Quantity",
                                 "Discount_Applied" = "Discount Applied",
                                 "Unit_Price" = "Unit Price",
                                 "Unit_Codt" = "Unit Cost"
                                 )

# Rodando Radiant:
radiant()


