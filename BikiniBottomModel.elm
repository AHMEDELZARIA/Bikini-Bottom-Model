-- Main function
myEntities model =  
    [ 
    
    axes
    ,
    fish model
    |> move3D (0, (repeatDuration -60 20 400 model.time), 40*sin(model.time))
    ,
    fish model
    |> move3D (60*sin(model.time), (repeatDuration -60 20 400 model.time), 0)
    ,
    spongebobVillage model
    ]
    
-- The following is the combination of all models in one
spongebobVillage model = group3D

 [
  square3D 10000
  |> matte (Color.rgb255 235 232 174)
  ,
  truncatedCone 10 20 55 model.meshStore
  |> matte Color.darkBlue
  |> scale3D 4
  ,
  box 50 10 10
  |> matte Color.lightBlue
  |> scale3D 1.5
  |> rotateZ3D (degrees 90)
  |> move3D (50, 0, 150)
  ,
  polyCylinder ([(18.797,-3.356),(24.615,-3.356),(22.601,12.531),(20.587,12.307),(18.797,-3.356)]) 4 model.meshStore
  |> matte Color.lightBlue
  |> scale3D 4
  |> rotateY3D (degrees 90)
  |> rotateX3D (degrees 90)
  |> move3D (56, -85, 92)
  ,
  cylinder 10 15
  |> matte Color.darkBrown
  |> scale3D 1.49
  |> rotateY3D (degrees 90)
  |> move3D (69, 0, 40)
  ,
  box 20 10 15
  |> matte Color.darkBrown
  |> scale3D 2
  |> rotateX3D (degrees 90)
  |> rotateY3D (degrees 90)
  |> move3D (70, 0, 20)
  ,
  ring 10 3 model.meshStore
  |> matte Color.lightBlue
  |> scale3D 1
  |> rotateY3D (degrees 90)
  |> move3D (58, -17, 128)
  ,
  ring 10 3 model.meshStore
  |> matte Color.lightBlue
  |> scale3D 1
  |> rotateY3D (degrees 90)
  |> move3D (58, 17, 128)
  ,
  cylinder 10 15
  |> matte Color.lightBlue
  |> scale3D 0.8
  |> rotateY3D (degrees 90)
  |> move3D (53, 17, 128)
  ,
  cylinder 10 15
  |> matte Color.lightBlue
  |> scale3D 0.8
  |> rotateY3D (degrees 90)
  |> move3D (53, -17, 128)
  ,
  box 20 30 70
  |> matte Color.lightBlue
  |> move3D (0, -67, 117)
  ,
  box 20 30 70
  |> matte Color.lightBlue
  |> move3D (0, 67, 117)
  ,
  rectangle3D 20 50
  |> matte (Color.rgb255 79 80 87)
  |> move3D (100, 0, 3) 
  ,
  rectangle3D 20 50
  |> matte (Color.rgb255 79 80 87)
  |> move3D (140, 0, 3) 
  ,
  rectangle3D 20 50
  |> matte (Color.rgb255 79 80 87)
  |> move3D (180, 0, 3) 
  ,
  rectangle3D 20 50
  |> matte (Color.rgb255 79 80 87)
  |> move3D (220, 0, 3)
  ,
  rectangle3D 40 250
  |> matte (Color.rgb255 79 80 87)
  |> rotateZ3D (degrees 90)
  |> move3D (110, 350, 3)
  ,
  spongeBobHouse model
  |> rotateZ3D (degrees 180)
  |> move3D (0, 350, -40)
  ,
  rectangle3D 70 1000
  |> matte (Color.rgb255 79 80 87)
  |> move3D (270, 0, 3)
  ,
  patrickHouse 
  |> move3D (0, -450, 0)
  ,
  rectangle3D 40 250
  |> matte (Color.rgb255 79 80 87)                          
  |> rotateZ3D (degrees 90)
  |> move3D (110, -350, 3)
  ,
  patrick model
  |> move3D (85, -400, 0)
  ,
  theKrustyKrab model
  |> rotateY3D (degrees 180)
  |> rotateY3D (degrees 180)
  |> rotateZ3D (degrees 180)
  |> move3D (650, 0, 6)
  ,
  rectangle3D 200 60
  |> matte (Color.rgb255 79 80 87)
  |> move3D (355, 0, 5)
 ]

