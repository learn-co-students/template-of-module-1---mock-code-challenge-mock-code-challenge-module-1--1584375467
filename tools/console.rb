require_relative '../config/environment.rb'
def reload
  load 'config/environment.rb'
end
josh = passenger.new("josh")
cole = passenger.new("cole")
jim = passenger.new("jim")
mich = driver.new("mich")
grant = driver.new("grant")

binding.pry
