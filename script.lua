function on_place(event)
    
    BBAPI.log(event.material)
    if event.material == "BRAIN_CORAL_BLOCK" then
        BBAPI.log("coral")

        BBAPI.intime(5.0,counterbraincoral,event)
    
    elseif event.material == "CARVED_PUMPKIN" then

        BBAPI.log("pumkin")
        pumpkinchoice = 0
        
        allpumpkinx = BBAPI.checkarea(event.placer, "CARVED_PUMPKIN", {{event.x, event.y, event.z},{event.x + 5, event.y + 1, event.z}}) or 
        BBAPI.checkarea(event.placer, "CARVED_PUMPKIN", {{event.x, event.y - 1, event.z},{event.x + 5, event.y, event.z}}) or 
        BBAPI.checkarea(event.placer, "CARVED_PUMPKIN", {{event.x - 5, event.y - 1, event.z},{event.x, event.y, event.z}}) or 
        BBAPI.checkarea(event.placer, "CARVED_PUMPKIN", {{event.x - 5, event.y, event.z},{event.x, event.y + 1, event.z}})
        
        allpumpkinz = BBAPI.checkarea(event.placer, "CARVED_PUMPKIN", {{event.x, event.y, event.z},{event.x, event.y + 1, event.z + 5}}) or 
        BBAPI.checkarea(event.placer, "CARVED_PUMPKIN", {{event.x, event.y - 1, event.z},{event.x, event.y, event.z + 5}}) or 
        BBAPI.checkarea(event.placer, "CARVED_PUMPKIN", {{event.x, event.y - 1, event.z - 5},{event.x, event.y, event.z}}) or 
        BBAPI.checkarea(event.placer, "CARVED_PUMPKIN", {{event.x, event.y, event.z - 5},{event.x, event.y + 1, event.z}})
        
     BBAPI.log(allpumpkinx)   
     BBAPI.log(allpumpkinz) 

        if allpumpkinx == true then
            pumpkinchoice = 1
            BBAPI.log("x")
        end
        if allpumpkinz == true then
            pumpkinchoice = 2
            BBAPI.log("z")
        end

        

    if allpumpkinx or allpumpkinz then
        BBAPI.log("AWESOME SAUCE")
        BBAPI.intime(5.0,countercarvedpumpkinwall,{event,pumpkinchoice})
        BBAPI.settime(event.placer,18000)

    end

    


    elseif event.material == "CORNFLOWER" then
        BBAPI.log("rain")
       BBAPI.setweather(event.placer, "rain")
       BBAPI.setblock(event.placer, {event.x, event.y, event.z}, "AIR")
    
    elseif event.material == "AMETHYST_CLUSTER" then
        if BBAPI.getblock(event.placer, {event.x + 1, event.y, event.z }) == "OBSIDIAN" and
        BBAPI.getblock(event.placer, {event.x - 1, event.y, event.z }) == "OBSIDIAN" and
        BBAPI.getblock(event.placer, {event.x, event.y, event.z + 1 }) == "OBSIDIAN" and
        BBAPI.getblock(event.placer, {event.x, event.y, event.z -1 }) == "OBSIDIAN" 
        then
            BBAPI.setscene(event.placer, "amethyst")
            BBAPI.setblock(event.placer, {event.x + 1, event.y, event.z },"AIR")  
        BBAPI.setblock(event.placer, {event.x - 1, event.y, event.z }, "AIR")  
        BBAPI.setblock(event.placer, {event.x, event.y, event.z + 1 }, "AIR")   
        BBAPI.setblock(event.placer, {event.x, event.y, event.z -1 }, "AIR") 
        BBAPI.setblock(event.placer, {event.x, event.y, event.z}, "AIR")
        
        end

    elseif event.material == "SNOW_BLOCK" then
        BBAPI.log("funny"..BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}))
        if BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}) == "LIGHT_GRAY_STAINED_GLASS" then 
            BBAPI.log(BBAPI.getblock(event.placer, {event.x + event.y - 1, event.z}))
            BBAPI.setscene(event.placer, "snowwarp")
            BBAPI.setblock(event.placer, {event.x, event.y - 1, event.z}, "AIR")
            BBAPI.setblock(event.placer, {event.x, event.y, event.z}, "AIR")

        end

    elseif event.material == "LANTERN" then
        BBAPI.log("funny"..BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}))
        if BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}) == "END_ROD" then 
            BBAPI.log(BBAPI.getblock(event.placer, {event.x + event.y - 1, event.z}))
            BBAPI.setscene(event.placer, "firewarp")
            BBAPI.setblock(event.placer, {event.x, event.y , event.z}, "AIR")
            BBAPI.setblock(event.placer, {event.x, event.y - 1, event.z}, "AIR")

        end

    elseif event.material == "SOUL_LANTERN" then
        BBAPI.log("funny"..BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}))
        if BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}) == "END_ROD" then 
            BBAPI.log(BBAPI.getblock(event.placer, {event.x + event.y - 1, event.z}))
            BBAPI.setscene(event.placer, "icewarp")
            BBAPI.setblock(event.placer, {event.x, event.y , event.z}, "AIR")
            BBAPI.setblock(event.placer, {event.x, event.y - 1, event.z}, "AIR")

        end

    elseif event.material == "TURTLE_EGG" then
        if BBAPI.getblock(event.placer, {event.x + 1, event.y, event.z }) == "DRIED_KELP_BLOCK" and
        BBAPI.getblock(event.placer, {event.x - 1, event.y, event.z }) == "DRIED_KELP_BLOCK" and
        BBAPI.getblock(event.placer, {event.x, event.y, event.z + 1 }) == "DRIED_KELP_BLOCK" and
        BBAPI.getblock(event.placer, {event.x, event.y, event.z -1 }) == "DRIED_KELP_BLOCK" 
        then
            BBAPI.setscene(event.placer, "oceanwarp")
            BBAPI.setblock(event.placer, {event.x + 1, event.y, event.z },"AIR")  
        BBAPI.setblock(event.placer, {event.x - 1, event.y, event.z }, "AIR")  
        BBAPI.setblock(event.placer, {event.x, event.y, event.z + 1 }, "AIR")   
        BBAPI.setblock(event.placer, {event.x, event.y, event.z -1 }, "AIR") 
        BBAPI.setblock(event.placer, {event.x, event.y, event.z}, "AIR")
        
        end
    elseif event.material == "SCULK_SENSOR" then
        BBAPI.log("funny"..BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}))
        if BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}) == "SCULK" then 
            BBAPI.log(BBAPI.getblock(event.placer, {event.x + event.y - 1, event.z}))
            BBAPI.setscene(event.placer, "skulkwarp")
            BBAPI.setblock(event.placer, {event.x, event.y , event.z}, "AIR")
            BBAPI.setblock(event.placer, {event.x, event.y - 1, event.z}, "AIR")

        end

    elseif event.material == "SHROOMLIGHT" then
        if BBAPI.getblock(event.placer, {event.x + 1, event.y, event.z }) == "RED_MUSHROOM_BLOCK" and
        BBAPI.getblock(event.placer, {event.x - 1, event.y, event.z }) == "RED_MUSHROOM_BLOCK" and
        BBAPI.getblock(event.placer, {event.x, event.y, event.z + 1 }) == "RED_MUSHROOM_BLOCK" and
        BBAPI.getblock(event.placer, {event.x, event.y, event.z -1 }) == "RED_MUSHROOM_BLOCK" then
            BBAPI.setscene(event.placer, "mushroomwarp")
            BBAPI.setblock(event.placer, {event.x + 1, event.y, event.z },"AIR")  
        BBAPI.setblock(event.placer, {event.x - 1, event.y, event.z }, "AIR")  
        BBAPI.setblock(event.placer, {event.x, event.y, event.z + 1 }, "AIR")   
        BBAPI.setblock(event.placer, {event.x, event.y, event.z -1 }, "AIR") 
        BBAPI.setblock(event.placer, {event.x, event.y, event.z}, "AIR")

        end
    elseif event.material == "LECTERN" then
        BBAPI.log("funny"..BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}))
        if BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}) == "BOOKSHELF" then 
            BBAPI.log(BBAPI.getblock(event.placer, {event.x + event.y - 1, event.z}))
            BBAPI.setscene(event.placer, "bookwarp")
            BBAPI.setblock(event.placer, {event.x, event.y , event.z}, "AIR")
            BBAPI.setblock(event.placer, {event.x, event.y - 1, event.z}, "AIR")

        end
    elseif event.material == "DRAGON_EGG" then
        if BBAPI.getblock(event.placer, {event.x + 1, event.y, event.z }) == "AMETHYST_BLOCK" and
        BBAPI.getblock(event.placer, {event.x - 1, event.y, event.z }) == "AMETHYST_BLOCK" and
        BBAPI.getblock(event.placer, {event.x, event.y, event.z + 1 }) == "AMETHYST_BLOCK" and
        BBAPI.getblock(event.placer, {event.x, event.y, event.z -1 }) == "AMETHYST_BLOCK" then
            BBAPI.setscene(event.placer, "skywarp")
            BBAPI.setblock(event.placer, {event.x + 1, event.y, event.z },"AIR")  
        BBAPI.setblock(event.placer, {event.x - 1, event.y, event.z }, "AIR")  
        BBAPI.setblock(event.placer, {event.x, event.y, event.z + 1 }, "AIR")   
        BBAPI.setblock(event.placer, {event.x, event.y, event.z -1 }, "AIR") 
        BBAPI.setblock(event.placer, {event.x, event.y, event.z}, "AIR")

        
        end
    elseif event.material == "REDSTONE_TORCH" then
        BBAPI.log("funny"..BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}))
        if BBAPI.getblock(event.placer, {event.x, event.y - 1, event.z}) == "REDSTONE_BLOCK" then 
            BBAPI.log(BBAPI.getblock(event.placer, {event.x + event.y - 1, event.z}))
            BBAPI.setscene(event.placer, "redstonewarp")
            BBAPI.setblock(event.placer, {event.x, event.y , event.z}, "AIR")
            BBAPI.setblock(event.placer, {event.x, event.y - 1, event.z}, "AIR")

        end
    elseif event.material == "CAMPFIRE" then
        BBAPI.log("cumfire")
        if BBAPI.getblock(event.placer, {event.x + 1, event.y, event.z }) == "TORCH" and
        BBAPI.getblock(event.placer, {event.x - 1, event.y, event.z }) == "TORCH" and
        BBAPI.getblock(event.placer, {event.x, event.y, event.z + 1 }) == "TORCH" and
        BBAPI.getblock(event.placer, {event.x, event.y, event.z -1 }) == "TORCH" then
            BBAPI.log("bettr work r mad")
            BBAPI.setscene(event.placer, "sunwarp")
            BBAPI.settime(event.placer, 0)
            BBAPI.setblock(event.placer, {event.x + 1, event.y, event.z },"AIR")  
        BBAPI.setblock(event.placer, {event.x - 1, event.y, event.z }, "AIR")  
        BBAPI.setblock(event.placer, {event.x, event.y, event.z + 1 }, "AIR")   
        BBAPI.setblock(event.placer, {event.x, event.y, event.z -1 }, "AIR") 
        BBAPI.setblock(event.placer, {event.x, event.y, event.z}, "AIR")
        end
    end
