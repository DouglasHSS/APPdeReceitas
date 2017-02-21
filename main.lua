Home, Cakes, Pastas = require "Home", require "Cakes", require  "Pastas";
Soups, Desserts, Snacks =  require "Soups", require  "Desserts", require  "Snacks";

Pages = {home = Home:new(), cakes = Cakes:new(), pastas = Pastas:new(),
         soups = Soups:new(), desserts = Desserts:new(), snacks = Snacks:new()};

CURRENT_PAGE, LAST_PAGE = nil, nil;

function runApp(evt)

	  canvas:attrColor(0, 156, 228, 255);
    canvas:drawRect("fill", 0, 0, canvas:attrSize());
    containerApp = canvas:new(1299, 703);

     if (CURRENT_PAGE == nil) then
        CURRENT_PAGE = Pages.home; 
     else
        if (evt.key == "BLUE")then
            CURRENT_PAGE = LAST_PAGE;
        elseif (evt.key == "RED")then
            CURRENT_PAGE = LAST_PAGE;
        else
            CURRENT_PAGE:listener(evt);
        end
    end
    
    CURRENT_PAGE:show(containerApp);
    
    canvas:compose(33, 32, containerApp);
    canvas:flush();

end

event.register(runApp);