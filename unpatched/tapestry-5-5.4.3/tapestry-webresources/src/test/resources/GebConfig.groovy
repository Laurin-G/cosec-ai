// No real browser is installed in this environment, so drive an in-process, headless
// HtmlUnitDriver instead of launching real Firefox.
driver = { new org.openqa.selenium.htmlunit.HtmlUnitDriver(true) }

baseUrl = "http://localhost:8080"

waiting {
  // Long timeout since we have to wait for Rhino & friends to spin up
  timeout = 60
}