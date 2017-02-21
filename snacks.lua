utils = require "utils";
Button = require "Button";
Page = require "Page";
ReceiptPage   = require "Receipts";
ReceiptsTable = require "ReceiptsTable"

-- Definindo Tela de Lanches
local Snacks   = utils:inheritsFrom(Page);
Snacks.buttons = {Button:new({image_path="media/imagens_receita/lanches/hamburguer.png", focused=true}),
                  Button:new({image_path="media/imagens_receita/lanches/sanduiche_de_forno.png"})};
Snacks.header_img_path = "media/imagens_receita/lanches/lanches_titulo.png";


function Snacks:settingButtons()
    self.buttons[1].onTheRight = self.buttons[2]
    self.buttons[1].page = ReceiptPage:new({receipt=ReceiptsTable.hamburguer});
    
    self.buttons[2].onTheLeft = self.buttons[1]
    self.buttons[2].page = ReceiptPage:new({receipt=ReceiptsTable.sanduiche_de_forno});

end


return Snacks