class GenericFilesController < ApplicationController
  include Sufia::Controller
  include Sufia::FilesControllerBehavior

  before_filter :add_accessible_attributes, except: [:index, :audit]

  #overides method in /sufia-4.0.0/app/controllers/concerns/sufia/files_controller_behavior.rb
  def update_metadata

    if params[:visibility] == "discoverable"
      @generic_file.discover_groups = ['public']
      @generic_file.read_groups = ['registered']

      # todo: this needs to be true for all by default
      # @generic_file.edit_groups = ['registered']

      #remove the visibility since "discoverable" is not a valid setting according to hydra-access-controls
      params.delete :visibility
    end

    if params[:generic_file][:date_created] and !params[:generic_file][:date_created].scan(/(\d{1,2}[-\/]\d{1,2}[-\/]\d{4})|(\d{4}[-\/]\d{1,2}[-\/]\d{1,2})/).empty?
      date_created = Date.parse(params[:generic_file][:date_created])
      @generic_file.asset_create_year = date_created.year.to_s
    end

    actor.update_metadata(params[:generic_file], params[:visibility])

  end

  protected
    #Refactor: isn't there a way to do this on the model?
    def add_accessible_attributes
      @generic_file.class._accessible_attributes[:default] << :production_name << :venue_name
    end

end


  #refactor target
  # this is necessary because 
  # gems/hydra-access-controls-7.2.2/app/models/concerns/hydra/access_controls/visibility.rb
  # does not implement discoverable
  # file.visibility is set in /sufia-models/app/actors/sufia/generic_file/actor.rb #update_metadata
  # possibly implement and see if you can get it included in hydra?