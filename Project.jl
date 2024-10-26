

data = CSV.read("C:\\Users\\Korisnik\\Documents\\GitHub\\Project-1\\BA_stock_prices.csv", DataFrame; header=true);
first(data, 5)
start_date = Date("2014-01-01")
end_date = Date("2024-12-31")
data = data[(data.Date .>= start_date) .& (data.Date .<= end_date), :]
size(data)

data = select(data, [1, 6])
#!rename column to adj_close - function rename won't work for me
describe(data."Adj Close")