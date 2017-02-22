utils  = require "utils";
Page   = require "Page";
Button = require "Button";

-- Definindo meta tabela de uma Botão
local Home   = utils:inheritsFrom(Page);
Home.buttons = {Button:new({image_path="media/cakes_btn.png", focused=true}),
                Button:new({image_path="media/pastas_btn.png"}),
                Button:new({image_path="media/soups_btn.png"}),
                Button:new({image_path="media/desserts_btn.png"}),
                Button:new({image_path="media/snacks_btn.png"})};


function Home:show(containerApp)
    containerApp:clear()
    containerApp:attrColor(0, 147, 215, 255);
    containerApp:drawRect("fill", 0, 0, containerApp:attrSize());
  
    self:renderMenu(containerApp);
    self:renderImages(containerApp);
    self:renderControls(containerApp);
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


function Home:renderControls(containerApp)
    img_controls = canvas:new("media/controles_secao.png");
    img_controls:attrCrop(0, 0, 152, 35);
    containerApp:compose(33, 675, img_controls);
end


function Home:settingButtons()
    self.buttons[1].below = self.buttons[2]
    self.buttons[1].page  = Pages.cakes
    
    self.buttons[2].above = self.buttons[1]
    self.buttons[2].below = self.buttons[3]
    self.buttons[2].page  = Pages.pastas
    
    self.buttons[3].above = self.buttons[2]
    self.buttons[3].below = self.buttons[4]
    self.buttons[3].page  = Pages.soups
    
    self.buttons[4].above = self.buttons[3]
    self.buttons[4].below = self.buttons[5]
    self.buttons[4].page  = Pages.desserts
    
    self.buttons[5].above = self.buttons[4]
    self.buttons[5].page  = Pages.snacks
end


return Home