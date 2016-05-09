require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand}
    # if @sodas.each { |name, price| name ==  soda_brand}
    #   return @brand
    # else
    #   nil
    # end
  end

# i want to have the price  mulitplied by the sodas equal the cash
  def sell(soda_brand)
    @cash = @sodas.count/2
    # @sodas.count -= 1
    # @cash -= @price
  end

end

