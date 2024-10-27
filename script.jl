function volatility(data) # receives a standard yahoo finance dataframe
    return sqrt.(log.(data[:,3]./data[:,5]) .* log.(data[:,3]./data[:,2]) + log.(data[:,4]./data[:,5]) .* log.(data[:,4]./data[:,2]))
end

