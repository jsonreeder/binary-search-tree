class BSTNode
  attr_accessor :val, :left, :right

  def initialize(val = nil)
    @val = val
    @left = nil
    @right = nil
  end

  def insert(el)
    el.val < val ? @left = el : @right = el
  end
end
