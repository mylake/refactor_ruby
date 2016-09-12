class NewReleasePrice
  def charge(days_rented)
    days_rented * 3
  end

  def frequent_render_points(days_rented)
    days_rented > 1 ? 2 : 1
  end
end
