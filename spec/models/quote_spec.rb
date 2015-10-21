require 'rails_helper'

describe Quote do
  it 'requires saying' do
    quote = Quote.new(saying: nil, author: 'something')

    expect(quote.valid?).to be false
    expect(quote.save).to be false
  end
end
