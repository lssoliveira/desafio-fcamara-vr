Before do
  @home = Home.new
  @para_voce = ParaVoce.new
  page.current_window.resize_to(1920, 1080)
end
# Realiza a inicilização do metodo Utils antes de tudo.

AfterStep do |step|
  screenshot = page.save_screenshot("reports/screenshots/#{step.__id__}.png")
  embed(screenshot, "image/png", "Screenshot")
end
# Realiza screenshot ao final de cada step.