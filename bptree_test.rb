require 'minitest/autorun'
require_relative 'bptree'

class TestArray < Minitest::Test
  def test_array_can_be_created_with_no_arguments
    assert_instance_of Array, Array.new
  end

  def test_array_of_specific_length_can_be_created
    assert_equal 10, Array.new(10).size
  end

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
  end
end
