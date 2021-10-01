class Foo
  def foo
    puts 'foo_a'
  end
end

Foo.new.foo

begin
  Foo.new.bar
rescue
  puts $!.message
end

begin
  foo
rescue
  puts $!.message
end

puts Kernel.private_methods.any?{|m| m == :foo }
require_relative 'script_b'
puts Kernel.private_methods.any?{|m| m == :foo }

Foo.new.foo

begin
  foo
rescue
  puts $!.message
end

require_relative 'module_a.rb'

class Foo
  include ModuleA
end

Foo.new.foo

begin
  Foo.new.bar
rescue
  puts $!.message
end

class Bar < Foo
end

Bar.new.foo

require_relative 'module_b.rb'

class Bar < Foo
  include ModuleB
end

Bar.new.foo

class Bar < Foo
  def foo
    puts 'bar'
  end
end

Bar.new.foo
foo
