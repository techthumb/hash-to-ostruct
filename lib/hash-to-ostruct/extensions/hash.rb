Hash.class_eval do
  def to_ostruct
    open_struct = OpenStruct.new
    each { | key, value | open_struct.send("#{key}=", value.to_ostruct)}
    open_struct
  end
end