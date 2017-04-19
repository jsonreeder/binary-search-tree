require 'binary_search_tree'

describe 'BinarySearchTree' do
  subject { BinarySearchTree.new }
  let(:new_node) { BSTNode.new(9) }

  it 'initializes with a root node' do
    expect(subject).to respond_to(:root)
  end

  it 'allows insertion' do
    expect(subject).to respond_to(:insert)
  end

  it 'inserts an item' do
    subject.insert(new_node)

    expect(subject.root.val).to eq(9)
  end
end