Button = require "Button";

-- Definindo meta tabela de uma Botão
local Home   = {} ;
Home.title   = nil;
Home.buttons = {cakes_btn    = Button:new({image_path="media/cakes_btn.png", focused=true}),
                pastas_btn   = Button:new({image_path="media/pastas_btn.png"}),
                soups_btn    = Button:new({image_path="media/soups_btn.png"}),
                desserts_btn = Button:new({image_path="media/desserts_btn.png"}),
                snacks_btn   = Button:new({image_path="media/snacks_btn.png"})};


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
    self.buttons.cakes_btn.below = self.buttons.pastas_btn
    
    self.buttons.pastas_btn.above  = self.buttons.cakes_btn
    self.buttons.pastas_btn.bellow = self.buttons.soups_btn
    
    self.buttons.soups_btn.above   = self.buttons.pastas_btn
    self.buttons.soups_btn.bellow  = self.buttons.desserts_btn
    
    self.buttons.desserts_btn.above  = self.buttons.soups_btn
    self.buttons.desserts_btn.bellow = self.buttons.snacks_btn
    
    self.buttons.snacks_btn.above = self.buttons.desserts_btn  
end


return Home