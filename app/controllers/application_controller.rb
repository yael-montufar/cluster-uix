class ApplicationController < ActionController::Base
  before_action :set_class_list

  def set_class_list
    @class_list = %w[home test]
  end
end
