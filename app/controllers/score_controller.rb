class ScoreController < ApplicationController
  def show

    if ! params['commit'].nil?
      @challenge_index = Challenges.find_by_answer_token(params['answer_token'])
      if ! @challenge_index.nil?
        begin
          Scores.find_or_create_by!(user_name: params['your_name'], challenge_index: @challenge_index['index'])
        rescue
          printf("exception");
        end
      end
    end

    @challenges = Challenges.order("'index'").all

    @scores = Array.new
    (0..4).each do |i|
      @scores[i] = Scores.where("challenge_index=?",i+1).order("created_at").all
    end

  end
end
