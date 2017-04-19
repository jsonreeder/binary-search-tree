require 'binary_search_tree'

describe 'BinarySearchTree' do
  subject { BinarySearchTree.new }
  let(:new_node) { BSTNode.new(9) }
  let(:lower_node) { BSTNode.new(8) }
  let(:higher_node) { BSTNode.new(10) }
  let(:lowest_node) { BSTNode.new(7) }
  let(:highest_node) { BSTNode.new(11) }

  it 'initializes with a root node' do
    expect(subject).to respond_to(:root)
  end

  it 'allows insertion' do
    expect(subject).to respond_to(:insert)
  end

  context 'when inserting an item' do
    it 'inserts as root node when appropriate' do
      subject.insert(new_node)
      expect(subject.root.val).to eq(9)
    end

    it 'inserts to the left when appropriate' do
      subject.insert(new_node)
      subject.insert(lower_node)
      expect(subject.root.left.val).to eq(8)
    end

    it 'inserts to the left when appropriate' do
      subject.insert(new_node)
      subject.insert(higher_node)
      expect(subject.root.right.val).to eq(10)
    end

    it 'creates a new level left when appropriate' do
      subject.insert(new_node)
      subject.insert(lower_node)
      subject.insert(lowest_node)
      expect(subject.root.left.left.val).to eq(7)
    end

    it 'creates a new level right when appropriate' do
      subject.insert(new_node)
      subject.insert(higher_node)
      subject.insert(highest_node)
      expect(subject.root.right.right.val).to eq(11)
    end
  end

end