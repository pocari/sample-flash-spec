class SamplesController < ApplicationController
  def index
  end

  def new
  end

  def create
    redirect_to samples_path, alert: 'alert message dayo'
  end
end
