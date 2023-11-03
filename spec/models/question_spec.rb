require 'rails_helper'

RSpec.describe Question, type: :model do
  it 'is valid with valid attributes' do
    expect(Question.new(text: 'What are you eating tonight?', active: true)).to be_valid
  end

  it 'is not valid without text' do
    question = Question.new(text: nil)
    expect(question).not_to be_valid
  end
end