-- The following is the implementation and build of the krusty krab model using a variety of 3d shapes
theKrustyKrab model = group3D
 
 [
    texturedCylinder 20 45 model.meshStore
    |> textured (getColorTexture "wood" model) (constantTexture 0) (constantTexture 0)
    |> scale3D 3
    |> rotateX3D (degrees 90)
    |> move3D (0, 65, 25)
    ,
    box 60 10 15
    |> matte (Color.rgb255 143 127 81)
    |> rotateZ3D (degrees 90)     
    |> move3D (62, 47.2, 0)
    ,
    box 120 14.5 10
    |> matte (Color.rgb255 143 127 81)
    |> rotateX3D (degrees 90)
    |> move3D (3.2, 72, 0)
    ,
    box 154 10 15
    |> matte (Color.rgb255 143 127 81)
    |> rotateZ3D (degrees 90)
    |> move3D (-61, 0, 0)
    ,
    box 120 14.5 10
    |> matte (Color.rgb255 143 127 81)
    |> rotateX3D (degrees 90)
    |> move3D (3.2, -72, 0)
    ,
    box 60 10 15
    |> matte (Color.rgb255 143 127 81)
    |> rotateZ3D (degrees 90)
    |> move3D (62, -47.2, 0)
    ,
    ring 30 4 model.meshStore
    |> textured (getColorTexture "wood" model) (constantTexture 0) (constantTexture 0)
    |> scale3D 2.25
    |> rotateX3D (degrees -90)
    |> move3D (0,-69, 14)
    ,
    ring 30 4 model.meshStore
    |> textured (getColorTexture "wood" model) (constantTexture 0) (constantTexture 0)
    |> scale3D 2.25
    |> rotateX3D (degrees -90)
    |> move3D (0, 69, 14)
    ,
    box 15 10 40
    |> matte (Color.rgb255 143 127 81)
    |> move3D (59.5 , -22, 20)
    ,
    box 15 10 40
    |> matte (Color.rgb255 143 127 810)
    |> move3D (59.5 , 22, 20)
    ,
    box 15 10 54
    |> matte (Color.rgb255 143 127 81)
    |> rotateX3D (degrees 90)
    |> move3D (59.5, 0, 45)
    ,
    rectangle3D 54 17.5
    |> textured (getColorTexture "glass" model) (constantTexture 0) (constantTexture 0)
    |> rotateY3D (degrees 90)
    |> move3D (61, 9, 20)
    ,
    rectangle3D 54 17.5
    |> textured (getColorTexture "glass" model) (constantTexture 0) (constantTexture 0)
    |> rotateY3D (degrees 90)
    |> move3D (61, -9, 20)
    ,
    rectangle3D 7 3
    |> matte (Color.rgb255 191 191 55) 
    |> rotateY3D (degrees 90)
    |> move3D (63, 4, 21)
    ,
    rectangle3D 7 3
    |> matte (Color.rgb255 191 191 55) 
    |> rotateY3D (degrees 90)
    |> move3D (63, -4, 21)
    ,
    rectangle3D 38 60
    |> textured (getColorTexture "glass" model) (constantTexture 0) (constantTexture 0)
    |> rotateX3D (degrees 90)
    |> rotateZ3D (degrees 90)
    |> move3D (60, -45, 20)
    ,
    rectangle3D 38 60
    |> textured (getColorTexture "glass" model) (constantTexture 0) (constantTexture 0)
    |> rotateX3D (degrees 90)
    |> rotateZ3D (degrees 90)
    |> move3D (60, 45, 20)
    ,
    cylinder 2 65
    |> matte (Color.rgb255 143 127 81)
    |> move3D (0 , 0, 85)
    ,
    sphere 4
    |> matte (Color.rgb255 143 127 81)
    |> move3D (0, 0, 115)
    ,
    cylinder 1 25
    |> matte (Color.rgb255 143 127 81)
    |> rotateY3D (degrees 90)
    |> rotateY3D (degrees 135)
    |> move3D (0 , 0, 115)
    ,
    cylinder 1 25
    |> matte (Color.rgb255 143 127 81)
    |> rotateY3D (degrees -90)
    |> rotateY3D (degrees -135)
    |> move3D (0 , 0, 115)
    ,
    sphere 2
    |> matte (Color.rgb255 143 127 81)
    |> move3D (9 , 0, 124)
    ,
    sphere 2
    |> matte (Color.rgb255 143 127 81)
    |> move3D (9 , 0, 106)
    ,
    sphere 2
    |> matte (Color.rgb255 143 127 81)
    |> move3D (-9 , 0, 124)
    ,
    sphere 2
    |> matte (Color.rgb255 143 127 81)
    |> move3D (-9 , 0, 106)
    ,
    rectangle3D 120 60
    |> textured (getColorTexture "glass" model) (constantTexture 0) (constantTexture 0) 
    |> rotateX3D (degrees 90)
    |> rotateZ3D (degrees 180)
    |> move3D (0, -71, 20)
    ,
    rectangle3D 120 60
    |> textured (getColorTexture "glass" model) (constantTexture 0) (constantTexture 0) 
    |> rotateX3D (degrees 90)
    |> rotateZ3D (degrees 180)
    |> move3D (0, 68, 20)
    ,
    cylinder 7 25
    |> matte (Color.rgb255 123 159 184)
    |> move3D (20, -30, 82)
    ,
    rectangle3D 2 118
    |> matte (Color.rgb255 123 159 184)
    |> move3D (46, 0, 70)
    ,
    rectangle3D 20 12
    |> matte Color.red
    |> rotateX3D (degrees 270)
    |> rotateZ3D (degrees 270)
    |> move3D (50, -40, 65)
    ,
    rectangle3D 20 12
    |> matte Color.yellow
    |> rotateX3D (degrees 270)
    |> rotateZ3D (degrees 270)
    |> move3D (50, -10, 65)
    ,
    rectangle3D 20 12
    |> matte Color.blue
    |> rotateX3D (degrees 270)
    |> rotateZ3D (degrees 270)
    |> move3D (50, 20, 65)
    ,
    rectangle3D 20 12 
    |> matte Color.green
    |> rotateX3D (degrees 270)
    |> rotateZ3D (degrees 270)
    |> move3D (50, 44, 65)
    ,
    cylinder 200 30
    |> matte (Color.rgb255 79 80 87)
    |> move3D (0, 0, -20)
    ,
    cylinder 8 4
    |> matte (Color.rgb255 143 127 81)
    |> move3D (130, -110, 0)
    ,
    cylinder 2 200
    |> matte (Color.rgb255 143 127 81)
    |> move3D (130, -110, 0)
    ,
    polyCone ([(-2.575,-42.6),(2.5758,-42.99),(2.5758,-24.37),(23.578,-26.35),(21.597,-19.21),(42.6,-1.783),(37.448,1.3869),(41.015,15.653),(28.334,14.068),(25.56,19.616),(13.275,8.9164),(16.445,32.297),(8.5201,29.126),(0.1981,44.185),(-8.916,30.315),(-16.04,32.693),(-12.48,8.5201),(-24.37,18.823),(-27.54,14.464),(-41.41,15.653),(-37.44,1.7832),(-42.99,-1.386),(-21.2,-19.21),(-22.78,-25.95),(-1.783,-24.37),(-2.575,-42.6)]) (0,0,25) model.meshStore
    |> matte (Color.rgb255 250 195 250)
    |> scale3D 0.8
    |> rotateX3D (degrees 90)
    |> rotateZ3D (degrees -90)
    |> move3D (130, -110, 110)
    ,
    polyCone ([(-2.575,-42.6),(2.5758,-42.99),(2.5758,-24.37),(23.578,-26.35),(21.597,-19.21),(42.6,-1.783),(37.448,1.3869),(41.015,15.653),(28.334,14.068),(25.56,19.616),(13.275,8.9164),(16.445,32.297),(8.5201,29.126),(0.1981,44.185),(-8.916,30.315),(-16.04,32.693),(-12.48,8.5201),(-24.37,18.823),(-27.54,14.464),(-41.41,15.653),(-37.44,1.7832),(-42.99,-1.386),(-21.2,-19.21),(-22.78,-25.95),(-1.783,-24.37),(-2.575,-42.6)]) (0,0,25) model.meshStore
    |> matte (Color.rgb255 250 195 250)
    |> scale3D 0.8
    |> rotateX3D (degrees 180)
    |> rotateZ3D (degrees 90)
    |> move3D (155, -110, 95)
 ]

