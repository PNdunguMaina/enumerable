module MyEnumerable
  def all?
    res = false
    each do |e|
    res = true if yield e
    end
    res
  end

  def any?
    res = false
    each do |e|
    res = true if yield e
    end
    res
  end

  def filter?
    my_list = []
    each do |e|
    my_list.push(e) if yield e
    end
    my_list
  end

  def show
    puts(@list)
  end
end    
