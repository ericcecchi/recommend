# frozen_string_literal: true

# Controller for guides
class GuidesController < ApplicationController
  before_action :logged_in_user, only: %i[create new]

  def new
    @guide = Guide.new
  end

  def create
    @guide = current_user.guides.build(guide_params)

    if @guide.save
      redirect_to current_user, notice: 'Guide was successfully created.'
    else
      redirect_to current_user, notice: 'Failed to create guide.'
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def guide_params
    params.require(:guide).permit(:locale_id, :title, :description)
  end
end