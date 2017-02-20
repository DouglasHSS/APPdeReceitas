Home = require "Home";

Pages = {home="home"};

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
        Home:show(containerApp);
        CURRENT_PAGE = "home"; 
    elseif ( evt.class == "key" ) then
      
      else if (CURRENT_PAGE == Pages.home) then
          home = Home:new();
          home:listener(evt);
      end
        
    end

end


event.register(runApp);