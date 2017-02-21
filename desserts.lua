utils = require "utils";
Button = require "Button";
Section = require "Section";

-- Definindo Tela de Sobremesas
local Desserts   = utils:inheritsFrom(Section);
Desserts.buttons = {Button:new({image_path="media/imagens_receita/sobremesas/baba_de_moca.png", focused=true}),
                    Button:new({image_path="media/imagens_receita/sobremesas/brigadeiro.png"}),
                    Button:new({image_path="media/imagens_receita/sobremesas/queijadinha.png"})};


function Desserts:renderTitle(containerApp)
    header_desserts = canvas:new("media/imagens_receita/sobremesas/sobremesas_titulo.png");
    containerApp:compose(450, 25, header_desserts);
end


function Desserts:settingButtons()
    self.buttons[1].onTheRight = self.buttons[2]
    
    self.buttons[2].onTheLeft  = self.buttons[1]
    self.buttons[2].onTheRight = self.buttons[3]
    
    self.buttons[3].onTheLeft = self.buttons[2]

end


return Desserts