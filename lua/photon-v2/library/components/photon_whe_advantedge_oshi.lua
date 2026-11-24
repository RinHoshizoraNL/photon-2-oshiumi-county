if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Model = "SGM & LilRanbay",
	Code = "LilRanbay"
}

COMPONENT.Title = [[Whelen Advantedge Oshiumi County Sheriff]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/sentry/props/whelenadvantedge_nyctpd.mdl"

COMPONENT.SubMaterials = {
	[2] = "rin/oshiumi_sheriff/props/advantedge/glass_takedown",
	[3] = "rin/oshiumi_sheriff/props/advantedge/outerglass_takedown"
}

COMPONENT.Preview = {
	Position = Vector( 0, 0, -4 ),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 0.7
}

local softWhite = { r = 255, g = 225, b = 225 }
local blue = { r = 0, g = 255, b = 255 }
local red = { r = 255, g = 64, b = 0 }
local amber = { r = 255, g = 100, b = 0 }

local swScale = 1
local bScale = 0.88
local rScale = 0.88
local aScale = 0.88

COMPONENT.ElementStates = {
	["Mesh"] = {
		["~SW"] = { Inherit = "SW", IntensityTransitions = true },
		["~R"] = {
			Intensity = 1,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 255, 0, 0 ):Blend( red ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 225, 145 ):Blend( red ):GetBlendColor(),
		},
		["~B"] = { 
			Intensity = 1,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 0, 150, 255 ):Blend( blue ):GetBlendColor(),
			DrawColor = PhotonColor( 205, 255, 255 ):Blend( blue ):GetBlendColor(),
		},
		["~A"] = {
			Intensity = 1,
			IntensityTransitions = true, 
			BloomColor = PhotonColor( 255, 110, 0 ):Blend( amber ):GetBlendColor(),
			DrawColor = PhotonColor( 130,255,230 ):Blend( amber ):GetBlendColor()
		},
		["A"] = {
			BloomColor = PhotonColor( 255, 110, 0 ):Blend( amber ):GetBlendColor(),
			DrawColor = PhotonColor( 130,255,230 ):Blend( amber ):GetBlendColor()
		},
		["Proxy_R1"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 1, Value = "AngleOutput" }
		},
		["Proxy_R2"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 2, Value = "AngleOutput" }
		},
		["Proxy_R3"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 3, Value = "AngleOutput" }
		},
		["Proxy_R4"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 4, Value = "AngleOutput" }		
		},
		["Proxy_R5"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 5, Value = "AngleOutput" }
		},
		["Proxy_R6"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 6, Value = "AngleOutput" }
		},
		["Proxy_R7"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 7, Value = "AngleOutput" }
		},
		["Proxy_R8"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 8, Value = "AngleOutput" }
		}
	},
	["2D"] = {
		["~SW"] = {
			Intensity = 1,
			IntensityTransitions = true,
			Blend = Color( 255, 200, 200 ),
			SourceDetailColor = PhotonColor(255,255,255):Blend(softWhite):GetBlendColor(), 
			SubtractiveMid = PhotonColor( 0, 0, 255 ):Negative(true):Blend(softWhite):GetBlendColor(),
			SourceFillColor = PhotonColor( 255, 255, 255 ):Negative(false):Blend(softWhite):GetBlendColor(),
			GlowColor = PhotonColor(255*swScale, 255*swScale, 200*swScale):Negative(true):Blend(softWhite):GetBlendColor(),
			InnerGlowColor = PhotonColor(255*swScale, 175*swScale, 150*swScale):Blend(softWhite):GetBlendColor(),
			ShapeGlowColor = PhotonColor(255, 255, 255):Blend(softWhite):GetBlendColor(),
		},
		["~R"] = {
			Intensity = 1,
			IntensityTransitions = true,
			Blend = PhotonColor( 255, 0, 0 ),
			SourceFillColor = PhotonColor( 255, 0, 0 ):Negative(true):Blend( red ):GetBlendColor(),
			GlowColor = PhotonColor( 255, 30, 0 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
			SubtractiveMid = PhotonColor( 255, 0, 0 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
			SourceDetailColor = PhotonColor( 255,250,190 ):Blend(red):GetBlendColor(), 
			InnerGlowColor = PhotonColor(255, 30, 0):Blend(red):Scale( rScale ):GetBlendColor(),
			ShapeGlowColor = PhotonColor(255, 30, 0):Blend(red):GetBlendColor()
		},
		["~B"] = {
			Intensity = 1,
			IntensityTransitions = true,
			Blend = PhotonColor( 0, 0, 255 ),
			-- inverted
			SourceFillColor = PhotonColor(0,0,255):Negative(true):Blend( blue ):GetBlendColor(),
			GlowColor = PhotonColor(0, 135, 255):Negative(true):Blend(blue):Scale(0.6):GetBlendColor(), 
			SubtractiveMid = PhotonColor( 0, 0, 255 ):Negative(true):Blend(blue):Scale(0.6):GetBlendColor(), 
			SourceDetailColor = PhotonColor(190,250,255):Blend(blue):GetBlendColor(), 
			InnerGlowColor = PhotonColor(0, 180, 255):Blend(blue):Scale( bScale ):GetBlendColor(),
			ShapeGlowColor = PhotonColor(0, 100, 255):Blend(blue):GetBlendColor(), 
		},
		["~A"] = {
			Intensity = 1,
			IntensityTransitions = true,
			Blend = PhotonColor( 255, 160, 0 ),
			SourceFillColor = PhotonColor( 255, 160, 0 ):Negative(true):Blend( amber ):GetBlendColor(),
			GlowColor = PhotonColor( 200, 110, 0 ):Negative(true):Blend(amber):Scale(0.6):GetBlendColor(),
			SubtractiveMid = PhotonColor( 255, 150, 0 ):Negative(true):Blend(amber):Scale(0.6):GetBlendColor(),
			SourceDetailColor = PhotonColor( 130,255,230):Blend(amber):GetBlendColor(), 
			InnerGlowColor = PhotonColor(200, 110, 0):Blend(amber):Scale( aScale ):GetBlendColor(),
			ShapeGlowColor = PhotonColor(255, 110, 0):Blend(amber):GetBlendColor()
		},
		["Proxy_R1"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 1, Value = "AngleOutput" }
		},
		["Proxy_R2"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 2, Value = "AngleOutput" }
		},
		["Proxy_R3"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 3, Value = "AngleOutput" }
		},
		["Proxy_R4"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 4, Value = "AngleOutput" }		
		},
		["Proxy_R5"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 5, Value = "AngleOutput" }
		},
		["Proxy_R6"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 6, Value = "AngleOutput" }
		},
		["Proxy_R7"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 7, Value = "AngleOutput" }
		},
		["Proxy_R8"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 8, Value = "AngleOutput" }
		}
	},
	["Projected"] = {
		["~R"] = {
			IntensityTransitions = true,
			Color = PhotonColor( 255, 15, 10 )
		},
		["~B"] = {
			IntensityTransitions = true,
			Color = PhotonColor( 45, 175, 255 )
		},
		["~SW"] = {
			IntensityTransitions = true,
			Color = PhotonColor( 255, 225, 200)
		},
		["Proxy_R1"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 1, Value = "AngleOutput" }
		},
		["Proxy_R2"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 2, Value = "AngleOutput" }
		},
		["Proxy_R3"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 3, Value = "AngleOutput" }
		},
		["Proxy_R4"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 4, Value = "AngleOutput" }		
		},
		["Proxy_R5"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 5, Value = "AngleOutput" }
		},
		["Proxy_R6"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 6, Value = "AngleOutput" }
		},
		["Proxy_R7"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 7, Value = "AngleOutput" }
		},
		["Proxy_R8"] = {
			Proxy = { Type = "FROM_LIGHT", Key = 8, Value = "AngleOutput" }
		}
	}
}

