require 'rails_helper'

RSpec.describe QuotesController, type: :controller do
  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 status code' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'loads a quote' do
      quote = Quote.create(saying: 'blah blah blah',
                           author: 'anonymous')
      get :index

      expect(assigns(:quote)).to be_kind_of Quote
      expect(assigns(:quote)).to eq quote
    end
  end
end
