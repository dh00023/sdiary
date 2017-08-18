class ChartController < ApplicationController
  def index
  end
  def show
  	@diaries = Diary.all
  end
end
