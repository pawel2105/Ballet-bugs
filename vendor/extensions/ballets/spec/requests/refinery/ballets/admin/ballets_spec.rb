# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Ballets" do
    describe "Admin" do
      describe "ballets" do
        login_refinery_user

        describe "ballets list" do
          before(:each) do
            FactoryGirl.create(:ballet, :title => "UniqueTitleOne")
            FactoryGirl.create(:ballet, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.ballets_admin_ballets_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.ballets_admin_ballets_path

            click_link "Add New Ballet"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Ballets::Ballet.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::Ballets::Ballet.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:ballet, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.ballets_admin_ballets_path

              click_link "Add New Ballet"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Ballets::Ballet.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:ballet, :title => "A title") }

          it "should succeed" do
            visit refinery.ballets_admin_ballets_path

            within ".actions" do
              click_link "Edit this ballet"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:ballet, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.ballets_admin_ballets_path

            click_link "Remove this ballet forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Ballets::Ballet.count.should == 0
          end
        end

      end
    end
  end
end
