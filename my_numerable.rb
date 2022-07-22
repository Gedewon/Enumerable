module MyEnumerable
  def all?
    each do |ex|
      return false unless yield(ex)
    end
    true
  end

  def any?
    each do |ex|
      return true if yield(ex)
    end
    false
  end

  def filter
    filter_value = []
    each do |ex|
      filter_value.push(ex) if yield(ex)
    end
    filter_value
  end
end