local rot_igf = 8
local rot_ilf = 2

COMPONENT.Templates = {
	["Bone"] = {
		Rotator = {}
	},
	["Mesh"] = {
		Mesh = {
			Model = "models/lilranbay/component_lights/sgm_advantedge_nyctpd_emis.mdl",
			Scale = 1,
			IntensityGainFactor = rot_igf,
			IntensityLossFactor = rot_ilf,
			DeactivationState = "~OFF"
		}
	},
	["2D"] = {
		RotatorLight = {
			Width = 0,
			Height = 0,
			Scale = 0.85,
			IntensityGainFactor = rot_igf,
			IntensityLossFactor = rot_ilf,
			DeactivationState = "~OFF"
		},
		Rear500 = {
			Width 	= 5.86,
			Height	= 3.45,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_shape.png").MaterialName,
			Scale = 1,
			IntensityGainFactor = 7,
			IntensityLossFactor = 3,
			DeactivationState = "~OFF"
		},
		Takedown = {
			Width = 3.4,
			Height = 5.2,
			Scale = 1,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_shape.png").MaterialName,
			IntensityGainFactor = 8,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF"
		},
		Alley = {
			Width = 3.3,
			Height = 2.45,
			Scale = 1,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_alley_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_alley_shape.png").MaterialName,
			IntensityGainFactor = 8,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF"
		}
	},
	["Projected"] = {
		Projected = {
			-- FOV = 120,
			HorizontalFOV = 35,
			VerticalFOV = 35,
			NearZ = 1,
			FarZ = 800,
			Brightness = 0.3,
			IntensityGainFactor = rot_igf,
			IntensityLossFactor = rot_ilf,
			DeactivationState = "~OFF",
			Intensity = 0
		},
		ForwardIllumination = {
			HorizontalFOV = 90,
			VerticalFOV = 60,
			NearZ = 10,
			FarZ = 800,
			Brightness = 2,
			IntensityGainFactor = 8,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF",
			-- TODO:
			-- This is required to prevent the lights from starting ON then fading off..?
			Intensity = 0,
			States = {
				["~SW"] = {
					Inherit = "SW",
					IntensityTransitions = true,
					Intensity = 1
				}
			}
		}
	}
}

