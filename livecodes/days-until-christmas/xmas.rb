require 'date'

# Write a method which returns the number of days until next Xmas.
# Quando formos implementar o metodo: dia do natal - dia de hoje

def days_until_xmas(date = Date.today)
  # xmas = date.month == 12 && date.day > 25 ? Date.new(date.year + 1, 12, 25) : Date.new(date.year, 12, 25)

  # if date.month == 12 && date.day > 25
  #   xmas = Date.new(date.year + 1, 12, 25)
  # else
  #   xmas = Date.new(date.year, 12, 25)
  # end

  # xmas = Date.new(date.year, 12, 25)
  # if date > xmas
  #   xmas = Date.new(date.year + 1, 12, 25)
  # end

  xmas = Date.new(date.year, 12, 25)
  xmas = Date.new(date.year + 1, 12, 25) if date > xmas

  (xmas - date).to_i
end

# TDD
# Test Driven Development

future_date = Date.new(2023, 12, 27)

puts days_until_xmas.class == Integer
puts days_until_xmas == 340
puts days_until_xmas(future_date) == 364

# Hoje eh dia 25 de Dezembro, proximo natal eh daqui a 365
# Hoje eh dia 26, proximo natal eh 364
# Hoje eh dia 27, proximo natal eh 363
# OBS: deu 364 pq tem ano bisexto na jogada!!
