local sprite = app.activeSprite
if not sprite then
  return app.alert("There is no active sprite.")
end

app.transaction(
    function()
        local palette = sprite.palettes[1]
        palette:resize(256)
        local lut = { 0x00, 0x25, 0x49, 0x6E, 0x92, 0xB7, 0xDB, 0xFF }
        local i = 0
        for b = 1,4 do
            for g = 1,8 do
                for r = 1,8 do
                    palette:setColor(i, Color{ r=lut[r], g=lut[g], b=0x55*(b-1), a=0xFF })
                    i = i+1
                end
            end
        end
    end)
