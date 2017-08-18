class ChartController < ApplicationController
  def show
  	@diaries = Diary.all

  end

  def about
  end
end