end







function counterbraincoral(event)
    BBAPI.log(BBAPI.getblock(event.placer,{event.x,event.y+1,event.z}))
    BBAPI.log(string.format("x: %s y: %s z: %s", event.x, event.y + 1, event.z))

    if BBAPI.getblock(event.placer,{event.x,event.y+1,event.z}) == "IRON_TRAPDOOR" then
        BBAPI.log("coralcounter")

        BBAPI.intime(5.0,counterbraincoral2,event)

    else BBAPI.execute("kill "..event.opps.name)
    end
end

function counterbraincoral2(event)
    if BBAPI.getblock(event.placer,{event.x,event.y,event.z+1}) == "LEVER" then
        
        BBAPI.intime(5.0,counterbraincoral3,event)
    
    elseif BBAPI.getblock(event.placer,{event.x,event.y,event.z-1}) == "LEVER" then
        
        BBAPI.intime(5.0,counterbraincoral3,event)
    
    elseif BBAPI.getblock(event.placer,{event.x+1,event.y,event.z}) == "LEVER" then
        
        BBAPI.intime(5.0,counterbraincoral3,event)
    
    elseif BBAPI.getblock(event.placer,{event.x-1,event.y,event.z}) == "LEVER" then
        
        BBAPI.intime(5.0,counterbraincoral3,event)
    end
