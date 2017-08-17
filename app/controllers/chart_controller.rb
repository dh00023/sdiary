class ChartController < ApplicationController
  def show
  	@diaries = Diary.all
  end
end
