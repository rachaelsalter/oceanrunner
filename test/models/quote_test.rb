require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do 
  	quote = Quote.create(:author => 'Rachael Salter', :saying => 'Til death do us part.')
  	expected = 'RS#' + quote.id.to_s
  	actual = quote.unique_tag
  	assert_equal expected, actual
  end 
end
