if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Model = "SGM & LilRanbay",
	Code = "LilRanbay"
}

COMPONENT.WorkshopRequirements = {
	[2822295886] = "Federal Signal Vision"
}

COMPONENT.Title = [[Federal Signal Vision (OCSO)]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/lilranbay/props/sgm_vision.mdl"

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
	["Bone"] = {
		Deactivate = {
			Activity = "Fixed",
			Target = 0,
			Speed = 200,
			Direction = -1,
			DeactivateOnTarget = true
		},
		Point0 ={
			Activity = "Fixed",
			Target = 0,
			Speed = 200,
			Direction = -1
		},
		Point215 = {
			Activity = "Fixed",
			Target = 136,
			Speed = 200,
			Direction = -1
		},
		Point135 = {
			Activity = "Fixed",
			Target = 179,
			Speed = 200,
			Direction = -1
		},
		Point180 = {
			Activity = "Fixed",
			Target = 180,
			Speed = 200,
			Direction = -1
		},
		Point180Fast = {
			Activity = "Fixed",
			Target = 180,
			Speed = 500,
			Direction = -1
		},
		Point270 = {
			Activity = "Fixed",
			Target = 270,
			Speed = 200,
			Direction = -1
		},
		Point90 = {
			Activity = "Fixed",
			Target = 90,
			Speed = 200,
			Direction = -1
		},
		RotateFaster = {
			Activity = "Rotate",
			Speed = 900,
			Direction = -1
		},
		RotateFast = {
			Activity = "Rotate",
			Speed = 700,
			Direction = -1
		},
		RotateMedium = {
			Activity = "Rotate",
			Speed = 500,
			Direction = -1
		},
		RotateStart = {
			Activity = "Rotate",
			Speed = 250,
			Direction = -1
		},
		SweepForward = {
			Activity = "Sweep",
			SweepStart = 360-30,
			SweepEnd = 30,
			Speed = 100,
			Direction = -1,
			SweepPause = 0
		},
		RearSweep = {
			Activity = "Sweep",
			SweepStart = 180-30,
			SweepEnd = 180+30,
			Speed = 100,
			Direction = 1,
			SweepPause = 0
		}
	},
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
		}
	}
}

local rot_igf = 8
local rot_ilf = 2

