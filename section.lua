-- Definindo meta tabela de uma Seção que recibe
-- varias receitas a serem escolhida
local Section   = {} ;

function Section:new(o)
    o = o or {}
    setmetatable (o, self)
    self.__index = self
    return o
end


function Section:show(containerApp)
    containerApp:clear()
    containerApp:attrColor(0, 147, 215, 255);
    containerApp:drawRect("fill", 0, 0, containerApp:attrSize());
  
    self:renderReceiptButtons(containerApp);
    self:renderTitle(containerApp);
end


function Section:renderReceiptButtons(containerApp)
    self:settingButtons();
    
    x, y = 50, 150
    for _, button in pairs(self.buttons) do
        button:setCanvas();
        containerApp:compose(x, y, button.canvas);
        w, h = button.canvas:attrSize();
        x = x + w + 40;
    end
end


function Section:listener(evt)
    if (evt.class == "key") then
        focusedBtn = self:getFocusedBtn()
        focusedBtn:listener(evt)
    end
end


function Section:getFocusedBtn()
    for _, button in pairs(self.buttons) do
        if (button.focused) then
            return button 
        end
    end
end


return Section