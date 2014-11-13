require 'minitest/autorun'
require_relative 'bptree'

class TestArray < Minitest::Test

  def test_new_bptree
    b = Bptree.new
  end

  def test_new_bptree_is_leaf
    b = Bptree.new
    assert b.is_leaf
  end

  def test_new_bptree_with_children_is_not_a_leaf
   skip 'not here yet' 
  end

  def test_adding_a_key
    b = Bptree.new
    v = 'valueone'
    b.insert 4,v
    assert b.is_leaf
    assert_equal v, b.get(4)
    assert_equal nil, b.get(3)
  end

  def test_adding_until_split
    b = Bptree.new
    v = 'placeholder'
    1.upto(b.order-1) do |i|
      b.insert i, "placeholder #{i}"
      assert b.is_leaf
    end
    b.insert 'splitkey', 'splitvalue'
    refute b.is_leaf
    assert 0, b.values.count
    assert_equal 2,b.children.count
    assert_equal "placeholder 3", b.get(3)
    assert_equal "splitvalue", b.get('splitkey')

    assert 4, b.children[0].values.count
    assert 3, b.children[1].values.count
  end

end
