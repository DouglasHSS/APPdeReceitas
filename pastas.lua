utils = require "utils";
Button = require "Button";
Section = require "Section";

-- Definindo Tela de Massas
local Pastas   = utils:inheritsFrom(Section);
Pastas.buttons = {Button:new({image_path="media/imagens_receita/massas/macarrao.png", focused=true})};
Pastas.header_img_path = "media/imagens_receita/massas/massas_titulo.png";


function Pastas:settingButtons()

end


return Pastas