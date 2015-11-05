require "decorator/character"
describe Decorator::Character do
  before do
    actor = double('Actor')
    allow(actor).to receive(:show_message).and_return('I am actor')
    allow(actor).to receive(:show_message_length).and_return(10)
    allow(actor).to receive(:class).and_return(Actor)

    @decorator = Decorator::Character.new actor
  end
  it 'show_message return actor_class_name + actor_message' do
    expect(@decorator.show_message).to eq "Actor: I am actor"
  end
  it 'show_message_length return message.length + class.to_s.length' do
    expect(@decorator.show_message_length).to eq(Actor.to_s.length + ": ".length + 'I am actor'.length)
  end
end