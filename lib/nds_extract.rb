$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  db = nds
  result = {}                 #hash containing directors/gross sales pairs

  db.size.times do |odex|     #odex: outter index
      gross_sales = 0         #Set, reset gross sales for each element of the db array
      db[odex][:movies].size.times do |index|         #loop based on the size of the inner arrays for each director
          gross_sales += db[odex][:movies][index][:worldwide_gross]     #compute gross sales
      end #INNER loop
      key = db[odex][:name]       #assign director names
      result[key] = gross_sales   #build the hash
  end #OUTTER lop
  result
end
