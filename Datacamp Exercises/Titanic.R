#Instructions
#Copy and paste the R code from the Titanic exercise in the ggplot2 tutorial into a file Titanic.R
#Check in Titanic.R into your github repository and submit the link

# titanic is avaliable in your workspace
titanic <- read.csv("~/Documents/Springboard/Data Wrangling Exercise 2/titanic_clean.csv")
View(titanic)
# Check out the structure of titanic
str(titanic)

#Remove NAs from factor(pclass)
titanic <- subset(titanic,!(is.na(titanic["pclass"])))

# Use ggplot() for the first instruction
ggplot(titanic, aes(x=factor(pclass), fill=factor(sex))) + geom_bar(position="dodge")

# Use ggplot() for the second instruction
# Survive / not survive is better represented using bar plot
ggplot(titanic, aes(x=factor(pclass), fill=factor(sex))) + 
  geom_bar(position="dodge") +
  facet_grid(". ~ survived")

# Use ggplot() for the second instruction
# Survive / not survive is better represented using bar plot
ggplot(titanic, aes(x=factor(survived), fill=factor(sex))) + 
  geom_bar(position="dodge")

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Use ggplot() for the last instruction. 
#Age is continuous so it's good to represent as scatter or box plot
ggplot(titanic, aes(x=factor(pclass), y=age, col=factor(sex))) + 
  geom_jitter(size=2, alpha=0.5, position=posn.j) +
  facet_grid(". ~ survived")

# Boxplot
ggplot(titanic, aes(x=factor(survived), y=age, col=factor(sex))) + 
  geom_boxplot() + 
  facet_grid(". ~ pclass")