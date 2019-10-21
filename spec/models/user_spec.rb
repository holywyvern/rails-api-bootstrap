require 'rails_helper'

RSpec.describe User do
  subject(:user) { build_stubbed(:user) }

  it { is_expected.to validate_presence_of(:email) }

  context 'when validated databas indexes' do
    subject(:user) { create(:user) }

    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end
end
