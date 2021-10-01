require_relative 'hoge_module'

class Hoge
  include HogeModule
  def fuga
    wowwow
  end
end

Hoge.new.hoge

begin
  Hoge.new.wowwow
rescue
  puts $!.message
end

Hoge.new.send(:wowwow)

Hoge.new.fuga
