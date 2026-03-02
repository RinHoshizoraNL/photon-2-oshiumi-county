if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "Supermighty",
	Code = "LilRanbay"
}

COMPONENT.Title = [[Whelen Liberty (OCSO)]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/supermighty/photon/whelen_liberty_ocso.mdl"

COMPONENT.BodyGroups = {
	["feet"] = 1
}

COMPONENT.SubMaterials = {
	[4] = "rin/oshiumi_sheriff/props/liberty/glass"
}

local w = 8.65
local h = w/1.59
local s = 1.7
local r = 1.5

COMPONENT.Templates = {
	["2D"] = {
		["Main"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_detail.png").MaterialName,
			Width = w,
			Height = h,
			Scale = s,
			Ratio = r
		},
		["Corner"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_corner_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_corner_detail.png").MaterialName,
			Width = w * 1.15,
			Height = h* 0.98,
			Scale = s,
			Ratio = r * 1.15
		},
		["Takedown"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_shape.png").MaterialName,
			Width = 2.1,
			Height = 2,
			Scale = r
		},
		["Split"] = {
			Shape = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/whelen_liberty/whe_lib_split_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/whelen_liberty/whe_lib_split_detail.png").MaterialName,
			Width = w,
			Height = h,
			Scale = s,
			Ratio = r / 2
		},
		["Split2"] = {
			Shape = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/whelen_liberty/whe_lib_split_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/whelen_liberty/whe_lib_split_detail.png").MaterialName,
			Width = -w,
			Height = h,
			Scale = s,
			Ratio = r / 2
		}
	},
	["Projected"] = {
		TakedownIllumination = {
			Material = "photon/flashlight/led_linear.png",
			Brightness = 2
		}
	}
}

COMPONENT.StateMap = "[R] 3 4 5 6 7 8 9 10 11 12 15 16 [B] 13 14 [W] 1 2 17 18 19 20 21 22 23 24"

COMPONENT.Elements = {

	[1] = { "Split2", Vector( 9.025, 0.08, 4.6 ), Angle( 0, -90, 0 ) },
	[2] = { "Split", Vector( 9.025, 0.08, 4.6 ), Angle( 0, -90, 0 ) },

	[3] = { "Main", Vector( 9.025, 11.1, 4.6 ), Angle( 0, -90, 0 ) },
	[4] = { "Main", Vector( 9.025, -11.1, 4.6 ), Angle( 0, -90, 0 ) },

	[5] = { "Main", Vector( 9.025, 18.6, 4.6 ), Angle( 0, -90, 0 )  },
	[6] = { "Main", Vector( 9.025, -18.6, 4.6 ), Angle( 0, -90, 0 ) },

	[7] = { "Corner", Vector( 5.193, 27.983, 4.6 ), Angle( 0, -90+40, 0 ) },
	[8] = { "Corner", Vector( 5.193, -27.983, 4.6 ), Angle( 0, -90-40, 0 ) },

	[9] = { "Corner", Vector( -5.193, 27.983, 4.6 ), Angle( 0, 90 - 40, 0 ) },
	[10] = { "Corner", Vector( -5.193, -27.983, 4.6 ), Angle( 0, 90 + 40, 0 ) },

	[11] = { "Main", Vector( -9.025, 18.7, 4.6 ), Angle( 0, 90, 0 ) },
	[12] = { "Main", Vector( -9.025, -18.7, 4.6 ), Angle( 0, 90, 0 ) },

	[13] = { "Main", Vector( -9.025, 11.25, 4.6 ), Angle( 0, 90, 0 ) },
	[14] = { "Main", Vector( -9.025, -11.25, 4.6 ), Angle( 0, 90, 0 ) },

	[15] = { "Main", Vector( -9.025, 3.825, 4.6 ), Angle( 0, 90, 0 ) },
	[16] = { "Main", Vector( -9.025, -3.825, 4.6 ), Angle( 0, 90, 0 ) },

	[17] = { "Takedown", Vector( 0, 31.80, 4.6 ), Angle( 0, 0, 0 ) },
	[18] = { "Takedown", Vector( 0, -31.80, 4.6 ), Angle( 0, 180, 0 ) },

	[19] = { "Takedown", Vector( 8.95, 5.536, 4.6 ), Angle( 0, -90, 0 ) },
	[20] = { "Takedown", Vector( 8.95, -5.536, 4.6 ), Angle( 0, -90, 0 ) },
	
	[21] = { "TakedownIllumination", Vector( 8.95, 5.536, 4.6 ), Angle( 0, -90, 0 ) },
	[22] = { "TakedownIllumination", Vector( 8.95, -5.536, 4.6 ), Angle( 0, -90, 0 ) },
	
	[23] = { "TakedownIllumination", Vector( 0, 31.80, 4.6 ), Angle( 0, 0, 0 ) },
	[24] = { "TakedownIllumination", Vector( 0, -31.80, 4.6 ), Angle( 0, 180, 0 ) }

}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20",
		},
		Sequences = {
			["DEBUG"] = { 1 }
		}
	},
	FrontCenter = {
		Frames = {
			[1] = "1 2",
			[2] = "1",
			[3] = "2"
		},
		Sequences = {
			["STAGE3"] = sequence():Add(2,0,2,0,2,3,0,3,0,3)
		}
	},
	FrontInner = {
		Frames = {
			[1] = "3 4",
			[2] = "3",
			[3] = "4"
		},
		Sequences = {
			["STAGE3"] = sequence():Add(2,2,0,2,2,3,3,0,3,3)
		}
	},
	FrontOuter = {
		Frames = {
			[1] = "5 6",
			[2] = "5",
			[3] = "6"
		},
		Sequences = {
			["STAGE2"] = sequence():Alternate(2,3,8),
			["STAGE3"] = sequence():Add(2,2,0,2,2,3,3,0,3,3)
		}
	},
	Corner = {
		Frames = {
			[1] = "7 8 9 10",
			[2] = "7 9",
			[3] = "8 10"
		},
		Sequences = {
			["STAGE3"] = sequence():Add(2,0,2,0,2,3,0,3,0,3)
		}
	},
	RearMain = {
		Frames = {
			[1] = "13 15 16 14",

			[2] = "13 14",
			[3] = "15 16",
			
			[4] = "13",
			[5] = "14",
		},
		Sequences = {
			["STAGE1"] = sequence():Alternate(4,5,8),
			["STAGE2"] = sequence():Alternate(0,2,8),
			["STAGE3"] = sequence():Alternate(2,3,4)
		}
	},
	RearInner = {
		Frames = {
			[1] = "11 12",
			[2] = "11",
			[3] = "12"
		},
		Sequences = {
			["STAGE2"] = sequence():Alternate(1,0,8),
			["STAGE3"] = sequence():Add(3,0,3,0,3,2,0,2,0,2)
		}
	},
	Marker = {
		Frames = {
			[1] = "7 8 9 10"
		},
		Sequences = {
			["CORNER"] = { 1 }
		}
	},
	Takedown = {
		Frames = {
			[1] = "19 20 21 22"
		},
		Sequences = {
			["ILLUM"] = { 1 }
		}
	},
	AlleyLeft = {
		Frames = {
			[1] = "17 23"
		},
		Sequences = {
			["ILLUM"] = { 1 }
		}
	},
	AlleyRight = {
		Frames = {
			[1] = "18 24"
		},
		Sequences = {
			["ILLUM"] = { 1 }
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = { 
			RearMain = "STAGE1"
		},
		["MODE2"] = {
			FrontOuter = "STAGE2",
			RearMain = "STAGE2",
			RearInner = "STAGE2"
		},
		["MODE3"] = {
			FrontCenter = "STAGE3:36",
			FrontInner = "STAGE3:72",
			FrontOuter = "STAGE3:108",
			Corner = "STAGE3:144",
			RearMain = "STAGE3",
			RearInner = "STAGE3:144"
		}
	},
	["Emergency.SceneForward"] = {
		["ON"] = {
			Takedown = "ILLUM"
		},
		["FLOOD"] = {
			Takedown = "ILLUM"
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = {
			AlleyLeft = "ILLUM"
		},
	},
	["Emergency.SceneRight"] = {
		["ON"] = {
			AlleyRight = "ILLUM"
		}
	},
	["Emergency.Marker"] = {
		["ON"] = {
			Marker = "CORNER"
		}
	}
}