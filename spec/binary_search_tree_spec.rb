require 'binary_search_tree'
require 'byebug'

describe 'BinarySearchTree' do
  subject { BinarySearchTree.new }
  let(:new_node) { 9 }
  let(:lower_node) { 8 }
  let(:higher_node) { 10 }
  let(:lowest_node) { 7 }
  let(:highest_node) { 11 }

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

    it 'can handle duplicates' do
      subject.insert(new_node)
      subject.insert(higher_node)
      subject.insert(higher_node)

      expect(subject.root.right.right.val).to eq(10)
    end
  end

  describe '#find' do
    it 'finds the root' do
      subject.insert(new_node)
      expect(subject.find(9)).to be true
    end

    it 'returns false for missing elements' do
      subject.insert(new_node)
      expect(subject.find(11)).to be false
    end

    it 'finds elements one layer down' do
      subject.insert(new_node)
      subject.insert(lower_node)
      subject.insert(lowest_node)
      expect(subject.find(7)).to be true
    end

    it 'finds elements two layers down' do
      subject.insert(new_node)
      subject.insert(higher_node)
      subject.insert(highest_node)
      expect(subject.find(11)).to be true
    end
  end

  describe '#delete' do
    it 'removes childless nodes two layers down' do
      subject.insert(new_node)
      subject.insert(higher_node)
      subject.insert(highest_node)
      subject.delete(11)
      expect(subject.find(11)).to be false
    end

    it 'removes childless nodes one layer down'

    context 'when a node has one child' do
      it 'deletes that node'
      it 'promotes the child to take its place'
    end

    context 'when a node has two children' do
      it 'deletes that node'
      it 'promotes the largest child from left subtree to take its place'
    end

  end

end