require 'test_helper'

class UserTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end

    def setup
        @user = User.new(name: 'test user', email: 'test.user@email.de', password: "password", password_confirmation: "password")
    end

    test 'should be valid' do
        assert @user.valid?
    end
end
