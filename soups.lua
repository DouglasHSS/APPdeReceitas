utils = require "utils";
Button = require "Button";
Page = require "Page";

-- Definindo Tela de Sopas
local Soups   = utils:inheritsFrom(Page);
Soups.buttons = {Button:new({image_path="media/imagens_receita/sopas/caldo_verde.png", focused=true})};
Soups.header_img_path = "media/imagens_receita/sopas/sopas_titulo.png";


function Soups:settingButtons()

end


return Soups