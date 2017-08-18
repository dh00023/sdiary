class ChartController < ApplicationController
  def show
  	@diaries = Diary.all
  end

  def warning
  end

  def about
  end
end
