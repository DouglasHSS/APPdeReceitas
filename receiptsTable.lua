bolo_de_cenoura = {ingredients="txt/bolo_de_cenoura_ingredientes.txt",
                   cooking="txt/bolo_de_cenoura_preparo.txt",
                   receipt_image=nil,
                   receipt_title="media/imagens_receita/bolos/bolo_cenoura_titulo.png"};
                   
bolo_de_chocolate = {ingredients="txt/bolo_de_chocolate_ingredientes.txt",
                     cooking="txt/bolo_de_chocolate_preparo.txt",
                     receipt_image=nil,
                     receipt_title="media/imagens_receita/bolos/bolo_chocolate_titulo.png"};
                     
macarrao = {ingredients="txt/macarrao_ingredientes.txt",
            cooking="txt/macarrao_preparo.txt",
            receipt_image=nil,
            receipt_title="media/imagens_receita/massas/macarrao_titulo.png"};


local ReceiptsTable = {bolo_de_cenoura=bolo_de_cenoura,
                       bolo_de_chocolate=bolo_de_chocolate,
                       macarrao=macarrao};

return ReceiptsTable