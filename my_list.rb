class MyList
  include MyEnumerable
  def initialize(*enum)
    @list = enum
  end

  def each
    @list.each { |e| yield e if block_given? }
  end
end
