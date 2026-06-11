# Create the manure column (our treatment)
manure <- c("Poultry", "Poultry", "Poultry", "Pig", "Pig", "Pig", "Control", "Control", "Control")

# Create the plant height column (our results in cm)
height <- c(50, 52, 48, 47, 49, 48, 21, 19, 20)

# Combine them into a spreadsheet called 'unn_trial'
unn_trial <- data.frame(manure, height)

print(unn_trial)

# Run the ANOVA and save it into a variable called 'manure_analysis'
manure_analysis <- aov(height ~ manure, data = unn_trial)
# Ask R to show us the statistical summary table
summary(manure_analysis)


# Install the agricultural statistics package (only need to do this once)
install.packages("agricolae")

# Load the package into your current session
library(agricolae)


# Run Duncan's test on our 'manure_analysis' model
duncan_results <- duncan.test(manure_analysis, "manure", group = TRUE)

# Print the results to see the letters!
print(duncan_results$groups)


# Draw a boxplot: Height on the Y-axis, Manure on the X-axis
boxplot(height ~ manure, data = unn_trial,
col = c("tomato", "gold", "springgreen"),
main = "Effect of Manure on Plant Height",
xlab = "Manure Type",
ylab = "Plant Height (cm)")