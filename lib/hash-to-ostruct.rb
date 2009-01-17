$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
require 'ostruct'
require 'hash-to-ostruct/extensions/object'
require 'hash-to-ostruct/extensions/array'
require 'hash-to-ostruct/extensions/hash'
module HashToOstruct
  VERSION = '0.0.1'
end