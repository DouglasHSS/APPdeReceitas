utils = require "utils";
Button = require "Button";
Page = require "Page";

-- Definindo Tela de Massas
local Pastas   = utils:inheritsFrom(Page);
Pastas.buttons = {Button:new({image_path="media/imagens_receita/massas/macarrao.png", focused=true})};
Pastas.header_img_path = "media/imagens_receita/massas/massas_titulo.png";


function Pastas:settingButtons()
    
    self.buttons[1].page = ReceiptPage:new({receipt=ReceiptsTable.macarrao});
end


return Pastas