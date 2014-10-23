--Resize by amtra5
--codea only
resize = {
    resize = function(resize_inputImage, resize_outputScale)
        local resize_outputImage = image(resize_inputImage.width*resize_outputScale, resize_inputImage.height*resize_outputScale)
        for resize_x=1, resize_inputImage.width do
            for resize_y=1, resize_inputImage.width do
            local resize_xMultiplier = resize_x*resize_outputScale
            local resize_yMultiplier = resize_y*resize_outputScale
            local resize_r, resize_g, resize_b, resize_a = resize_inputImage:get(resize_x, resize_y)
                for resize_oX=1, resize_outputScale-1 do
                    for resize_oY=0, resize_outputScale-1 do
                        resize_outputImage:set(resize_xMultiplier+resize_oX, resize_yMultiplier+resize_oY, resize_r, resize_g, resize_b, resize_a)
                    end
                end
            end
        end
        return resize_outputImage
    end
}