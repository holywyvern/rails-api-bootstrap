describe V1::Jwt::RegistrationsController do
  describe 'GET #new' do
    subject(:make_request) { get :new }

    let(:sign_out_status) { :not_found }

    include_examples 'devise jwt not found route'
  end

  describe 'GET #edit' do
    subject(:make_request) { get :edit }

    let(:sign_out_status) { :unauthorized }

    include_examples 'devise jwt not found route'
  end

  describe 'GET #cancel' do
    subject(:make_request) { get :cancel }

    let(:sign_out_status) { :not_found }

    include_examples 'devise jwt not found route'
  end

  describe 'POST #sign_up' do
    subject(:make_request) { post :create, params: params }

    let(:params) { { user: attributes_for(:user) } }

    before do
      request.env['devise.mapping'] = Devise.mappings[:user]
    end

    context 'when valid parameters are used at registration' do
      it 'responds with created status' do
        make_request
        expect(response).to have_http_status(:created)
      end

      it 'creates a new user' do
        expect { make_request }.to change(User, :count).by(1)
      end
    end

    context 'when invalid parameters are used at registration' do
      let(:params) { {} }

      it 'responds with unprocessable entity status' do
        make_request
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'does not create a new user' do
        expect { make_request }.not_to change(User, :count)
      end
    end
  end
end