end

function counterbraincoral3(event)
    if BBAPI.getblock(event.placer,{event.x-1,event.y+1,event.z}) ~= "LIGHTNING_ROD" then
        BBAPI.execute("kill "..event.opps.name)
        BBAPI.log("brain1")

    elseif BBAPI.getblock(event.placer,{event.x+1,event.y+1,event.z}) ~= "LIGHTNING_ROD" then
        BBAPI.execute("kill "..event.opps.name)
        BBAPI.log("brain2")

    elseif BBAPI.getblock(event.placer,{event.x,event.y+1,event.z-1}) ~= "LIGHTNING_ROD" then
        BBAPI.execute("kill "..event.opps.name)
        BBAPI.log("brain3")

    elseif BBAPI.getblock(event.placer,{event.x,event.y+1,event.z+1}) ~= "LIGHTNING_ROD" then
        BBAPI.execute("kill "..event.opps.name)
        BBAPI.log("brain4")
    end
end

function countercarvedpumpkinwall(arguments)
    event = arguments[1]
    pumpkinchoice = arguments[2]
    if  event.material == "DAYLIGHT_DETECTOR" then
        alldaylightdetector = true
        
        BBAPI.checkarea(event.placer, "DAYLIGHT_DETECTOR", {{event.x + 5, event.y, event.z},{event.x + event.y, event.z}})

                BBAPI.settime(event.placer,18000)
                end
            end
        
        
    



