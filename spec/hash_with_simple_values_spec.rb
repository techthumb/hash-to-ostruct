require 'lib/hash_to_openstruct'

describe 'Hash to OpenStruct transformation with simple values' do
  it 'should transform strings as values' do
    keys = []
    hash = Hash.new
    hash['keyA'] = "Value A"
    hash['keyB'] = "Value B"    
    ostruct = hash.to_ostruct
    hash.each do | key, value |
      ostruct.should respond_to key
      ostruct.send(key).should eql value
    end
  end
  
  it 'should transform numbers as values' do
    keys = []
    hash = Hash.new
    hash['keyA'] = 1
    hash['keyB'] = 2
    ostruct = hash.to_ostruct
    hash.each do | key, value |
      ostruct.should respond_to key
      ostruct.send(key).should eql value
    end
  end
  
  it 'should transform symbols as values' do
    keys = []
    hash = Hash.new
    hash[:keyA] = :ValueA
    hash[:keyB] = :ValueB    
    ostruct = hash.to_ostruct
    hash.each do | key, value |
      ostruct.should respond_to key
      ostruct.send(key).should eql value
    end
  end

  it 'should transform symbols as keys' do
    keys = []
    hash = Hash.new
    hash[:keyA] = "Value A"
    hash[:keyB] = "Value B"    
    ostruct = hash.to_ostruct
    hash.each do | key, value |
      ostruct.should respond_to key
      ostruct.send(key).should eql value
    end
  end  
end
