class CoachingController < ApplicationController

  def ask

  end

  def answer
    @text = params[:question]
    @answer = []
    @answer << "I can feel you motivation !!!" if @text.upcase == @text
    if @text[-1] == "?"
      @answer << "Stupid question !"
    else
      @answer << "Good !" if @text.downcase == "i go to work"
    end
    @answer << "GO to work !"
  end

end
