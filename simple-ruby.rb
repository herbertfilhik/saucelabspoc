require "selenium/webdriver"

caps = {
  :platform => "Windows 7",
  :browserName => "Chrome",
  :version => "45"
}

driver = Selenium::WebDriver.for(:remote,
	:url => "https://herbertfilhik:3e447604-d09f-4d7f-ba2e-9083d0fa10a7@ondemand.saucelabs.com:443/wd/hub",
	:desired_capabilities => caps)

driver.get('http://saucelabs.com/test/guinea-pig')

puts "title of webpage is: #{driver.title()}"

driver.quit()