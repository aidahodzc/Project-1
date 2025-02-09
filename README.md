# Financial Econometrics II

## Project 1: Financial Data Analysis & Forecasting  

## Overview  
This project focuses on a financial analysis of Ford Motor Co. stock prices using Julia. Project explores Ford stock prices using YFinance, applies chosen econometric models, and compares traditional and machine learning-based estimation techniques.

## Project Setup  

### Part A: Julia Setup & Financial Data Analysis  
- **Setup**: Create a project folder, initialize Julia (`Pkg.activate(".")`), and manage dependencies.  
- **Data Acquisition**: Use `MarketData`, `Quandl`, or `YFinance` to download asset data.  
- **EDA**: Perform summary statistics and visualizations with `Statistics`, `DataFrames`, and `StatsPlots`.  
- **ARCH/GARCH Modeling**: Use `ARCHModels.jl` to model and forecast volatility with rolling/static methods.  

### Part B: OLS vs. ML Estimation of HAR Model  
- **Comparison**: Estimate the HAR model using `Optim.jl` vs. `Flux.jl`. 
- **Analysis**: Visualize coefficients via scatter plots, histograms, and Q-Q plots.  
- **Regularization & Activations**: Experiment with neural network activation functions and regularization.  

## Submission & Evaluation  
- Submit the project folder with results and necessary scripts.  
- Focus on **clarity** and **interpretation** rather than code.  
- Present findings effectively during evaluation.  

## Resources  
- [Julia Environments](https://pkgdocs.julialang.org/v1/environments/)  
- [ARCHModels.jl](https://juliastats.org/ARCHModels.jl/latest/)  
- [Flux.jl](https://fluxml.ai/Flux.jl/stable/)  
- [Optim.jl](https://julianlsolvers.github.io/Optim.jl/stable/)  
