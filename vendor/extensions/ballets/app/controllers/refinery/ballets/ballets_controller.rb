module Refinery
  module Ballets
    class BalletsController < ::ApplicationController

      before_filter :find_all_ballets
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @ballet in the line below:
        present(@page)
      end

      def show
        @ballet = Ballet.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @ballet in the line below:
        present(@page)
      end

    protected

      def find_all_ballets
        @ballets = Ballet.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/ballets").first
      end

    end
  end
end
