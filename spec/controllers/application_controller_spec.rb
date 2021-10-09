require 'rails_helper'

RSpec.describe ApplicationController, type: :request do
  describe 'GET /_healthcheck' do
    subject { get '/_healthcheck' }

    context 'with be success' do
      it do
        subject
        expect(response).to be_successful
      end
    end
  end
end
