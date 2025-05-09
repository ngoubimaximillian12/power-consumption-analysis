Power Consumption Analysis
Overview
This repository contains an R script that performs an analysis on household power consumption data, with a focus on energy consumption patterns over time. The script loads data from the household_power_consumption.txt file, processes it, and generates four types of plots for visual representation of the data. The plots include:

Histogram of Global Active Power

Global Active Power over Time

Energy Sub Metering over Time

Multiple base plots for various power consumption metrics

The analysis focuses on data from two specific days: February 1, 2007, and February 2, 2007.

Project Structure
bash
Copy
Edit
├── README.md                       # Project overview and setup instructions
├── power_consumption_analysis.R     # Main R script for analysis
├── household_power_consumption.txt  # Raw data file
├── plot1.png                        # Histogram plot of Global Active Power
├── plot2.png                        # Global Active Power over Time plot
├── plot3.png                        # Energy Sub Metering over Time plot
└── plot4.png                        # Multiple base plots
Requirements
To run the R script and perform the analysis, you need the following dependencies:

R version 4.0 or higher

data.table package (installed automatically by the script)

Installing R
If you don’t have R installed, download it from CRAN.

Installing R Packages
If you don't have the required package data.table, it will be installed automatically when you run the script. However, you can manually install it using the following command in R:

r
Copy
Edit
install.packages("data.table")
Data Source
The data used for this analysis comes from the "Individual household electric power consumption" dataset from the UCI Machine Learning Repository. The dataset consists of power consumption measurements taken from a house over several days in 2007.

The dataset (household_power_consumption.txt) includes the following columns:

Date: Date in dd/mm/yyyy format

Time: Time in HH:mm:ss format

Global_active_power: Global active power (kilowatts)

Global_reactive_power: Global reactive power (kilovars)

Voltage: Voltage (volts)

Global_intensity: Global intensity (amps)

Sub_metering_1, Sub_metering_2, Sub_metering_3: Energy sub metering (watts)

File Format
The data file is a tab-separated text file (household_power_consumption.txt) with missing values represented by a "?" symbol.

How to Run the Analysis
Clone the Repository

To clone this repository, use the following command:

bash
Copy
Edit
git clone https://github.com/ngoubimaximillian12/power-consumption-analysis.git
Set the File Path

Ensure that the path to the data file household_power_consumption.txt is correctly set in the R script (power_consumption_analysis.R). By default, the path is set to ~/Week 1/household_power_consumption.txt. You may need to adjust the path to match where the file is located on your system.

Run the Script

Open RStudio or your preferred R environment, and run the power_consumption_analysis.R script. The script will:

Load the data

Convert the Date and Time columns to appropriate formats

Filter the data for February 1 and 2, 2007

Generate four plots:

Plot 1: Histogram of Global Active Power

Plot 2: Global Active Power over Time

Plot 3: Energy Sub Metering over Time

Plot 4: Multiple base plots combining power consumption metrics

The plots will be saved in the working directory as PNG files (plot1.png, plot2.png, plot3.png, plot4.png).

View Results

After running the script, you will find the generated plot images in your directory. Open them to analyze the power consumption data.

Example Output
plot1.png: A histogram displaying the distribution of global active power.

plot2.png: A time series line plot showing global active power over time.

plot3.png: A time series plot showing the energy sub-metering data for different devices.

plot4.png: A composite plot with multiple charts displaying power consumption, voltage, sub-metering data, and reactive power over time.

Contributing
We welcome contributions! If you'd like to contribute to this project:

Fork this repository.

Create a new branch.

Commit your changes.

Push to your forked repository.

Submit a pull request.

Please ensure your changes do not break the existing code or functionality.

License
This project is licensed under the MIT License.

