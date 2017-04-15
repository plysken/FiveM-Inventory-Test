function Home()
	MenuTitle = "Inventaire"
	ClearMenu()
	Menu.addButton("Carte de visite","visit",nil)	
	Menu.addButton("Téléphone","phone",nil)
end
function visit()
	MenuTitle = "Visit card"
	ClearMenu()
	Menu.addButton("Montrer","visit_show",nil)	
	Menu.addButton("Lire sa carte de visite","visit_read",nil)
  Menu.addButton("Retour","Home",nil)
end
function visit_show()
MenuTile = "Visit card"
ClearMenu()
Menu.addButton("Indisponnible","visit_show",nil)
  Menu.addButton("Back","Home",nil)
end
function visit_read()
MenuTile = "Visit card"
ClearMenu()
Menu.addButton("Indisponnible","visit_show",nil)
  Menu.addButton("Back","Home",nil)
end
function phone()
	MenuTitle = "Téléphone"
	ClearMenu()
	Menu.addButton("Répertoire","contact",nil)	
	Menu.addButton("----------","phone",nil)
  Menu.addButton("911","911",nil)
  Menu.addButton("Taxi","Taxi",nil)
  Menu.addButton("Dépanneur","towtruck",nil)
end
function contact()
MenuTile = "Répertoire"
ClearMenu()
Menu.addButton("Indisponnible","contact",nil)
  Menu.addButton("Back","phone",nil)
end
function 911()
MenuTile = "911"
ClearMenu()
Menu.addButton("Indisponnible","visit_show",nil)
  Menu.addButton("Back","Home",nil)
end
function towtruck()
end
function Taxi()

end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1,Keys["K"]) then
		
			Home()                     -- Menu to draw
			Menu.hidden = not Menu.hidden    -- Hide/Show the menu

		end
		Menu.renderGUI()     -- Draw menu on each tick if Menu.hidden = false
	end
end)
