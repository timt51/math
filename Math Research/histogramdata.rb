data = {43=>221, 47=>191, 53=>164, 61=>135, 71=>114, 41=>240, 83=>96, 97=>80, 113=>66, 131=>60, 151=>47, 173=>37, 197=>34, 223=>30, 163=>23, 167=>43, 251=>25, 179=>37, 199=>32, 281=>23, 313=>20, 227=>30, 347=>19, 263=>24, 383=>14, 421=>14, 307=>22, 461=>14, 367=>14, 373=>17, 379=>20, 503=>12, 397=>15, 359=>18, 409=>19, 547=>12, 439=>15, 457=>16, 593=>11, 419=>15, 499=>15, 641=>8, 523=>12, 691=>11, 487=>15, 577=>10, 743=>8, 607=>12, 653=>9, 797=>6, 661=>8, 563=>11, 677=>11, 701=>9, 853=>7, 673=>9, 733=>6, 911=>7, 709=>10, 647=>8, 773=>9, 971=>4, 821=>5, 787=>7, 1033=>4, 877=>7, 739=>7, 829=>7, 1097=>6, 941=>6, 1163=>5, 919=>7, 1021=>6, 1031=>6, 1013=>7, 1231=>5, 1061=>3, 967=>8, 1091=>7, 1301=>4, 1093=>6, 1151=>6, 947=>5, 1373=>4, 1069=>6, 1019=>6, 1201=>4, 1039=>5, 1049=>4, 1181=>6, 1447=>5, 1291=>5, 1109=>5, 1523=>4, 1129=>5, 1063=>8, 1277=>4, 1361=>5, 1471=>5, 1381=>4, 1229=>4, 1483=>5, 1297=>3, 1259=>5, 1481=>5, 1531=>3, 1187=>3, 1567=>4, 1123=>4, 1493=>5, 1571=>4, 1847=>3, 1663=>4, 1319=>3, 1399=>2, 1489=>4, 1723=>2, 1237=>5, 839=>6, 2111=>3, 1627=>3, 1459=>3, 1867=>3, 1741=>3, 2203=>3, 1619=>3, 1951=>2, 2003=>3, 2017=>2, 1439=>4, 1669=>2, 2297=>2, 1423=>3, 2087=>2, 1607=>4, 2129=>3, 2143=>3, 2141=>3, 1997=>3, 2269=>3, 2039=>2, 2053=>2, 2591=>1, 1889=>4, 2339=>1, 1949=>3, 2693=>1, 2089=>2, 2179=>3, 1699=>1, 1613=>2, 2207=>1, 2797=>1, 1999=>3, 2027=>3, 2333=>2, 2617=>2, 2069=>2, 2903=>1, 2633=>1, 2647=>1, 3011=>1, 2729=>1, 1721=>3, 2417=>1, 2347=>2, 2777=>1, 2099=>2, 2459=>2, 1601=>3, 2437=>2, 1877=>2, 2741=>1, 1831=>2, 2927=>1, 2677=>1, 3347=>1, 3049=>1, 2237=>1, 3463=>1, 2753=>1, 2861=>1, 3067=>1, 2503=>1, 2609=>1, 2579=>2, 3581=>1, 2719=>2, 2657=>2, 2467=>2, 3313=>1, 2689=>1, 3331=>1, 2659=>2, 2377=>1, 3701=>1, 1933=>2, 3181=>1, 3457=>1, 2699=>2, 3449=>1, 3823=>1, 2833=>2, 2897=>2, 3947=>1, 2663=>1, 3301=>1, 3371=>1, 3019=>1, 3253=>1, 3187=>1, 2251=>1, 4073=>1, 2999=>2, 2351=>1, 3853=>1, 3229=>1, 3137=>1, 3089=>2, 3833=>1, 3461=>1, 3607=>1, 3643=>1, 3119=>2, 4091=>1, 4111=>1, 4463=>1, 3677=>1, 3967=>1, 3881=>1, 4597=>1, 4271=>1, 4231=>1, 3559=>1, 2549=>1, 4159=>1, 3329=>1, 3307=>1, 3719=>1, 4733=>1, 3343=>1, 2393=>1, 3469=>1, 3803=>1, 4003=>1, 3673=>1, 4871=>1, 4057=>1, 3433=>1, 3299=>1}

def sort_data(data)
	data.sort_by { |prime, frequency| frequency}.reverse.inspect
end

#sort data
puts sort_data(data)

#percentages
def percentage(data, prime)
	total = 0.0
	data.each do |datum|
		total += datum[1]
	end
	return (data[prime]/total)*100
end

puts "The percent of 53's is: #{percentage(data, 71)}"