-- The following is the implementation and build of patricks rock using a variety of 3d shapes
patrick model = group3D
  [ 
  truncatedCone 10 20 15 model.meshStore
  |> matte Color.lightGreen
  |> rotateX3D (degrees 180)
  |> move3D (0,0,30)
  ,
  cone 10 35
  |> matte (Color.rgb255 248 156 255)
  |> scale3D 2
  |> move3D (0,0,30)
  ,
  cylinder 5 15
  |> matte (Color.rgb255 248 156 255)
  |> move3D (0,6,10)
  ,
  cylinder 5 15
  |> matte (Color.rgb255 248 156 255)
  |> move3D (0,-6,10)
  ,
  cone 10 35
  |> matte (Color.rgb255 248 156 255)
  |> rotateX3D (degrees -60)
  |> move3D (0,7,35)
  ,
  cone 10 35
  |> matte (Color.rgb255 248 156 255)
  |> rotateX3D (degrees 60)
  |> move3D (0,-7,35)
  ,
  ellipsoid 10 20 10 model.meshStore
  |> matte Color.white
  |> scale3D 0.25
  |> rotateX3D (degrees -90)
  |> move3D (-15,4,50)
  ,
  sphere 10
  |> matte Color.black
  |> scale3D 0.20
  |> move3D (-16,4,50)
  ,
    ellipsoid 10 20 10 model.meshStore
  |> matte Color.white
  |> scale3D 0.25
  |> rotateX3D (degrees -90)
  |> move3D (-15,-4,50)
  ,
  sphere 10
  |> matte Color.black
  |> scale3D 0.20
  |> move3D (-16,-4,50)
  ,
  ellipsoid 10 20 10 model.meshStore
  |> matte (Color.rgb255 69 32 66)
  |> scale3D 0.15
  |> rotateX3D (degrees -90)
  |> move3D (-18,0,40)
  ]

