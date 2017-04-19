require 'bst_node'

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = BSTNode.new
  end

  def find(search_val)
    found_node = find_node(search_val)
    !!found_node
  end

  def insert(insert_val)
    new_node = BSTNode.new(insert_val)
    @root.insert(new_node)
  end

  def delete(delete_val)
    node_to_delete = find_node(delete_val)
    parent = find_parent(node_to_delete)
    return nil unless parent
    parent.delete_child(delete_val)
  end

  def is_balanced?
  end

  def in_order_traversal
  end

  def maximum
  end

  def depth
  end

  private

  def find_node(search_val)
    @root.find(search_val)
  end

  def find_parent(node)
    find_node(node.val)
  end
end
