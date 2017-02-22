io = require "io";

-- Definindo Tela da Receita
local Receipts   = {};
Receipts.receipt = nil;


function Receipts:new(o)
    o = o or {}
    setmetatable (o, self)
    self.__index = self
    return o
end


function Receipts:setReceipt(receipt)
    self.receipt = receipt;
    return self
end

function Receipts:listener(evt)
    -- Não possui Botões para serem escutados.
end


function Receipts:show(containerApp)
    containerApp:clear()
    containerApp:attrColor(0, 147, 215, 255);
    containerApp:drawRect("fill", 0, 0, containerApp:attrSize());
  
    self:renderTitle(containerApp);
    self:renderIngredients(containerApp);
    self:renderCooking(containerApp);
    self:renderControls(containerApp);
end


function Receipts:renderTitle(containerApp)
    header_title = canvas:new(self.receipt.receipt_title);
    containerApp:compose(325, 25, header_title);
end

function Receipts:renderIngredients(containerApp)
    ingredientsCanvas = canvas:new(560,305);
    ingredientsCanvas:attrColor(0, 135, 198, 255);
    ingredientsCanvas:drawRect("fill", 0, 0, ingredientsCanvas:attrSize());
   
    ingredientsCanvas:attrFont("Tiresias", 17, "bold");
    ingredientsCanvas:attrColor(255,255,255,255);
    ingredientsCanvas:drawText(190, 5, "Ingredientes");
   
    ingredientsCanvas:attrFont("Tiresias", 13, "bold");
    y = 40;
    for line in io.lines(self.receipt.ingredients) do
        ingredientsCanvas:drawText(15, y, tostring(line));
        y = y + 20
    end
    containerApp:compose(30, 100, ingredientsCanvas);
end


function Receipts:renderCooking(containerApp)
    cookingCanvas = canvas:new(1239, 260);
    cookingCanvas:attrColor(0, 135, 198, 255);
    cookingCanvas:drawRect("fill", 0, 0, cookingCanvas:attrSize());
   
    cookingCanvas:attrFont("Tiresias", 17, "bold");
    cookingCanvas:attrColor(255,255,255,255);
    cookingCanvas:drawText(190, 5, "Modo de Preparo");
   
    cookingCanvas:attrFont("Tiresias", 13, "bold");
    y = 40;
    for line in io.lines(self.receipt.cooking) do
        cookingCanvas:drawText(15, y, tostring(line));
        y = y + 20
    end
    containerApp:compose(30, 410, cookingCanvas);
end


function Receipts:renderControls(containerApp)
    img_controls = canvas:new("media/controles_secao.png");
    img_controls:attrCrop(152, 0, 133, 35);
    containerApp:compose(33, 675, img_controls);
end



return Receipts