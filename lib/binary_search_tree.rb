require 'bst_node'

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = BSTNode.new
  end

  def find(search_val)
    @root.find(search_val)
  end

  def insert(el)
    @root.insert(el)
  end

  def delete(el)
  end

  def is_balanced?
  end

  def in_order_traversal
  end

  def maximum
  end

  def depth
  end
end
