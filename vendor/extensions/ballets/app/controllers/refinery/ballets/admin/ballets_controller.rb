module Refinery
  module Ballets
    module Admin
      class BalletsController < ::Refinery::AdminController

        crudify :'refinery/ballets/ballet', :xhr_paging => true

      end
    end
  end
end