patrickHouse = group3D
  [
  sphere 16
  |> matte (Color.rgb255 87 48 22)
  |> move3D (0,20,0)
  |> scale3D 5
  ,
  cylinder 1.5 15
  |> matte Color.yellow
  |> move3D (0,20,15)
  |> scale3D 5
  ,
  cylinder 1.5 14
  |> matte Color.yellow
  |> move3D (0,20,-20)
  |> rotateX3D (degrees 90)
  |> scale3D 5
  ,
  cylinder 0.5 7
  |> matte Color.yellow
  |> rotateY3D (degrees 90)
  |> move3D (0,15,20)
  |> scale3D 5
  ,
  cylinder 0.5 7
  |> matte Color.yellow
  |> rotateY3D (degrees 90)
  |> move3D (0,17,20)
  |> scale3D 5
  ,
  cylinder 0.5 4
  |> matte Color.yellow
  |> rotateX3D (degrees 30)
  |> rotateY3D (degrees 90)
  |> move3D (3,26,20)
  |> scale3D 5
  ,
  cylinder 0.5 4
  |> matte Color.yellow
  |> rotateX3D (degrees 150)
  |> rotateY3D (degrees 90)
  |> move3D (-3,26,20)
  |> scale3D 5
 ]

spongeBobHouse model = group3D
    [
    ellipsoid 10 20 15 model.meshStore
    |> textured (getColorTexture "example" model) (constantTexture 0) (constantTexture 0)
    |> scale3D 6
    |> move3D (0, -150 , 0)
    |> rotateZ3D (degrees 180)
    |> rotateX3D (degrees 90)
    ,
    ring 10 3 model.meshStore
    |> plastic Color.darkBlue 0.5
    |> scale3D 1.5
    |> rotateY3D (degrees -270)
    |> move3D (-55, 35, 165)
    ,
    cylinder 10 15
    |> matte Color.lightBlue
    |> scale3D 1.5
    |> rotateY3D (degrees 90)
    |> move3D (-47.5, 36, 165)
    ,
    ring 10 3 model.meshStore
    |> plastic Color.darkBlue 0.5
    |> scale3D 1.5
    |> rotateY3D (degrees -270)
    |> move3D (-60, -35, 125)
    ,
    cylinder 10 15
    |> matte Color.lightBlue
    |> scale3D 1.5
    |> rotateY3D (degrees 90)
    |> move3D (-50, -36.7, 125)
    ,
    ellipsoid 10 20 15 model.meshStore
    |> plastic Color.darkBlue 0.5
    |> scale3D 1.5
    |> rotateX3D (degrees 90)
    |> rotateY3D (degrees -30)
    |> move3D (-42, 0, 60)
    ,
    cylinder 10 55
    |> plastic Color.darkBlue 0.5
    |> scale3D 0.5
    |> rotateX3D (degrees 90)
    |> rotateY3D (degrees -30)
    |> move3D (-10, -90, 200)
    ,
    truncatedCone 10 20 55 model.meshStore
    |> plastic Color.darkBlue 0.3
    |> scale3D 0.5
    |> rotateX3D (degrees -390)
    |> rotateY3D (degrees -180)
    |> move3D (-10, -117, 223)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> move3D (3, 0, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> move3D (5, 6, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> rotateX3D (degrees 190)
    |> move3D (-3, 10, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> rotateX3D (degrees 40)
    |> move3D (0, 13, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> rotateX3D (degrees -40)
    |> move3D (3, -5, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> rotateX3D (degrees -30)
    |> move3D (6, -10, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> rotateX3D (degrees -500)    
    |> move3D (8, -7, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees -90)
    |> move3D (3, 0, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees -90)
    |> move3D (5, 6, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> rotateX3D (degrees -190)
    |> move3D (-3, 10, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> rotateX3D (degrees -40)
    |> move3D (0, 13, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> rotateX3D (degrees -40)
    |> move3D (3, -5, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> rotateX3D (degrees -30)
    |> move3D (6, -10, 260)
    ,
    rectangle3D 60 10
    |> matte Color.lightGreen
    |> scale3D 2.25
    |> rotateY3D (degrees 90)
    |> rotateX3D (degrees -500)    
    |> move3D (8, -7, 260)
    ,
    ring 10 3 model.meshStore
    |> matte Color.lightBlue
    |> rotateY3D (degrees 90)
    |> move3D (-59, 0, 58)
    ,
    customPolygon [(-10,-10),(10,-10),(10,10),(-10,-10)]
    |> matte Color.lightGreen
    |> rotateX3D (degrees 270)
    |> rotateY3D (degrees -765)
    |> rotateZ3D (degrees 450)
    |> move3D (-2, 0, 322)
    ,
    customPolygon [(-10,-10),(10,-10),(10,10),(-10,-10)]
    |> matte Color.lightGreen
    |> rotateX3D (degrees 270)
    |> rotateY3D (degrees -765)
    |> rotateZ3D (degrees 450)
    |> move3D (-2, 12, 322)
    ,
    customPolygon [(-10,-10),(10,-10),(10,10),(-10,-10)]
    |> matte Color.lightGreen
    |> rotateX3D (degrees 270)
    |> rotateY3D (degrees -765)
    |> rotateZ3D (degrees 450)
    |> move3D (-2, 20, 322)
    ,
    customPolygon [(-10,-10),(10,-10),(10,10),(-10,-10)]
    |> matte Color.lightGreen
    |> rotateX3D (degrees 270)
    |> rotateY3D (degrees -800)
    |> rotateZ3D (degrees 450)
    |> move3D (0, -28, 308)
    ,
    customPolygon [(-10,-10),(10,-10),(10,10),(-10,-10)]
    |> matte Color.lightGreen
    |> rotateX3D (degrees 270)
    |> rotateY3D (degrees -800)
    |> rotateZ3D (degrees 450)
    |> move3D (10, -48, 308)
    ,
    customPolygon [(-10,-10),(10,-10),(10,10),(-10,-10)]
    |> matte Color.lightGreen
    |> rotateX3D (degrees 270)
    |> rotateY3D (degrees 700)
    |> rotateZ3D (degrees 450)
    |> move3D (0, 55, 310)
    ]

axes = group3D
  [
   cylinder 1.5 5000
   |> matte (Color.rgb255 253 0 0)
   |> move3D(0,0,2505)
   ,
   cylinder 1.5 5000
   |> matte (Color.green)
   |> rotateX3D (degrees 90)
   |> move3D(0,2500,5)
   ,
   cylinder 1.5 5000
   |> matte (Color.yellow)
   |> rotateY3D(degrees 90)
   |> move3D(2500,0,5)       
  ]
  



-- move / edit the light
lightData =
    { position = Point3d.centimeters 0 0 100    -- position of the light
    , chromaticity = Light.sunlight             -- the colour of the light (see https://package.elm-lang.org/packages/ianmackenzie/elm-3d-scene/latest/Scene3d-Light#Chromaticity)
    , intensity = LuminousFlux.lumens 30000     -- how intense the light is
    , castsShadows = False                      -- whether the light will cast shadows
    , showEntity = False                         -- whether the light ball will be rendered (the light itself shines regardless)
    }

-- Use "loadTexture [name] [type] [url]" to load in texture images from the Internet!
-- Give each one a unique name, and specify its type (TexColor, TexRoughness, or TexMetallicity).
-- You can list many of them!
myTextures = 
    [ loadTexture "example" TexColor "https://i.imgur.com/BmNvFHs.jpeg"
      ,loadTexture "wood" TexColor "https://i.imgur.com/g5KkPSG.jpeg"
      ,loadTexture "glass" TexColor "https://i.imgur.com/w9CEJpz.jpeg/"
    ]

-- Usage: `svgTexture "name" "type" shape`, where shape is any 2D shape or group
-- Give each one a unique name, and specify its type (TexColor, TexRoughness, or TexMetallicity).
-- You can list many of them!
svgTextures =
    [ svgTexture "squares" TexColor squares
      
 
  
    ]

-- SVG textures are 50 by 50
squares =
    group
        [ square 25 |> filled purple |> move (12.5,12.5)
        , square 25 |> filled orange |> move (-12.5,12.5)
        , square 25 |> filled purple |> move (-12.5,-12.5)
        , square 25 |> filled orange |> move (12.5,-12.5)
        ]

-- Put your 2D shapes here, and they will be overlayed on top of the screen!
overlay : Model -> List (Shape Msg)
overlay model =
    [ angleDisplay model
    , cameraControls model
    ]

-- Here you can specify what images to use to create the skybox.
skyboxType =
    Skybox.URLSkybox
        "Skybox Top URL"
        "Skybox Bottom URL"
        "Skybox Side 1 URL"
        "Skybox Side 2 URL"
        "Skybox Side 3 URL"
        "Skybox Side 4 URL"
        1000
    -- Some other options (comment in the one above and comment one of these out)
    -- Skybox.GSVGSkybox False skyboxTop skyboxSides skyBoxBottom 500
    -- Skybox.GSVGSphericalSkybox False skyboxTop 500
    -- Skybox.URLSphericalSkybox "https://cschank.github.io/img/milky.jpg" 1000

-- this is 50 by 50
skyboxTop : Shape msg
skyboxTop =
    group
        [
            square 50 |> filled lightBlue
        ,   circle 10 |> filled yellow
        ]

-- this is 200 by 50
skyboxSides : Shape msg
skyboxSides =
    group
        [
            rect 200 50 |> filled lightBlue |> move (0,25)
        ,   rect 200 50 |> filled green |> move(0,-25)
        ,   triangle 10 |> filled darkGreen |> rotate (degrees -30) |> move (0,5)
        ,   text "abcdefghijklmnopqrstuvwxyz" |> centered |> size 16 |> filled red
        ]

-- this is 50 by 50
skyBoxBottom : Shape msg
skyBoxBottom =
    group
        [
        ]

-- You can add your own data to the model, but don't remove anything or else things won't work anymore.
-- If you add your own values to track, make sure you also add an initial value under `init`!
type alias Model =
    { width : Quantity Int Pixels
    , height : Quantity Int Pixels
    , time : Float
    , meshStore : MeshStore WorldCoordinates
    , widget : Widget.Model
    , gSkyboxModel : GS.Model
    , gTextureModel : GT.Model
    , cameraModel : W3C.Model WorldCoordinates
    , textureLoader : TL.Model
    , zoomSpeed : Length
    }

init : ( Model, Cmd Msg )
init =
    let
        (wModel, _) = Widget.init 0 0 "widget"
        (gSkyboxModel, gSCmd) = GS.initialModel

        allSvgTextures = svgTextures ++
            (case skyboxType of
                 Skybox.GSVGSkybox _ top sides bottom _ ->
                     GS.getTexturesToLoad top sides bottom
                 Skybox.GSVGSphericalSkybox _ shape _ ->
                     GS.getTexturesToLoad shape (group []) (group [])
                 _ -> []
            )

        (gTextureModel, gTCmd) = GT.initialModel allSvgTextures
    in
    ( { width = Quantity.zero
      , height = Quantity.zero
      , time = 0
      , meshStore = { generatedMeshes = Dict.empty, generatedShadows = Dict.empty }
      , widget = wModel
      , gSkyboxModel = gSkyboxModel
      , gTextureModel = gTextureModel
      , cameraModel = W3C.basicCamera
      , textureLoader = TL.init
      , zoomSpeed = Length.centimeters 15
      }
    , Cmd.batch
        [ Cmd.map TextureLoadMsg <| case skyboxType of
            Skybox.URLSkybox top bottom side1 side2 side3 side4 _ ->
                TL.fetchTextures
                    ( [ loadTexture "skyB" TexColor bottom
                      , loadTexture "skyT" TexColor top
                      , loadTexture "skyS1" TexColor side1
                      , loadTexture "skyS2" TexColor side2
                      , loadTexture "skyS3" TexColor side3
                      , loadTexture "skyS4" TexColor side4
                      ] ++ myTextures
                    )
                    TL.init
            Skybox.URLSphericalSkybox texture _ ->
                TL.fetchTextures
                    ( loadTexture "skyT" TexColor texture :: myTextures )
                    TL.init
            _ -> TL.fetchTextures myTextures TL.init
        , case skyboxType of
            Skybox.GSVGSkybox _ _ _ _ _ -> Cmd.map SkyboxMsg gSCmd
            Skybox.GSVGSphericalSkybox _ _ _ -> Cmd.map SkyboxMsg gSCmd
            _ -> Cmd.none
        , Cmd.map GSVGTextureMsg gTCmd
        ]
    )

-- Do not remove any of these message types.
-- If you add your own, remember to also handle them in the `update` function!
type Msg
    = Tick Duration
    | WidgetMsg Widget.Msg
    | SkyboxMsg GS.Msg
    | GSVGTextureMsg GT.Msg
    | TextureLoadMsg TL.Msg
    | CameraMsg (W3C.Msg WorldCoordinates)

update message model =
    case message of
        -- This gets called around 60 times per second
        Tick t ->
           let
                tickRate =
                    Duration.milliseconds 1 |> Quantity.per Duration.second

                updatedTime =
                    Duration.seconds model.time |> Quantity.plus (tickRate |> Quantity.for t)

                timeAsNum = Duration.inSeconds updatedTime

            in
                ( { model | time = timeAsNum }
                , Cmd.none
                )

        -- This is needed for our overlay
        WidgetMsg wMsg ->
            let
                (newWModel, wCmd) = Widget.update wMsg model.widget
            in
            ( { model | widget = newWModel }, Cmd.map WidgetMsg wCmd )

        SkyboxMsg sMsg ->
            let
                (gSkyboxModel, gSCmd) = GS.update sMsg model.gSkyboxModel
            in
                ( { model | gSkyboxModel = gSkyboxModel } , Cmd.map SkyboxMsg gSCmd)

        GSVGTextureMsg tMsg ->
            let
                (gTextureModel, gTCmd) = GT.update tMsg model.gTextureModel
            in
                ( { model | gTextureModel = gTextureModel }
                , case tMsg of
                    GT.GeneratedPNG (name, imgURL) ->
                        let
                            nameOnly =
                                case List.head (List.reverse (String.indices "Tex" name)) of
                                    Nothing ->
                                        name
                                    Just i ->
                                        name |> String.left i
                            texType =
                                case TL.readTextureType (String.dropLeft (String.length nameOnly) name) of
                                    Nothing ->
                                        TexColor
                                    Just tex ->
                                        tex
                        in
                            Cmd.batch
                                [ Cmd.map TextureLoadMsg
                                    ( TL.fetchTexture
                                        ( loadTexture
                                            nameOnly
                                            texType
                                            imgURL
                                        )
                                        model.textureLoader
                                    )
                                , Cmd.map GSVGTextureMsg gTCmd
                                ]
                    _ -> Cmd.map GSVGTextureMsg gTCmd
                )

        TextureLoadMsg tlMsg ->
            let
                (tlModel, tlCmd) = TL.update tlMsg model.textureLoader
            in
            (
                { model | textureLoader = tlModel }
            ,   Cmd.map TextureLoadMsg tlCmd
            )

        CameraMsg camMsg ->
            let
                w3cModel = W3C.update camMsg model.cameraModel
            in
                ( { model | cameraModel = w3cModel }
                , Cmd.none
                )
