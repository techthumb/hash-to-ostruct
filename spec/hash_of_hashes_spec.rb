require 'lib/hash_to_openstruct'

describe 'hash of hashes' do
  it 'should handle chaining of child elements as hashes for depth level of 1' do
    hash = {:child => {:some_key, :some_value}}
    struct = hash.to_ostruct
    struct.should respond_to :child
    struct.child.should respond_to :some_key
  end
  
  it 'should handle chaining of child elements as hashes for any depth level (testing for 5 levels deep)' do
    hash = {:level_one => {:level_two => {:level_three => {:level_four => {:level_five => "Hi!"} } } } }
    struct = hash.to_ostruct
    struct.level_one.level_two.level_three.level_four.level_five.should eql "Hi!"    
  end
end
