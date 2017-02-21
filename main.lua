Home  = require "Home";
Cakes = require "Cakes";

Pages = {home     = Home:new(),
         cakes    = Cakes:new()};

CURRENT_PAGE = nil;
LAST_PAGE = nil;

function runApp(evt)

	  canvas:attrColor(0, 156, 228, 255);
    canvas:drawRect("fill", 0, 0, canvas:attrSize());
    containerApp = canvas:new(1299, 703);

    flowController(evt, containerApp);
    
    canvas:compose(33, 32, containerApp);
    canvas:flush();

end

function flowController(evt, containerApp)
    if (CURRENT_PAGE == nil) then
        CURRENT_PAGE = Pages.home; 
    elseif (CURRENT_PAGE == Pages.home) then
        Pages.home:listener(evt);
    elseif (CURRENT_PAGE == Pages.cakes) then
        Pages.cakes:listener(evt);
    end

    CURRENT_PAGE:show(containerApp);
end


event.register(runApp);