COMPONENT.States = {
	[1] = "~SW",	-- 1
	[2] = "~SW",	-- 2
	[3] = "~R",		-- 3
	[4] = "~R",		-- 4
	[5] = "~R",	-- 5
	[6] = "~R",	-- 6
	[7] = "~R",		-- 7
	[8] = "~R",		-- 8
	[9] = "~A",		-- TA
	[10] = "~SW"	-- TAKEDOWNS/ALLEYS
}

COMPONENT.StateMap = "[ROT] 1 2 3 4 5 6 7 8 [1] 9 17 25 [2] 10 18 26 [3] 11 19 27 [4] 12 20 28 [5] 13 21 29 [6] 14 22 30 [7] 15 23 31 [8] 16 24 32 [9] 33 34 35 36 37 38 39 40 41 42 [10] 43 44 45 46"

local fov = 180

local r12spe = 321*1.4
local r34spe = 443*1.4
local r56spe = 534*1.4
local r78spe = 643*1.4

local ofx = 0.1
local ofy = 0.016
local ofz = 2.2

COMPONENT.Elements = {

	-- Rotators, leh tell bone (rotator) to spin on leh certain axis at certain speed.
	[1] = { "Rotator", BoneId = 1, Axis = "y", Speed = r12spe },
	[2] = { "Rotator", BoneId = 2, Axis = "y", Speed = r12spe },
	[3] = { "Rotator", BoneId = 3, Axis = "y", Speed = r34spe },
	[4] = { "Rotator", BoneId = 4, Axis = "y", Speed = r34spe },
	[5] = { "Rotator", BoneId = 5, Axis = "y", Speed = r56spe },
	[6] = { "Rotator", BoneId = 6, Axis = "y", Speed = r56spe },
	[7] = { "Rotator", BoneId = 7, Axis = "y", Speed = r78spe },
	[8] = { "Rotator", BoneId = 8, Axis = "y", Speed = r78spe },
	-- Lights (Mesh)
	[9] = { "Mesh", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), "lilranbay/component_lights/sgm_advantedge_nyctpd_emis/r1", BoneParent = 1, DrawMaterial = "photon/common/glow_gradient_a" },
	[10] = { "Mesh", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), "lilranbay/component_lights/sgm_advantedge_nyctpd_emis/r2", BoneParent = 2, DrawMaterial = "photon/common/glow_gradient_a" },
	[11] = { "Mesh", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), "lilranbay/component_lights/sgm_advantedge_nyctpd_emis/r3", BoneParent = 3, DrawMaterial = "photon/common/glow_gradient_a" },
	[12] = { "Mesh", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), "lilranbay/component_lights/sgm_advantedge_nyctpd_emis/r4", BoneParent = 4, DrawMaterial = "photon/common/glow_gradient_a" },
	[13] = { "Mesh", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), "lilranbay/component_lights/sgm_advantedge_nyctpd_emis/r5", BoneParent = 5, DrawMaterial = "photon/common/glow_gradient_a" },
	[14] = { "Mesh", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), "lilranbay/component_lights/sgm_advantedge_nyctpd_emis/r6", BoneParent = 6, DrawMaterial = "photon/common/glow_gradient_a" },
	[15] = { "Mesh", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), "lilranbay/component_lights/sgm_advantedge_nyctpd_emis/r7", BoneParent = 7, DrawMaterial = "photon/common/glow_gradient_a" },
	[16] = { "Mesh", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), "lilranbay/component_lights/sgm_advantedge_nyctpd_emis/r8", BoneParent = 8, DrawMaterial = "photon/common/glow_gradient_a" },
	-- Projected lights, the things you see on the walls.
	[17] = { "Projected", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 1 },
	[18] = { "Projected", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 2 },
	[19] = { "Projected", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 3 },
	[20] = { "Projected", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 4 },
	[21] = { "Projected", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 5 },
	[22] = { "Projected", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 6 }, 
	[23] = { "Projected", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 7 },
	[24] = { "Projected", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 8 },
	-- These are 2D lights that actually give light to the light, light... light.
	[25] = { "RotatorLight", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 1 },
	[26] = { "RotatorLight", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 2 },
	[27] = { "RotatorLight", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 3 },
	[28] = { "RotatorLight", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 4 },
	[29] = { "RotatorLight", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 5 },
	[30] = { "RotatorLight", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 6 },
	[31] = { "RotatorLight", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 7 },
	[32] = { "RotatorLight", Vector( ofx, ofy, ofz ), Angle( 0, 90, 0 ), BoneParent = 8 },

	-- 500s TA
	[33] = { "Rear500", Vector( 6.96, -23.1192, 1.6387 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["rear500ta"] = 0 } },
	[34] = { "Rear500", Vector( 6.96, 23.1192, 1.6387 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["rear500ta"] = 0 } },
	[35] = { "Rear500", Vector( 6.96, -16.5102, 1.6387 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["rear500ta"] = 0 } },
	[36] = { "Rear500", Vector( 6.96, 16.5102, 1.6387 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["rear500ta"] = 0 } },
	[37] = { "Rear500", Vector( 6.96, -9.90614, 1.6387 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["rear500ta"] = 0 } },
	[38] = { "Rear500", Vector( 6.96, 9.90614, 1.6387 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["rear500ta"] = 0 } },
	[39] = { "Rear500", Vector( 6.96, -3.30205, 1.6387 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["rear500ta"] = 0 } },
	[40] = { "Rear500", Vector( 6.96, 3.30205, 1.6387), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["rear500ta"] = 0 } },

	-- 500s
	[41] = { "Rear500", Vector( 0.18, 0, 0.1 ), Angle( 0, -90, 0 ), BoneParent = 14, RequiredBodyGroups = { ["rear500_dr"] = 0 } },
	[42] = { "Rear500", Vector( 0.18, 0, 0.1 ), Angle( 0, -90, 0 ), BoneParent = 13, RequiredBodyGroups = { ["rear500_pas"] = 0 } },

	-- Takedowns
	[43] = { "Takedown", Vector( -6.68893+0.05, -1.68878, 4.67524 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["center"] = 1 } },
	[44] = { "Takedown", Vector( -6.68893+0.05, 1.68878, 4.67524 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["center"] = 1 } },
	-- Alleys
	[45] = { "Alley", Vector( -0.028449, -28.3566-0.1, 2.36432 ), Angle( 0, 180, 0 ) },
	[46] = { "Alley", Vector( -0.028449, 28.3566+0.1, 2.36432 ), Angle( 0, 0, 0 ) },

	-- Takedowns
	[47] = { "ForwardIllumination", Vector( -6.68893+0.05, -1.68878, 4.67524 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["center"] = 1 } },
	[48] = { "ForwardIllumination", Vector( -6.68893+0.05, 1.68878, 4.67524 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["center"] = 1 } },
	-- Alleys
	[49] = { "ForwardIllumination", Vector( -0.028449, -28.3566-0.1, 2.36432 ), Angle( 0, 180, 0 ) },
	[50] = { "ForwardIllumination", Vector( -0.028449, 28.3566+0.1, 2.36432 ), Angle( 0, 0, 0 ) }

}

