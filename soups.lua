utils = require "utils";
Button = require "Button";
Section = require "Section";

-- Definindo Tela de Sopas
local Soups   = utils:inheritsFrom(Section);
Soups.buttons = {Button:new({image_path="media/imagens_receita/sopas/caldo_verde.png", focused=true})};


function Soups:renderTitle(containerApp)
    header_soups = canvas:new("media/imagens_receita/sopas/sopas_titulo.png");
    containerApp:compose(450, 25, header_soups);
end


function Soups:settingButtons()

end


return Soups