class ScoreController < ApplicationController
  def show
    @challenge_count_max = 4
    @challenges = get_all_challenges
    @scores = get_scores
  end

  def add
    store_score

    redirect_to action: 'show'
  end

  def store_score
    token = Token.find_by_token_value(params['answer_token'])

    unless token.nil?
      begin
        Scores.create({:user_name => params['your_name'], :challenge_index => token['challenge_index']})
        token.delete
      rescue Exception => e
        p "Failed to add record to score table. #{e}"
      end
    end
  end

  def get_all_challenges
    Challenges.order("'index'").all
  end

  def get_scores
    @scores = []

    (0..@challenge_count_max - 1).each do |i|
      @scores[i] = Scores.where("challenge_index = ?", i + 1).order("created_at").all
    end

    @scores
  end
end