COMPONENT.ElementGroups = {
	-- Vision Rotators
	["R1"] = { 1, 9, 17, 25 },		-- 1
	["R2"] = { 2, 10, 18, 26 },		-- 2
	["R3"] = { 3, 11, 19, 27 },		-- 3
	["R4"] = { 4, 12, 20, 28 },		-- 4
	["R5"] = { 5, 13, 21, 29 },		-- 5
	["R6"] = { 6, 14, 22, 30 },		-- 6
	["R7"] = { 7, 15, 23, 31 },		-- 7
	["R8"] = { 8, 16, 24, 32 },		-- 8
	["@43"] = { 43, 47 },
	["@44"] = { 44, 48 },
	["@45"] = { 45, 49 },
	["@46"] = { 46, 50 }
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Rotators = {
		Off = "~OFF",
		Frames = {
			[1] = "R1 R2 R3 R4 R5 R6 R7 R8"
		},
		Sequences = {
			ON = { 1 }
		}
	},
	TA500 = {
		Off = "~OFF",
		Frames = {
			[1] = "33 35 37 39 40 38 36 34",

			-- Right
			[2] = "35",
			[3] = "35 37",
			[4] = "35 37 39",
			[5] = "35 37 39 40",
			[6] = "35 37 39 40 38",
			[7] = "35 37 39 40 38 36",
			[8] = "35 37 39 40 38 36 34",

			-- Left
			[9] = "36",
			[10] = "38 36",
			[11] = "40 38 36",
			[12] = "39 40 38 36",
			[13] = "37 39 40 38 36",
			[14] = "35 37 39 40 38 36",
			[15] = "33 35 37 39 40 38 36",

			-- CENOUT
			[16] = "39 40",
			[17] = "37 39 40 38",
			[18] = "35 37 39 40 38 36",
			[19] = "33 35 37 39 40 38 36 34",

			-- Stage3
			[20] = "39 40",
			[21] = "35 37 38 36",

			--Signal
			[22] = "33",
			[23] = "34",
			[24] = "33 34",
		},
		Sequences = {
			ON = { 1 },

			Stage3 = sequence():Add(20,0,20,0):Stretch(3):Add(21,0,21,0):Stretch(3),

			RIGHT = sequence():Sequential( 2, 8 ):Stretch( 3 ):Hold( 8 ):Add( 0 ):Hold( 6 ),
			LEFT = sequence():Sequential( 9, 15 ):Stretch( 3 ):Hold( 8 ):Add( 0 ):Hold( 6 ),
			CENOUT = sequence():Sequential( 16, 19 ):Stretch( 6 ):Hold( 6 ):Add( 0 ):Hold( 6 ),
			SIGLEFT = sequence():Alternate(22,0,8),
			SIGRIGHT = sequence():Alternate(23,0,8),
			HAZARD = sequence():Alternate(24,0,8),
		}
	},
	Rear500 = {
		Off = "~OFF",
		Frames = {
			[1] = "41 42",
			[2] = "41",
			[3] = "42"
		},
		Sequences = {
			ON = { 1 },

			Stage3 = sequence():Alternate(2,3,5)
		}
	},
	Takedown = {
		Off = "~OFF",
		Frames = {
			[1] = "@43 @44"
		},
		Sequences = {
			ON = { 1 }
		}
	},
	AlleyLeft = {
		Off = "~OFF",
		Frames = {
			[1] = "@45"
		},
		Sequences = {
			ON = { 1 }
		}
	},
	AlleyRight = {
		Off = "~OFF",
		Frames = {
			[1] = "@46"
		},
		Sequences = {
			ON = { 1 }
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			TA500 = "Stage3",
			Rear500 = "Stage3"
		},
		["MODE2"] = {
			Rotators = "ON",
			TA500 = "Stage3",
			Rear500 = "Stage3"
		},
		["MODE3"] = {
			Rotators = "ON",
			TA500 = "Stage3",
			Rear500 = "Stage3"
		}
	},
	["Emergency.Directional"] = {
		["LEFT"] = { TA500 = "LEFT" },
		["RIGHT"] = { TA500 = "RIGHT" },
		["CENOUT"] = { TA500 = "CENOUT" }
	},
	["Emergency.SceneLeft"] = {
		["ON"] = { AlleyLeft = "ON" }
	},
	["Emergency.SceneRight"] = {
		["ON"] = { AlleyRight = "ON" }
	},
	["Emergency.SceneForward"] = {
		["ON"] = { Takedown = "ON" },
		["FLOOD"] = { Takedown = "ON" }
	},
	["Vehicle.Signal"] = {
		["LEFT"] = {
			TA500 = "SIGLEFT",
		},
		["RIGHT"] = {
			TA500 = "SIGRIGHT",
		},
		["HAZARD"] = {
			TA500 = "HAZARD",
		}
	},
}