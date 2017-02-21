Button = require "Button";

-- Definindo meta tabela de uma Botão
local Home   = {} ;
Home.title   = "home";
Home.buttons = {Button:new({image_path="media/cakes_btn.png", focused=true}),
                Button:new({image_path="media/pastas_btn.png"}),
                Button:new({image_path="media/soups_btn.png"}),
                Button:new({image_path="media/desserts_btn.png"}),
                Button:new({image_path="media/snacks_btn.png"})};


function Home:new(o)
    o = o or {}
    setmetatable (o, self)
    self.__index = self
    return o
end


function Home:show(containerApp)
    containerApp:clear()
    containerApp:attrColor(0, 147, 215, 255);
    containerApp:drawRect("fill", 0, 0, containerApp:attrSize());
  
    self:renderMenu(containerApp);
    self:renderImages(containerApp);
end


function Home:renderMenu(containerApp)
    self:settingButtons();
    
    x, y = 50, 150
    for _, button in pairs(self.buttons) do
        button:setCanvas();
        containerApp:compose(x, y, button.canvas);
        w, h = button.canvas:attrSize();
        y = y + h + 20;
    end
end


function Home:renderImages(containerApp)
    header_home = canvas:new("media/titulo_app.png");
    image_home  = canvas:new("media/image_home.png");
    containerApp:compose(510, 50, header_home);
    containerApp:compose(420, 150, image_home);
end


function Home:settingButtons()
    self.buttons[1].below = self.buttons[2]
    
    self.buttons[2].above = self.buttons[1]
    self.buttons[2].below = self.buttons[3]
    
    self.buttons[3].above = self.buttons[2]
    self.buttons[3].below = self.buttons[4]
    
    self.buttons[4].above = self.buttons[3]
    self.buttons[4].below = self.buttons[5]
    
    self.buttons[5].above = self.buttons[4]  
end


function Home:listener(evt)
    if (evt.class == "key") then
        focusedBtn = self:getFocusedBtn()
        focusedBtn:listener(evt)
    end
end


function Home:getFocusedBtn()
    for _, button in pairs(self.buttons) do
        if (button.focused) then
            return button 
        end
    end
end


return Home