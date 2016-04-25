Then (/^Navigate to ([^"]*)$/) do |url|
  $driver.get "#{url}"
  sleep 3
end

Then(/^Search for Ball$/) do
  element = $driver.find_element(:id, "search")
  sleep 0.5
  element.send_keys "balls"
  sleep 0.5
  $driver.find_element(:xpath, "//button[@type='submit']/i[@class='wmicon wmicon-search ']").click
  sleep 3
end

Then(/^Select second item from the list$/) do
  element_ary = $driver.find_elements(:xpath, "//a[@class='js-product-title']")
  element_ary[1].click
  sleep 3
end

Then(/^Select two items from drop down$/) do
  dropdown = $driver.find_element(:xpath, "//span[@class='product-quantity-dropdown-wrapper']")
  dropdown.click
  sleep 0.5
  option = $driver.find_element(:xpath, "//button[@class='chooser-option js-chooser-option' and text()='2']")
  option.click
  sleep 1

  # select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  # select_list.select_by(:text, '2')
end

Then(/^Click Add to Cart button$/) do
  $driver.find_element(:id, "WMItemAddToCartBtn").click
  sleep 3
end

Then(/^Click View Cart button$/) do
  $driver.find_element(:id, "PACViewCartBtn").click
  sleep 5
end

Then /^Verify that ([^"]*) items added to Cart$/ do |var|
  element = $driver.find_element(:xpath, "//h3[@class='cart-list-title']/span[text()='2 items.']")
  element1 = element.text
  if element1 == "2 items."
    puts "passed"
  else
    puts "failed"
  end
end

Then(/^Close browser$/) do
  $driver.quit
end