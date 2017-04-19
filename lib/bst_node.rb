class BSTNode
  attr_accessor :val, :left, :right

  def initialize(val = nil)
    @val = val
    @left = nil
    @right = nil
  end

  def insert(el)
    if el.val < val
      @left.nil? ? @left = el : @left.insert(el)
    else
      @right.nil? ? @right = el : @right.insert(el)
    end
  end
end
