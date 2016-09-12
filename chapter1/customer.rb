class Customer
  attr_reader :name

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(arg)
    @rentals << arg
  end

  def statement
    frequent_render_points = 0
    result = "Rental Record for #{@name}\n"
    @rentals.each do |element|
      frequent_render_points += element.frequent_render_points

      result += '\t' + element.movie.title + '\t' + element.charge.to_s + '\n'
    end

    result += "Amount owned is #{total_charge}\n"
    result += "You earned #{total_frequent_render_points} frequent renter points"
    result
  end

  def total_charge
    @rentals.inject(0) { |sum, rental| sum + rental.charge }
  end

  def total_frequent_render_points
    @rental.inject(0) { |sum, rental| sum + rental.frequent_render_points }
  end

end
