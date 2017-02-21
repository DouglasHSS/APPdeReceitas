-- Definindo meta tabela de uma Página
local Page   = {} ;

function Page:new(o)
    o = o or {}
    setmetatable (o, self)
    self.__index = self
    return o
end


function Page:show(containerApp)
    containerApp:clear()
    containerApp:attrColor(0, 147, 215, 255);
    containerApp:drawRect("fill", 0, 0, containerApp:attrSize());
  
    self:renderReceiptButtons(containerApp);
    self:renderTitle(containerApp);
    self:renderControls(containerApp);
end


function Page:renderTitle(containerApp)
    header_title = canvas:new(self.header_img_path);
    containerApp:compose(450, 25, header_title);
end


function Page:renderControls(containerApp)
    img_controls = canvas:new("media/controles_secao.png");
    containerApp:compose(33, 675, img_controls);
end


function Page:renderReceiptButtons(containerApp)
    self:settingButtons();
    
    x, y = 50, 150
    for _, button in pairs(self.buttons) do
        button:setCanvas();
        containerApp:compose(x, y, button.canvas);
        w, h = button.canvas:attrSize();
        x = x + w + 40;
    end
end


function Page:listener(evt)
    if (evt.class == "key") then
        focusedBtn = self:getFocusedBtn()
        focusedBtn:listener(evt)
    end
end


function Page:getFocusedBtn()
    for _, button in pairs(self.buttons) do
        if (button.focused) then
            return button 
        end
    end
end


return Page