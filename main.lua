Home = require "Home";

Pages = {home=Home:new()};

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
        Pages.home:show(containerApp);
        CURRENT_PAGE = Pages.home.title; 
    elseif (CURRENT_PAGE == Pages.home.title) then
        Pages.home:listener(evt);
        Pages.home:show(containerApp);
    end
end


event.register(runApp);