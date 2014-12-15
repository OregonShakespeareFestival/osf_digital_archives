class DownloadsController < ApplicationController
  # module mixes in normalize_identifier method
  include Sufia::DownloadsControllerBehavior
  skip_before_filter :authenticate_user!
end
