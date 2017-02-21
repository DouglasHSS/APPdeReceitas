utils = require "utils";
Button = require "Button";
Page = require "Page";
ReceiptPage   = require "Receipts";
ReceiptsTable = require "ReceiptsTable";

-- Definindo Tela de Sobremesas
local Desserts   = utils:inheritsFrom(Page);
Desserts.buttons = {Button:new({image_path="media/imagens_receita/sobremesas/baba_de_moca.png", focused=true}),
                    Button:new({image_path="media/imagens_receita/sobremesas/brigadeiro.png"}),
                    Button:new({image_path="media/imagens_receita/sobremesas/queijadinha.png"})};
Desserts.header_img_path = "media/imagens_receita/sobremesas/sobremesas_titulo.png";


function Desserts:settingButtons()
    self.buttons[1].onTheRight = self.buttons[2]
    self.buttons[1].page = ReceiptPage:new({receipt=ReceiptsTable.baba_de_moca});
    
    self.buttons[2].onTheLeft  = self.buttons[1]
    self.buttons[2].onTheRight = self.buttons[3]
    self.buttons[2].page = ReceiptPage:new({receipt=ReceiptsTable.brigadeiro});
    
    self.buttons[3].onTheLeft = self.buttons[2]
    self.buttons[3].page = ReceiptPage:new({receipt=ReceiptsTable.queijadinha});

end


return Desserts