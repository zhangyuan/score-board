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
    @challenge_index = Challenges.find_by_answer_token(params['answer_token'])

    unless @challenge_index.nil?
      begin
        Scores.find_or_create_by!(user_name: params['your_name'], challenge_index: @challenge_index['index'])
      rescue
        printf("Error occur when add record to score tale");
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
