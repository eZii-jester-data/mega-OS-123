# typed: false
class ImportedDataController < ApplicationController
  def overview
    §(UNIMMUNIZED_FOR_ENDLESS_REDIRECTS_IN_COMBINATION_WTH, ⚕([ApplicationController.instance_method(:gdpr_compliance), object: [:method, :redirect_to]])) do
    # if cookies[:user_accepted_gdpr] == "1"
      redirect_to(directory_path('/local/'))
    # else
      # redirect_to('/local_law_pipelines/1')
    # end

    # redirect_to('/banal_complexes')
    # redirect_to(directory_path('public/user_data'))
    end
  end
end
