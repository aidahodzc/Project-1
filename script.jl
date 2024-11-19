#functions that should be loaded into the jupyter notebook

#Part a

#Estimating volatility with 2 different measures: Rogers-Satchell volatility and Rolling Volatility.

function rogers_satchell(data) # receives a standard yahoo finance dataframe
    return sqrt.(log.(data[:,3]./data[:,5]) .* log.(data[:,3]./data[:,2]) + log.(data[:,4]./data[:,5]) .* log.(data[:,4]./data[:,2]))
end


function roll_volatility(data, window_size)
    log_ret = diff(log.(data[:,6]))
    w = window_size
    roll_vol = Float64[]
    # Calculate rolling volatility
    for i in 1:(length(log_ret) - w + 1)
    window_data = log_ret[i:(i + w - 1)]
    window_volatility = std(window_data)
    push!(roll_vol, window_volatility)
    end
    return roll_vol
end


function HAR_regressors(data0)

    RVd = data0[22:end-1] # days
    RVw = zeros(length(RVd)) # weeks
    for i in 22:(length(data0)-1)
       temp = 0
       for h in 0:4
           temp = temp + data0[i-h]
       end
       RVw[i-21]= temp / 5
    end
    
    RVm = zeros(length(RVd)) # months
    for i in 22:(length(data0)-1) 
       temp = 0
       for h in 0:21
           temp = temp + data0[i-h]
       end
       RVm[i-21] = temp / 22;
    end

    return [RVd RVw RVm]
end


#Part D

#Black-Scholes formula for European call options
function black_scholes_call(S, K, T, q, r, σ)
    d1 = (log(S / K) + (r - q + 0.5 * σ^2) * T) / (σ * sqrt(T))
    d2 = d1 - σ * sqrt(T)
    return S * exp(-q * T) * cdf(Normal(0, 1), d1) - K * exp(-r * T) * cdf(Normal(0, 1), d2)
end