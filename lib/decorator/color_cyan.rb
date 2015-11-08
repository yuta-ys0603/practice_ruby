module Decorator
  class ColorCyan
    COLOR = "\e[36m" #ÉVÉAÉì
    CLEAR = "\e[m"
    def initialize(actor)
      @actor = actor
    end
    def show_message
      COLOR + @actor.show_message + CLEAR
    end
    def show_message_length
      @actor.show_message.length
    end
  end
end