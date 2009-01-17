require 'lib/hash-to-ostruct'

describe 'hash of arrays with hashes as array elements' do
  it 'should handle an array of hashes with the same keys' do
    array_of_hashes = [{:same_key => 'child element one'}, {:same_key => 'child element two'}]
    hash = {:children => array_of_hashes}
    ostruct = hash.to_ostruct
    children = ostruct.children
    array_of_hashes.each_with_index do | hash, index |
      hash.each do | key, value |
        children[index].should respond_to key
        children[index].send(key).should eql value
      end
    end
  end

  it 'should handle an array of hashes with the different keys' do
    array_of_hashes = [{:some_key => 'child element one'}, {:different_key => 'child element two'}]
    hash = {:children => array_of_hashes}
    ostruct = hash.to_ostruct
    children = ostruct.children
    array_of_hashes.each_with_index do | hash, index |
      hash.each do | key, value |
        children[index].should respond_to key
        children[index].send(key).should eql value
      end
    end
  end

  it 'should handle an array of strings' do
    array = ["a", 1]
    hash = {:children => array}
    ostruct = hash.to_ostruct
    ostruct.children.should eql array
  end
  
end
