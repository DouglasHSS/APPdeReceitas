utils = require "utils";
Button = require "Button";
Section = require "Section";

-- Definindo Tela de Massas
local Pastas   = utils:inheritsFrom(Section);
Pastas.buttons = {Button:new({image_path="media/imagens_receita/massas/macarrao.png", focused=true})};


function Pastas:renderTitle(containerApp)
    header_pastas = canvas:new("media/imagens_receita/massas/massas_titulo.png");
    containerApp:compose(450, 25, header_pastas);
end


function Pastas:settingButtons()

end


return Pastas