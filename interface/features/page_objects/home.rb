class Home < SitePrism::Page
    set_url '/'
    element :para_voce, "a[href='onde-aceita.htm']"
end

# Page Object com o Prism onde mapeia os elementos da page em questão.