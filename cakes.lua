utils = require "utils";
Button = require "Button";
Section = require "Section";

-- Definindo Tela de Bolos
local Cakes   = utils:inheritsFrom(Section);
Cakes.buttons = {Button:new({image_path="media/imagens_receita/bolos/bolo_ceneoura.png", focused=true}),
                 Button:new({image_path="media/imagens_receita/bolos/bolo_chocolate.png"})};


function Cakes:renderTitle(containerApp)
    header_cakes = canvas:new("media/imagens_receita/bolos/bolos_titulo.png");
    containerApp:compose(450, 25, header_cakes);
end


function Cakes:settingButtons()
    self.buttons[1].onTheRight = self.buttons[2]

    self.buttons[2].onTheLeft = self.buttons[1]

end


return Cakes