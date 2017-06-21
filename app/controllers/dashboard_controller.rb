class DashboardController < ApplicationController
  def overview
    @time = Time.now
  end
end
