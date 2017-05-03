require 'sinatra'

class Counter
  def initialize
    @cont = 0
  end
  def inicio
    @cont
  end
  def counter
    @cont += 1
  end
end

num = Counter.new()


get '/' do
  @cont = num.inicio
  erb :index
end


patch '/' do
  @cont = num.counter
  erb :index
end