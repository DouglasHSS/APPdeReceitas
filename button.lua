-- Definindo meta tabela de uma Botão
local Button       = {} ;
Button.image_path  = nil;
Button.focused     = false;
Button.canvas      = nil;
Button.onTheLeft   = nil;
Button.above       = nil;
Button.onTheRight  = nil;
Button.bellow      = nil;
Button.page        = nil;


function Button:new(o)
    o = o or {}
    setmetatable (o, self)
    self.__index = self
    return o
end


function Button:setCanvas()
    self.canvas = canvas:new(self.image_path);
    if self.focused then
        self:setFocused()
    end
end


function Button:setFocused()
    self.focused = true;
    self.canvas:attrColor(255, 255, 255, 100);
    self.canvas:drawRect("fill", 0, 0, self.canvas:attrSize());
end


function Button:disableFocus()
    self.focused = false;
    self.canvas:attrColor(255, 255, 255, 0);
    self.canvas:drawRect("fill", 0, 0, self.canvas:attrSize());
end


function Button:listener(evt)

    if     (evt.key == "CURSOR_LEFT") and (self.onTheLeft ~= nil) then
        self.onTheLeft:setFocused();
        self:disableFocus();
    elseif (evt.key == "CURSOR_UP")  and (self.above ~= nil)  then
        self.above:setFocused();
        self:disableFocus();
    elseif (evt.key == "CURSOR_RIGHT")  and (self.onTheRight ~= nil) then
        self.onTheRight:setFocused();
        self:disableFocus();
    elseif (evt.key == "CURSOR_DOWN")  and (self.below ~= nil)  then
        self.below:setFocused();
        self:disableFocus();
    elseif (evt.key == "ENTER") and (self.page ~= nil) then
        LAST_PAGE = CURRENT_PAGE;
        CURRENT_PAGE = self.page;
    end
    
end


return Button

