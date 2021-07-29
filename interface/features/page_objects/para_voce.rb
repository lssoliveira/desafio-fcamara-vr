class ParaVoce < SitePrism::Page
    element :aceitar_cookies, "a[class*='lum-button-primary']"
    element :onde_usar, "a[class*='vr-button--negative']"
    element :map, "div[style^='z-index: 3']"
end

# Page Object com o Prism onde mapeia os elementos da page em questão.