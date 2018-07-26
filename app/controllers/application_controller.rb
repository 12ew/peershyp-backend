class ApplicationController < ActionController::API

  def user_id
    decoded_token[0]['user_id']
  end

  def user_type
    decoded_token[0]['category']
  end

  def decoded_token
    JWT.decode(request.headers['Authorization'], 'buildmeasurelearn', true, {algorithm: 'HS256'})
  end

  def encoded_token(user)
    # byebug
    JWT.encode({user_id: user.id, category: user.class.name}, 'buildmeasurelearn', 'HS256')
  end

  def current_user
    if user_type === 'Expat'
      @user = Expat.find_by(id: user_id)
    else
      @user = Traveler.find_by(id: user_id)
    end
  end

  def logged_in
    !!current_user
  end

end
