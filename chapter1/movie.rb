class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  attr_reader :title
  attr_writer :price
  # attr_accessor :price_code

  def initialize(title, the_price_code)
    @title, @price = title, the_price_code
  end

  def price_code=(value)
    @price_code = value
    @price = case price_code
             when REGULAR: RegularPrice.new
             when NEW_RELEASE: NewReleasePrice.new
             when CHILDRENS: ChildrensPrice.new
             end
  end

  def frequent_render_points(days_rented)
    @price.frequent_render_points(days_rented)
  end

  def charge(days_rented)
    @price.charge(days_rented)
  end
end
