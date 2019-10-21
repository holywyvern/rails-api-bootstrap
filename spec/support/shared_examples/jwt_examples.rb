shared_examples 'devise jwt not found route' do
  before do
    request.env['devise.mapping'] = Devise.mappings[:user]
  end

  context 'when user is signed in' do
    include_context 'with user logged in'

    before do
      make_request
    end

    it 'responds with not found status' do
      expect(response).to have_http_status(:not_found)
    end
  end

  context 'when user is not signed in' do
    before do
      make_request
    end

    it 'responds with the corresponding status' do
      expect(response).to have_http_status(sign_out_status)
    end
  end
end
