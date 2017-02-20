-- Definindo meta tabela de uma Botão
local Button       = {} ;
Button.image_path  = nil;
Button.focused     = false;
Button.canvas      = nil;
Button.onTheLeft   = nil;
Button.above       = nil;
Button.onTheRight  = nil;
Button.bellow      = nil;
Button.name_page   = nil;

function Button:new(o)
    o = o or {}
    setmetatable (o, self)
    self.__index = self
    return o
end

function Button:setCanvas()
    self.canvas = canvas:new(self.image_path);
    if self.focused then
        self.canvas:attrColor(255, 255, 255, 100);
        self.canvas:drawRect("fill", 0, 0, canvas:attrSize());
    end
end


return Button

