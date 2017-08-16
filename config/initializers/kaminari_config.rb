# frozen_string_literal: true
Kaminari.configure do |config|
  config.default_per_page = 3
  #config.max_per_page = nil
  config.window = 1 # 양옆 숫자를 의미한다.
  config.outer_window = 0 #양쪽 끝의 보여지는 숫자를 의미한다.
  config.left = 0
  config.right = 0
  # config.page_method_name = :page
  # config.param_name = :page
  # config.params_on_first_page = false
end