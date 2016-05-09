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
    if @sodas.each { |soda| soda ==  soda_brand}
      return @soda
    else
      nil
    end
  end

  def sell(soda_brand)
    @cash = @sodas.count * @price
    @sodas.count -= 1
    @cash -= @price
  end

end

