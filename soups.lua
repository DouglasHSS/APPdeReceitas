utils = require "utils";
Button = require "Button";
Page = require "Page";
ReceiptPage   = require "Receipts";
ReceiptsTable = require "ReceiptsTable";

-- Definindo Tela de Sopas
local Soups   = utils:inheritsFrom(Page);
Soups.buttons = {Button:new({image_path="media/imagens_receita/sopas/caldo_verde.png", focused=true})};
Soups.header_img_path = "media/imagens_receita/sopas/sopas_titulo.png";


function Soups:settingButtons()
    self.buttons[1].page = ReceiptPage:new({receipt=ReceiptsTable.caldo_verde});
end


return Soups