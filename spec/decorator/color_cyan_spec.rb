require "decorator/color_cyan"

describe Decorator::ColorCyan do
  before do
    actor = double('Actor')
    allow(actor).to receive(:show_message).and_return('I am actor')
    allow(actor).to receive(:show_message_length).and_return(10)
    @decorator = Decorator::ColorCyan.new actor
  end
  it 'show_message return cyan color text' do
    expect(@decorator.show_message).to eq "\e[36mI am actor\e[m"
  end
  it 'show_message_length return message.length + class.to_s.length - 10' do
    expect(@decorator.show_message_length).to eq 'I am actor'.length
  end

end