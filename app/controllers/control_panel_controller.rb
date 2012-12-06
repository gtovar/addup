class ControlPanelController < ApplicationController
  layout "back_end_application"
  before_filter :authenticate_admin!
  def index

  end
end
