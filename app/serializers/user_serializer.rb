class UserSerializer
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def as_json
    {
      email: user.email
    }
  end

  def to_json
    as_json.to_json
  end
end