COMPONENT.Templates = {
	["Bone"] = {
		Rotator = {
			DeactivationState = "Deactivate"
		}
	},
	["Mesh"] = {
		Mesh = {
			Model = "models/lilranbay/component_lights/lr_sgm_vision_emis.mdl",
			Scale = 1,
			IntensityGainFactor = rot_igf,
			IntensityLossFactor = rot_ilf,
			DeactivationState = "~OFF"
		},
		Mesh_SL = {
			Model = "models/lilranbay/component_lights/lr_sgm_vision_sl_emis.mdl",
			DrawMaterial = "lilranbay/sprites/sgm_vision/fs_vision_sl"
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
		LEDLight = {
			Width = 0,
			Height = 0,
			Scale = 1.1
		},
		TriLED = {
			Width = 6.78,
			Height = 7.5,
			Detail = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/sgm_vision/fs_vision_tri_led_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/sgm_vision/fs_vision_tri_led_shape.png").MaterialName,
			Scale = 0.65,
			VisibilityRadius = 0.5,
			LightMatrix = {
				Vector(2.3,0,0),
				Vector(-2.3,0,0)
			}
		},
		TALED = {
			Width = 6.5,
			Height = 6.58,
			Detail = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/sgm_vision/fs_vision_tri_led_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/sgm_vision/fs_vision_tri_led_shape.png").MaterialName,
			Scale = 0.65,
			VisibilityRadius = 0.5,
			LightMatrix = {
				Vector(2.2,0,0),
				Vector(-2.2,0,0)
			}
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
			Intensity = 0,
			States = {
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
				-- Keeping proxies here for now if I decide to add color inserts at somepoint
				Proxy_RC = {
					Proxy = { Type = "FROM_LIGHT", Key = 1, Value = "AngleOutput" }
				},
				Proxy_RI_L = {
					Proxy = { Type = "FROM_LIGHT", Key = 2, Value = "AngleOutput" }
				},
				Proxy_RI_R = {
					Proxy = { Type = "FROM_LIGHT", Key = 3, Value = "AngleOutput" }
				},
				Proxy_RM_l = {
					Proxy = { Type = "FROM_LIGHT", Key = 4, Value = "AngleOutput" }		
				},
				Proxy_RM_R = {
					Proxy = { Type = "FROM_LIGHT", Key = 5, Value = "AngleOutput" }
				},
				Proxy_RO_L = {
					Proxy = { Type = "FROM_LIGHT", Key = 6, Value = "AngleOutput" }
				},
				Proxy_RO_R = {
					Proxy = { Type = "FROM_LIGHT", Key = 7, Value = "AngleOutput" }
				}
			}
		}
	}
}

COMPONENT.States = {
	-- Each of these correlate to a pod (except 15 lol get pranked)
	-- Vision
	[1] = "~SW",
	[2] = "~SW",
	[3] = "~SW",
	[4] = "~SW",
	[5] = "~SW",
	[6] = "~B",
	[7] = "~R",
	-- Vision SL
	[8] = "R",
	[9] = "R",
	[10] = "B",
	[11] = "R",
	[12] = "R",
	[13] = "R",
	[14] = "R",
	[15] = "B",
	-- TA
	[16] = "A",
	-- WHITE SIDE LIGHTS
	[17] = "W"
}

COMPONENT.StateMap = "[ROT] 1 2 3 4 5 6 7 [1] 8 15 22 29 [2] 9 16 23 30 [3] 10 17 24 31 [4] 11 18 25 32 [5] 12 19 26 33 [6] 13 20 27 34 [7] 14 21 28 35 [8] 36 43 50 51 58 65 [9] 37 44 52 59 66 72 [10] 38 45 53 60 67 73 [11] 39 61 [12] 40 62 [13] 41 48 56 63 70 76 [14] 42 49 57 64 71 77 [15] 46 47 68 69 [16] 78 79 80 81 82 83 [17] 54 55 74 75"

local fov = 180

COMPONENT.Elements = {

	-- Rotators, leh tell bone (rotator) to spin on leh certain axis at certain speed.
	[1] = { "Rotator", BoneId = 6, Axis = "z", Speed = 5, RequiredBodyGroups = { ["center_pod"] = 0 } },
	[2] = { "Rotator", BoneId = 8, Axis = "z", Speed = 5, RequiredBodyGroups = { ["inner_pod"] = 0 } },
	[3] = { "Rotator", BoneId = 7, Axis = "z", Speed = 5, RequiredBodyGroups = { ["inner_pod"] = 0 } },
	[4] = { "Rotator", BoneId = 10, Axis = "z", Speed = 5, RequiredBodyGroups = { ["middle_pod"] = 0 } },
	[5] = { "Rotator", BoneId = 9, Axis = "z", Speed = 5, RequiredBodyGroups = { ["middle_pod"] = 0 } },
	[6] = { "Rotator", BoneId = 12, Axis = "z", Speed = 5, RequiredBodyGroups = { ["outer_pod"] = 0 } },
	[7] = { "Rotator", BoneId = 11, Axis = "z", Speed = 5, RequiredBodyGroups = { ["outer_pod"] = 0 } },
	-- Lights (Mesh)
	[8] = { "Mesh", Vector( 0, 0, 0.3 ), Angle( 0, 90, 90 ), "lilranbay/component_lights/sgm_vision/pc", BoneParent = 6, DrawMaterial = "photon/common/glow_gradient_a", RequiredBodyGroups = { ["center_pod"] = 0 } },
	[9] = { "Mesh", Vector( 0, 0, 0.3 ), Angle( 0, 90, 90 ), "lilranbay/component_lights/sgm_vision/pi_l", BoneParent = 8, DrawMaterial = "photon/common/glow_gradient_a", RequiredBodyGroups = { ["inner_pod"] = 0 } },
	[10] = { "Mesh", Vector( 0, 0, 0.3 ), Angle( 0, 90, 90 ), "lilranbay/component_lights/sgm_vision/pi_r", BoneParent = 7, DrawMaterial = "photon/common/glow_gradient_a", RequiredBodyGroups = { ["inner_pod"] = 0 } },
	[11] = { "Mesh", Vector( 0, 0, 0.3 ), Angle( 0, 90, 90 ), "lilranbay/component_lights/sgm_vision/pm_l", BoneParent = 10, DrawMaterial = "photon/common/glow_gradient_a", RequiredBodyGroups = { ["middle_pod"] = 0 } },
	[12] = { "Mesh", Vector( 0, 0, 0.3 ), Angle( 0, 90, 90 ), "lilranbay/component_lights/sgm_vision/pm_r", BoneParent = 9, DrawMaterial = "photon/common/glow_gradient_a", RequiredBodyGroups = { ["middle_pod"] = 0 } },
	[13] = { "Mesh", Vector( 0, 0, 0.3 ), Angle( 0, 90, 90 ), "lilranbay/component_lights/sgm_vision/po_l", BoneParent = 12, DrawMaterial = "photon/common/glow_gradient_a", RequiredBodyGroups = { ["outer_pod"] = 0 } },
	[14] = { "Mesh", Vector( 0, 0, 0.3 ), Angle( 0, 90, 90 ), "lilranbay/component_lights/sgm_vision/po_r", BoneParent = 11, DrawMaterial = "photon/common/glow_gradient_a", RequiredBodyGroups = { ["outer_pod"] = 0 } },
	-- Bulbs (cause like it'd look weird without the bulb being illuminated, obviously like where else would the lights come from?) (Mesh)
	[15] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/pc_b", DrawMaterial = "photon/common/glow", RequiredBodyGroups = { ["center_pod"] = 0 } },
	[16] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/pi_l_b", DrawMaterial = "photon/common/glow", RequiredBodyGroups = { ["inner_pod"] = 0 } },
	[17] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/pi_r_b", DrawMaterial = "photon/common/glow", RequiredBodyGroups = { ["inner_pod"] = 0 } },
	[18] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/pm_l_b", DrawMaterial = "photon/common/glow", RequiredBodyGroups = { ["middle_pod"] = 0 } },
	[19] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/pm_r_b", DrawMaterial = "photon/common/glow", RequiredBodyGroups = { ["middle_pod"] = 0 } },
	[20] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/po_l_b", DrawMaterial = "photon/common/glow", RequiredBodyGroups = { ["outer_pod"] = 0 } },
	[21] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/po_r_b", DrawMaterial = "photon/common/glow", RequiredBodyGroups = { ["outer_pod"] = 0 } },
	-- Projected lights, the things you see on the walls.
	[22] = { "Projected", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 6, RequiredBodyGroups = { ["center_pod"] = 0 } },
	[23] = { "Projected", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 8, RequiredBodyGroups = { ["inner_pod"] = 0 } },
	[24] = { "Projected", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 7, RequiredBodyGroups = { ["inner_pod"] = 0 } },
	[25] = { "Projected", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 10, RequiredBodyGroups = { ["middle_pod"] = 0 } },
	[26] = { "Projected", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 9, RequiredBodyGroups = { ["middle_pod"] = 0 } },
	[27] = { "Projected", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 12, RequiredBodyGroups = { ["outer_pod"] = 0 } },
	[28] = { "Projected", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 11, RequiredBodyGroups = { ["outer_pod"] = 0 } },
	-- These are 2D lights that actually give light to the light, light... light.
	[29] = { "RotatorLight", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 6, RequiredBodyGroups = { ["center_pod"] = 0 } },
	[30] = { "RotatorLight", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 8, RequiredBodyGroups = { ["inner_pod"] = 0 } },
	[31] = { "RotatorLight", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 7, RequiredBodyGroups = { ["inner_pod"] = 0 } },
	[32] = { "RotatorLight", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 10, RequiredBodyGroups = { ["middle_pod"] = 0 } },
	[33] = { "RotatorLight", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 9, RequiredBodyGroups = { ["middle_pod"] = 0 } },
	[34] = { "RotatorLight", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 12, RequiredBodyGroups = { ["outer_pod"] = 0 } },
	[35] = { "RotatorLight", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 11, RequiredBodyGroups = { ["outer_pod"] = 0 } },

	-- VISION SL -- (Ordered like a traditional lightbar (kinda))
	-- Lights (Mesh)
	-- Bottom Front
	[36] = { "Mesh_SL", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/fc_b", RequiredBodyGroups = { ["center_pod"] = 1 } },
	[37] = { "Mesh_SL", Vector( 0.04, -0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/fir_b", RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[38] = { "Mesh_SL", Vector( -0.04, -0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/fil_b", RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[39] = { "Mesh_SL", Vector( 0.04, -0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/fmr_b", RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[40] = { "Mesh_SL", Vector( -0.04, -0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/fml_b", RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[41] = { "Mesh_SL", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/for_b", RequiredBodyGroups = { ["outer_pod"] = 1 } },
	[42] = { "Mesh_SL", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/fol_b", RequiredBodyGroups = { ["outer_pod"] = 1 } },
	-- Bottom Rear
	[43] = { "Mesh_SL", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/rc_b", RequiredBodyGroups = { ["center_pod"] = 1 } },
	[44] = { "Mesh_SL", Vector( -0.04, 0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/rir_b", RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[45] = { "Mesh_SL", Vector( 0.04, 0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/ril_b", RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[46] = { "Mesh_SL", Vector( -0.04, 0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/rmr_b", RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[47] = { "Mesh_SL", Vector( 0.04, 0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/rml_b", RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[48] = { "Mesh_SL", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/ror_b", RequiredBodyGroups = { ["outer_pod"] = 1 } },
	[49] = { "Mesh_SL", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/rol_b", RequiredBodyGroups = { ["outer_pod"] = 1 } },
	-- TOP
	[50] = { "TriLED", Vector( 0.95, -13.451, 8.94 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["center_pod"] = 1 } },
	[51] = { "TriLED", Vector( -0.95, -13.451, 8.94 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["center_pod"] = 1 } },
	[52] = { "Mesh_SL", Vector( 0.1, -0.04, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/ir_t", RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[53] = { "Mesh_SL", Vector( -0.1, -0.04, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/il_t", RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[54] = { "Mesh_SL", Vector( 0.1, -0.04, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/mr_t", RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[55] = { "Mesh_SL", Vector( -0.1, -0.04, 0), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/ml_t", RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[56] = { "Mesh_SL", Vector( 0.1, 0, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/or_t", RequiredBodyGroups = { ["outer_pod"] = 1 } },
	[57] = { "Mesh_SL", Vector( -0.1, 0, 0 ), Angle( 0, 0, 0 ), "lilranbay/component_lights/sgm_vision/sl/ol_t", RequiredBodyGroups = { ["outer_pod"] = 1 } },
	-- 2D lights (https://open.spotify.com/track/22L7bfCiAkJo5xGSQgmiIO?si=7a8b40087d084725)
	-- Bottom Front
	[58] = { "LEDLight", Vector( 0, -16.16, 7.03 ), Angle( 180, 0, 0 ), RequiredBodyGroups = { ["center_pod"] = 1 } },
	[59] = { "LEDLight", Vector( 7.13, -10.6, 7.03 ), Angle( 180, 27.8, 0 ), RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[60] = { "LEDLight", Vector( -7.13, -10.6, 7.03 ), Angle( 180, -27.8, 0 ), RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[61] = { "LEDLight", Vector( 14.42, -5.05, 7.03 ), Angle( 180, 27.8, 0 ), RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[62] = { "LEDLight", Vector( -14.42, -5.05, 7.03 ), Angle( 180, -27.8, 0 ), RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[63] = { "LEDLight", Vector( 21.84, -0.87, 7.03 ), Angle( 180, 0, 0 ), RequiredBodyGroups = { ["outer_pod"] = 1 } },
	[64] = { "LEDLight", Vector( -21.84, -0.87, 7.03 ), Angle( 180, 0, 0 ), RequiredBodyGroups = { ["outer_pod"] = 1 } },
	-- Bottom Rear
	[65] = { "LEDLight", Vector( 0, -10.75, 7.03 ), Angle( 0, 0, 0 ), RequiredBodyGroups = { ["center_pod"] = 1 } },
	[66] = { "LEDLight", Vector( 7.35, -5.9, 7.03 ), Angle( 0, 27.8, 0 ), RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[67] = { "LEDLight", Vector( -7.35, -5.9, 7.03 ), Angle( 0, -27.8, 0 ), RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[68] = { "LEDLight", Vector( 14.62, -0.35, 7.03 ), Angle( 0, 27.8, 0 ), RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[69] = { "LEDLight", Vector( -14.62, -0.35, 7.03 ), Angle( 0, -27.8, 0 ), RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[70] = { "LEDLight", Vector( 21.84, 4.5, 7.03 ), Angle( 0, 0, 0 ), RequiredBodyGroups = { ["outer_pod"] = 1 } },
	[71] = { "LEDLight", Vector( -21.84, 4.5, 7.03 ), Angle( 0, 0, 0 ), RequiredBodyGroups = { ["outer_pod"] = 1 } },
	-- TOP
	[72] = { "LEDLight", Vector( 6.9, -8.26, 9.15 ), Angle( 0, -90-20.85, 0 ), RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[73] = { "LEDLight", Vector( -6.9, -8.26, 9.15 ), Angle( 0, 90+20.85, 0 ), RequiredBodyGroups = { ["inner_pod"] = 1 } },
	[74] = { "LEDLight", Vector( 14.2, -2.76, 9.15 ), Angle( 0, -90-20.85, 0 ), RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[75] = { "LEDLight", Vector( -14.2, -2.76, 9.15 ), Angle( 0, 90+20.85, 0 ), RequiredBodyGroups = { ["middle_pod"] = 1 } },
	[76] = { "LEDLight", Vector( 21.6, 3.25, 9.15 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["outer_pod"] = 1 } },
	[77] = { "LEDLight", Vector( -21.6, 3.25, 9.15 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["outer_pod"] = 1 } },

	-- TRAFFIC ADVISOR -- (Ordered like a traditional lightbar)
	[78] = { "TALED", Vector( 16.185, 13.65, 5.15 ), Angle( 0, 0, 0 ), RequiredBodyGroups = { ["rear_ta"] = 0 } },
	[79] = { "TALED", Vector( -16.185, 13.65, 5.15 ), Angle( 0, 0, 0 ), RequiredBodyGroups = { ["rear_ta"] = 0 } },
	[80] = { "TALED", Vector( 9.71, 13.65, 5.15 ), Angle( 0, 0, 0 ), RequiredBodyGroups = { ["rear_ta"] = 0 } },
	[81] = { "TALED", Vector( -9.71, 13.65, 5.15 ), Angle( 0, 0, 0 ), RequiredBodyGroups = { ["rear_ta"] = 0 } },
	[82] = { "TALED", Vector( 3.237, 13.65, 5.15 ), Angle( 0, 0, 0 ), RequiredBodyGroups = { ["rear_ta"] = 0 } },
	[83] = { "TALED", Vector( -3.237, 13.65, 5.15 ), Angle( 0, 0, 0 ), RequiredBodyGroups = { ["rear_ta"] = 0 } }

}

COMPONENT.ElementGroups = {
	-- Vision Rotators
	["RC"] = { 8, 15, 22, 29 },		-- 1
	["RIL"] = { 9, 16, 23, 30 },	-- 2
	["RIR"] = { 10, 17, 24, 31 },	-- 3
	["RML"] = { 11, 18, 25, 32 },	-- 4
	["RMR"] = { 12, 19, 26, 33 },	-- 5
	["ROL"] = { 13, 20, 27, 34 },	-- 6
	["ROR"] = { 14, 21, 28, 35 },	-- 7
	-- Vision SL
	["FCB"] =	{ 36, 58 },
	["FIRB"] =	{ 37, 59 },
	["FILB"] =	{ 38, 60 },
	["FMRB"] =	{ 39, 61 },
	["FMLB"] =	{ 40, 62 },
	["FORB"] =	{ 41, 63 },
	["FOLB"] =	{ 42, 64 },
	["RCB"] =	{ 43, 65 },
	["RIRB"] =	{ 44, 66 },
	["RILB"] =	{ 45, 67 },
	["RMRB"] =	{ 46, 68 },
	["RMLB"] =	{ 47, 69 },
	["RORB"] =	{ 48, 70 },
	["ROLB"] =	{ 49, 71 },
	-- 50
	-- 51
	["IRT"] =	{ 52, 72 },
	["ILT"] =	{ 53, 73 },
	["MRT"] =	{ 54, 74 },
	["MLT"] =	{ 55, 75 },
	["ORT"] =	{ 56, 76 },
	["OLT"] =	{ 57, 77 }
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Rotator = {
		Frames = {
			[1] = "6 4 2 1 3 5 7",

			-- START
			[2] = "[Point90] 6 4 2 1 3 5 7",
			-- STAGE1
			[3] = "[Point0] 4 2 1 3 5 [Point180] 6 7",
			-- STAGE 2
			[4] = "[Point0] 6 4 2 1 3 5 7 [Point180Fast] 1",
			[5] = "[RotateFaster] 2 3 [RotateFast] 1 4 5 [RotateMedium] 6 7",
			-- STAGE 3
			[6] = "[RotateStart] 1",
			[7] = "[RotateStart] 2 1 3",
			[8] = "[RotateStart] 4 2 1 3 5",
			[9] = "[RotateStart] 6 4 2 1 3 5 7",
			[10] = "[RotateMedium] 6 4 2 1 3 5 7",
			-- STAGE 3 (ALT)
			[11] = "[RotateStart] 1",
			[12] = "[RotateStart] 2 1",
			[13] = "[RotateStart] 2 1 3",
			[14] = "[RotateStart] 4 2 1 3",
			[15] = "[RotateStart] 4 2 1 3 5",
			[16] = "[RotateStart] 6 4 2 1 3 5",
			[17] = "[RotateStart] 6 4 2 1 3 5 7",
			[18] = "[RotateMedium] 6 4 2 1 3 5 7"
		},
		Sequences = {
			ON = { 1 },

			STAGE1 = sequence():Add(2):Hold(40):Add(3):SetRepeating( false ),
			STAGE2 = sequence():Add(2):Hold(40):Add(4):Hold(11):Add(5):SetRepeating( false ),
			STAGE3 = sequence():Add(2):Hold(40):Sequential(6,9):Stretch(3):Add(10):SetRepeating( false ),
			STAGE3ALT = sequence():Add(2):Hold(40):Sequential(11,17):Stretch(3):Add(18):SetRepeating( false ),
		}
	},
	RotatorStage1 = {
		Off = "~OFF",
		Frames = {
			[1] = "RIL ROR",
			[2] = "ROL RIR",
		},
		Sequences = {
			ON = { 1 },

			STAGE1 = sequence():Alternate(1,2,8)
		}
	},
	RotatorLight = {
		Off = "~OFF",
		Frames = {
			[1] = "ROL RML RIL RC RIR RMR ROR",

			-- The Bootup
			[2] = "ROR",
			[3] = "RMR ROR",
			[4] = "RIR RMR ROR",
			[5] = "RC RIR RMR ROR",
			[6] = "RIL RC RIR RMR ROR",
			[7] = "RML RIL RC RIR RMR ROR",
			[8] = "ROL RML RIL RC RIR RMR ROR",

			-- STAGE 1
			[9] = "[PASS] ROL RML RIL RC RIR RMR ROR",
		},
		Sequences = {
			ON = { 1 },

			STAGE1 = sequence():Sequential(2,8):Stretch(2):Add(8):Hold(26):Add(9):SetRepeating(false),
			STAGE2 = sequence():Sequential(2,8):Stretch(2):SetRepeating(false),
			STAGE3 = sequence():Sequential(2,8):Stretch(2):SetRepeating(false)
		}
	},
	Takedown = {
		Off = "~OFF",
		Frames = {
			[1] = "RC RMR RML [Point0] 1 4 5"
		},
		Sequences = {
			ON = { 1 }
		}
	},
	AlleyLeft = {
		Off = "~OFF",
		Frames = {
			[1] = "RMR [Point90] 5"
		},
		Sequences = {
			ON = { 1 }
		}
	},
	AlleyRight = {
		Off = "~OFF",
		Frames = {
			[1] = "RML [Point270] 4"
		},
		Sequences = {
			ON = { 1 }
		}
	},
	SLMain = {
		Frames = {
			[1] = "FCB FIRB FILB FMRB FMLB FORB FOLB RCB RIRB RILB RMRB RMLB RORB ROLB 50 51 IRT ILT MRT MLT ORT OLT",

			[2] = "FIRB RORB",
			[3] = "FILB ROLB",

			[4] = "FCB FIRB FILB RIRB RILB RORB ROLB IRT ILT",
			[5] = "RCB FMRB FMLB FORB FOLB RMRB RMLB 50 51 MRT MLT ORT OLT"
		},
		Sequences = {
			DEBUG = { 3 },

			STAGE1 = sequence():Alternate(2,3,8),
			STAGE2 = sequence():Alternate(4,5,8),
			STAGE3 = sequence():QuadFlash(4,5)
		}
	},
	SignalMaster = {
		Frames = {
			[1] = "78 80 82 83 81 79",

			[2] = "78",
			[3] = "78 80",
			[4] = "78 80 82",
			[5] = "78 80 82 83",
			[6] = "78 80 82 83 81",
			[7] = "78 80 82 83 81 79",
			[8] = "80 82 83 81 79",
			[9] = "82 83 81 79",
			[10] = "83 81 79",
			[11] = "81 79",
			[12] = "79",

			[13] = "82 83",
			[14] = "80 82 83 81",
			[15] = "78 80 82 83 81 79",
			[16] = "78 80 81 79",
			[17] = "78 79",

			[18] = "78",
			[19] = "79",
			[20] = "78 80",
			[21] = "81 79",
			[22] = "78 80 81 79",
			[23] = "82 83"
		},
		Sequences = {
			DEBUG = { 1 },

			STAGE1 = sequence():Alternate(18,19,9),
			STAGE2 = sequence():Alternate(20,21,9),
			STAGE3 = sequence():Alternate(22,23,9),

			LEFT = sequence():Add( 12, 11, 10, 9, 8, 7 ):Stretch( 9 ):Add( 0 ):Hold( 9 ),
			RIGHT = sequence():Add( 2, 3, 4, 5, 6, 7 ):Stretch( 9 ):Add( 0 ):Hold( 9 ),
			CENOUT = sequence():Add( 13, 14, 15 ):Stretch( 9 ):Add( 0 ):Hold( 9 )
		}
	}
}

COMPONENT.InputPriorities = {
	["Emergency.SceneLeft"] = 150,
	["Emergency.SceneRight"] = 140,
	["Emergency.SceneForward"] = 130
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Rotator = "STAGE1",
			RotatorStage1 = "STAGE1",
			RotatorLight = "STAGE1",
			SLMain = "STAGE1",
			SignalMaster = "STAGE1"
		},
		["MODE2"] = {
			Rotator = "STAGE2",
			RotatorLight = "STAGE2",
			SLMain = "STAGE2",
			SignalMaster = "STAGE2"
		},
		["MODE3"] = {
			Rotator = "STAGE3",
			RotatorLight = "STAGE3",
			SLMain = "STAGE3",
			SignalMaster = "STAGE3"
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = { AlleyLeft = "ON" }
	},
	["Emergency.SceneRight"] = {
		["ON"] = { AlleyRight = "ON" }
	},
	["Emergency.SceneForward"] = {
		["ON"] = { Takedown = "ON" },
		["FLOOD"] = { Takedown = "ON" },
	},
	["Emergency.Directional"] = {
		["LEFT"] = { SignalMaster = "LEFT" },
		["RIGHT"] = { SignalMaster = "RIGHT" },
		["CENOUT"] = { SignalMaster = "CENOUT" }
	}
}