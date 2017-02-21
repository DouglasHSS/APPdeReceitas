utils    = require "utils";
Button   = require "Button";
Page     = require "Page";
ReceiptPage   = require "Receipts";
ReceiptsTable = require "ReceiptsTable";


-- Definindo Tela de Bolos
local Cakes   = utils:inheritsFrom(Page);
Cakes.buttons = {Button:new({image_path="media/imagens_receita/bolos/bolo_ceneoura.png", focused=true}),
                 Button:new({image_path="media/imagens_receita/bolos/bolo_chocolate.png"})};
Cakes.header_img_path = "media/imagens_receita/bolos/bolos_titulo.png";

function Cakes:settingButtons()
    self.buttons[1].onTheRight = self.buttons[2]
    self.buttons[1].page = ReceiptPage:new({receipt=ReceiptsTable.bolo_de_cenoura});

    self.buttons[2].onTheLeft = self.buttons[1]
    self.buttons[2].page = ReceiptPage:new({receipt=ReceiptsTable.bolo_de_chocolate});

end


return Cakes