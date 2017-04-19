class BSTNode
  attr_accessor :val, :left, :right

  def initialize(val = nil)
    @val = val
    @left = nil
    @right = nil
  end

  def insert(el)
    if val.nil?
      @val = el.val
      @left = el.left
      @right = el.right
    elsif el.val < val
      @left.nil? ? @left = el : @left.insert(el)
    else
      @right.nil? ? @right = el : @right.insert(el)
    end
  end

  def find(search_val)
    if val == search_val
      self
    elsif search_val < val && @left
      @left.find(search_val)
    elsif search_val > val && @right
      @right.find(search_val)
    else
      nil
    end
  end

  def delete_child(delete_val)
    child = which_child(delete_val)
    if child == 'left'
      @left = nil
    elsif child == 'right'
      @right = nil
    else
      nil
    end
  end

  private

  def which_child(val)
    if @left && @left.val == val
      'left'
    elsif @right && @right.val == val
      'right'
    else
      nil
    end
  end

end
