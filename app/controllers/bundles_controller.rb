class BundlesController < ApplicationController
    include Common

    private
    def model_params
        params.require(:payload).permit(:bundle_id, :bundle_name,:bundle_price, :bundle_discount)
    end
end
