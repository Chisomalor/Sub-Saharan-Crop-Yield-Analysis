
# Fetch a clean dataset tracking agricultural land and crop metrics
agri_data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-01/key_crop_yields.csv")

head(agri_data)
dim(agri_data)

# Extract only rows where the country (Entity) is Nigeria
nigeria_data <- agri_data[agri_data$Entity == "Nigeria", ]

# Check the new dimensions of our filtered data
dim(nigeria_data)

# Draw a line plot showing Nigeria's Maize yield over the years
plot(nigeria_data$Year, nigeria_data$Maize..tonnes.per.hectare., 
     type = "b", 
     pch = 19, 
     col = "darkgreen",
     main = "Historical Maize Yield Trend in Nigeria",
     xlab = "Year", 
     ylab = "Yield (Tonnes per Hectare)")

# Test if the Maize and Rice correlation is statistically significant
cor.test(nigeria_data$Maize..tonnes.per.hectare., nigeria_data$Rice..tonnes.per.hectare.)

# 1. Calculate the average maize yield in Nigeria
mean(nigeria_data$Maize..tonnes.per.hectare.)

# 2. Find the highest maize yield achieved
max(nigeria_data$Maize..tonnes.per.hectare.)

# Calculate the standard deviation (spread) of Nigeria's maize yield
sd(nigeria_data$Maize..tonnes.per.hectare.)

# Calculate the correlation between Maize and Rice yields
cor(nigeria_data$Maize..tonnes.per.hectare., nigeria_data$Rice..tonnes.per.hectare.)
# Draw a scatter plot comparing Maize vs Rice yields
plot(nigeria_data$Maize..tonnes.per.hectare., nigeria_data$Rice..tonnes.per.hectare.,
     main = "Maize vs. Rice Yield Correlation in Nigeria",
     xlab = "Maize Yield (Tonnes/Hectare)",
     ylab = "Rice Yield (Tonnes/Hectare)",
     pch = 16, 
     col = "darkblue")

install.packages("ggplot2")


# Activate the package (it's already pre-installed in your cloud workspace!)
library(ggplot2)
# Build a high-end journal plot
ggplot(data = nigeria_data, aes(x = Maize..tonnes.per.hectare., y = Rice..tonnes.per.hectare.)) +
  geom_point(aes(color = Year), size = 3) +
  geom_smooth(method = "lm", col = "red", se = FALSE) +
  labs(title = "Decadal Shift in Nigerian Crop Yields",
       x = "Maize Yield (Tonnes / Hectare)",
       y = "Rice Yield (Tonnes / Hectare)") +
  theme_minimal()



# Create mock data for a bean trial with 3 varieties across 4 field blocks
rcbd_data <- data.frame(
  Variety = rep(c("Var_A", "Var_B", "Var_C"), each = 4),
  Block = rep(c("Block1", "Block2", "Block3", "Block4"), times = 3),
  Yield = c(2.5, 2.7, 3.1, 2.9,  3.1, 3.4, 3.8, 3.5,  1.8, 2.0, 2.2, 2.1)
)

# Run an RCBD ANOVA (Notice we add + Block to the formula!)
rcbd_model <- aov(Yield ~ Variety + Block, data = rcbd_data)

# Print the full ANOVA summary table
summary(rcbd_model)

# Build a regression model: Can 'Year' predict 'Maize yield'?
maize_regression <- lm(Maize..tonnes.per.hectare. ~ Year, data = nigeria_data)

# Print the complete regression summary table
summary(maize_regression)


# Compare the means of Maize vs Rice yields using a Two-Sample T-test
t.test(nigeria_data$Maize..tonnes.per.hectare., nigeria_data$Rice..tonnes.per.hectare.)





