
require 'rails_helper'

RSpec.describe Api::UsersController do
  let!(:user) { FactoryBot.create(:user, email: 'test@test.com', password: 'testpass1') }

  before do
    sign_in user
  end

  context '#show' do
    before do
      get :show, params: { id: user.id }, format: 'json'
    end

    it 'returns the user email' do
      expect(JSON.parse(response.body)).to eq({ 'email' => 'test@test.com' })
    end
  end
end
