require 'rails_helper'

describe User do
  it { should have_one :account }
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
end
