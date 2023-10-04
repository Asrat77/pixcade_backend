class BundleItemsController < ApplicationController
    include Common

    private
    def model_params
        params.require(:payload).permit(:bundleItemID, :bundle, :game)
end
