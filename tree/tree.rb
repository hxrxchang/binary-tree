class Tree
  attr_accessor :value, :children

  def initialize(value, children=[])
    @value = value
    @children = children
  end

  def search(value)
    if value == @value
      return true
    end

    @children.each do |c|
      if c.search(value)
        return true
      end
    end

    false
  end
end

t1 = Tree.new(1)
t2 = Tree.new(
  1,
  [
    Tree.new(2),
    Tree.new(3),
    Tree.new(4, [ Tree.new(5), Tree.new(6)])
  ]
)

p t2.search(4)
