library(ggplot2)
library(dplyr)

epl = read.csv("E://Training data//PGDS- EDA//penalty_data.csv")

# Problem Statement: 

# 1st Semifinal Match of EPL is between Arsenal vs Liverpool. 
# Let's assume the scores are leveled at 1-1 at the end of allotted 90 minutes. 
# Even the extra half an hour could not conclude the match with the scoreboard still reading 1-1. 
# This led the match towards penalty shoot-outs to break the tie. 
# After the Liverpool player scored the goal in the penultimate penalty kick, Liverpool are 3-2 ahead in the penalty shootouts.
# Arsenal still has a penalty kick left  and the opportunity to extend the tie further - but if misses Arsenal's campaign will be over in the competition. 
# What should Arsenal do to extend the tie?


# Check few things

# Contingency table from various angle

source("http://pcwww.liv.ac.uk/~william/R/crosstab.r")

# Foot wise scored and missed

summary(epl)


crosstab(epl, row.vars = "Foot", col.vars = "Scored", type = "r") # This will give proportion row-wise

crosstab(epl, row.vars = c("Foot", "Kick_Direction"), col.vars = c("Scored", "Keeper_Direction"), type = "r")






















