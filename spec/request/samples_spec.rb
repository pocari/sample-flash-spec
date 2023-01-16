require 'rails_helper'

RSpec.describe 'Samples', type: :request do
  describe 'POST /samples' do
    subject { post samples_path }

    describe 'check flash' do
      it do
        subject
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to(samples_path)

        p flash
        follow_redirect!
        p flash

        expect(response.body).to include('alert message dayo')
      end
    end
  end
end


