class TokenController < ApplicationController
  def add
    token = params[:token]
    token_index = params[:index]
    key = params[:key]

    return unless valid_token?(key, token, token_index)

    Token.create({token_value: token, challenge_index: token_index})
  end

  def valid_token?(key, token, token_index)
    !token.nil? && !token_index.nil? && !key.nil? && (key.eql? '705')
  end
end
