Array.class_eval do
  def to_ostruct
    map { | element | element.to_ostruct }
  end
end