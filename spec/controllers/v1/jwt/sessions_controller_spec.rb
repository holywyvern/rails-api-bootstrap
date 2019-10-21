describe V1::Jwt::SessionsController do
  describe 'GET #new' do
    let(:make_request) { get :new }

    let(:sign_out_status) { :not_found }

    include_examples 'devise jwt not found route'
  end

  describe 'POST #sign_in' do
    subject(:make_request) { post :create, params: params }

    let(:user) { create(:user, confirmed_at: Time.zone.now) }
    let(:params) do
      { user: { email: user.email, password: user.password } }
    end

    context 'when a confirmed user attemps to sign in' do
      before do
        request.env['devise.mapping'] = Devise.mappings[:user]
        make_request
      end

      it 'returns created as http status' do
        expect(response).to have_http_status(:created)
      end

      it 'returns the JTW token in authorization header' do
        expect(response.headers['Authorization']).to be_present
      end
    end

    context 'when login params are incorrect' do
      let(:params) { {} }

      before do
        request.env['devise.mapping'] = Devise.mappings[:user]
        make_request
      end

      it 'returns unauthorized status' do
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end
end
