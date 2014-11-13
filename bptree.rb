class Bptree
  attr_reader :order

  def initialize
    @order = 7
    @children = []
    @value = {}
  end

  def is_leaf
    true
  end

  def insert key,value
    @value[key]=value
    if @value.count >= @order
      puts 'split'
    end   

  end

  def get key
    @value[key]
  end
end
