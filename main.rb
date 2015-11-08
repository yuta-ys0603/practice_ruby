require "./lib/actor/human"
#require "./lib/decorator/character"
#require "./lib/decorator/color_red"
require "../practice/lib/decorator/color_cyan"

actor = Actor::Human.new 'My name is Hoge Hoge'
#decorator =Decorator::Character.new actor
#decorator = Decorator::ColorRed.new actor
decorator = Decorator::ColorCyan.new actor
puts decorator.show_message

