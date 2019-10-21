module V1
  class FailureApp < Devise::FailureApp
    def http_auth_body
      {
        sucess: false,
        message: i18n_message
      }.to_json
    end
  end
end
