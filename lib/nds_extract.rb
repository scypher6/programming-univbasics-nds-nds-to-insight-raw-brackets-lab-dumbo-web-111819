$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  db = nds
  result = {}
  gross_sales = 0

  db.size.times do |odex|
      db[odex][:movies].size.times do |index|
          gross_sales += db[odex][:movies][index][:worldwide_gross]
      end #INNER loop
      key = db[odex][:name]
      result[key] = gross_sales
  end #OUTTER lop
end
