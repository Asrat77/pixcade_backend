class BundleItemsController < ApplicationController
  include Common

  def index
    super do
      BundleItem.includes(:bundle, :game)
    end
  end

  private

  def model_params
    params.require(:payload).permit(:bundleItemID, :bundle, :game)
  end
end
