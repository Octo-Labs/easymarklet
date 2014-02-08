require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the Easymarklet::LinkHelper. For example:
#
# describe Easymarklet::LinkHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe Easymarklet::LinkHelper do

  describe "easymarklet_js" do
    it "should return something" do
      helper.easymarklet_js.should_not be_nil
    end

    it "should produce some javascript" do
      helper.easymarklet_js.should match(/^javascript:/)
    end

    it "should match an exact string" do
      helper.easymarklet_js.should == "javascript:(function(){var script=document.createElement('SCRIPT');script.src='http://localhost:12345/assets/bookmarklet.js';document.body.appendChild(script);})()"
    end

    it "should match an exact string for a custom bookmarket manifest" do
      helper.easymarklet_js('my_manifest.js').should == "javascript:(function(){var script=document.createElement('SCRIPT');script.src='http://localhost:12345/assets/my_manifest.js';document.body.appendChild(script);})()"
    end

  end

end

