utils = require "utils";
Button = require "Button";
Section = require "Section";

-- Definindo Tela de Lanches
local Snacks   = utils:inheritsFrom(Section);
Snacks.buttons = {Button:new({image_path="media/imagens_receita/lanches/hamburguer.png", focused=true}),
                  Button:new({image_path="media/imagens_receita/lanches/sanduiche_de_forno.png"})};
Snacks.header_img_path = "media/imagens_receita/lanches/lanches_titulo.png";


function Snacks:settingButtons()
    self.buttons[1].onTheRight = self.buttons[2]
    
    self.buttons[2].onTheLeft = self.buttons[1]

end


return Snacks