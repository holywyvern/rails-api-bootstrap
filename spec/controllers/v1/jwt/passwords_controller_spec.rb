describe V1::Jwt::PasswordsController do
  describe 'GET #new' do
    subject(:make_request) { get :new }

    let(:sign_out_status) { :not_found }

    before do
      request.env['devise.mapping'] = Devise.mappings[:user]
    end

    include_examples 'devise jwt not found route'
  end
end
