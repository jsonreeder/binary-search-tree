require 'bst_node'

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = BSTNode.new
  end

  def find(el)
  end

  def insert(el)
    @root = el if @root.val.nil?
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
