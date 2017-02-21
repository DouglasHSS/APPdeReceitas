utils = require "utils";
Button = require "Button";
Section = require "Section";

-- Definindo Tela de Sopas
local Soups   = utils:inheritsFrom(Section);
Soups.buttons = {Button:new({image_path="media/imagens_receita/sopas/caldo_verde.png", focused=true})};
Soups.header_img_path = "media/imagens_receita/sopas/sopas_titulo.png";


function Soups:settingButtons()

end


return Soups