if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "anemolis72"

COMPONENT.Credits = {
	Model = "MattDavidJ",
	Code = "anemolis72"
}

COMPONENT.Title = [[Tomar Heliobe Oshiumi]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/lightbars/heliobe/heliobe.mdl"

COMPONENT.States = {
	[1] = "R",
	[2] = "B",
	[3] = "A",
	[4] = "SW"
}

local s = 1.6

COMPONENT.Templates = {
	["2D"] = {
		heliobe = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/anemolis_square_src.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/anemolis_square_src.png").MaterialName,
			Width = 7.95,
			Height = 3.5,
			Ratio = 1,
			Scale = 1.4,
			ForwardVisibilityOffset = -0.1,
			ForwardBloomOffset = 0.1,
			-- LightMatrix = { Vector(s, 0, 0), Vector(-s, 0, 0),  },
			-- LightMatrixScaleMultiplier = 0.6
		},
		heliobe_td = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/anemolis_square_src.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/anemolis_square_src.png").MaterialName,
			Width = 7.95/1.95,
			Height = 3.5,
			Ratio = 1,
			Scale = 1.0,
			IntensityGainFactor = 15,
			IntensityLossFactor = 2,
			ForwardVisibilityOffset = -0.1,
			ForwardBloomOffset = 0.1,
			-- LightMatrix = { Vector(s, 0, 0), Vector(-s, 0, 0),  },
			-- LightMatrixScaleMultiplier = 0.6
		}
	}
}

COMPONENT.StateMap = "[1] 1 3 5 7 2 4 6 8 11 [3] 10 9  [4] 12 13 14 15"

COMPONENT.Elements = {
	[1] = { "heliobe", Vector(5.95, -9.2, 5), Angle(0, -90, 0) },
	[2] = { "heliobe", Vector(5.95, 9.2, 5), Angle(0, -90, 0) },
	[3] = { "heliobe", Vector(5.95, -18.35, 5), Angle(0, -90, 0) },
	[4] = { "heliobe", Vector(5.95, 18.35, 5), Angle(0, -90, 0) },
	--sides
	[5] = { "heliobe", Vector(-2.35, -27.02, 5), Angle(0, 180, 0) },
	[6] = { "heliobe", Vector(-2.35, 27.02, 5), Angle(0, 0, 0) },
	--rear
	[7] = { "heliobe", Vector(-5.92, -18.4, 5), Angle(0, 90, 0) },
	[8] = { "heliobe", Vector(-5.92, 18.4, 5), Angle(0, 90, 0) },
	[9] = { "heliobe", Vector(-5.92, -9.2, 5), Angle(0, 90, 0) },
	[10] = { "heliobe", Vector(-5.92, 9.2, 5), Angle(0, 90, 0) },
	[11] = { "heliobe", Vector(-5.92, 0, 5), Angle(0, 90, 0) },
	--tkdn f
	[12] = { "heliobe_td", Vector(5.95, -1.9, 5), Angle(0, -90, 0) },
	[13] = { "heliobe_td", Vector(5.95, 1.9, 5), Angle(0, -90, 0) },
	--tkdwn side
	[14] = { "heliobe_td", Vector(3.9, -25.05, 5), Angle(0, -135, 0) },
	[15] = { "heliobe_td", Vector(3.9, 25.05, 5), Angle(0, -45, 0) },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	heliobe = {
		FrameDuration = 1/40,
		Frames = {
			[1] = "4 6 8 3 5 7",
			[2] = "10 9 1 2",
			[3] = "11",
			[4] = "7 5 3 4 6 8"
		},
		Sequences = {
			["CODE1"] = { 4, },
			["CODE2"] = { 1 },
			["CODE3"] = { 1,0,1,0,1,0,1,0,1,0,0,0,0,2,0,2,0,2,0,2,0,2,0,0,0,0,3,0,3,0,3,0,3,0,3,0,0,0,0 },
		}
	},
	on = {
		Frames = {
			[0] = "[~OFF] 12 13 14 15",
			[1] = "12 14",
			[2] = "13 15",
		},
		Sequences = {
			["CODE3"] = sequence()
			:Steady(2,3):Add(0):Steady(1,3):Add(0)
		}
	},
	["Front_Outer"] = {
		Frames = {
			[1] = "3",
			[2] = "4",
		},
		Sequences = {
			["FLASH"] = sequence():Add( 1, 0, 1, 0, 1, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0 ):SetTiming( 1/30 )
		}
	},
	["Front_Inboard"] = {
		Frames = {
			[1] = "1",
			[2] = "2",
		},
		Sequences = {
			["FLASH"] = sequence():Add( 0, 0, 1, 0, 1, 0, 1, 0, 0, 2, 0, 2, 0, 2 ):SetTiming( 1/31 )
		}
	},
	["Corners"] = {
		Frames = {
			[1] = "5",
			[2] = "6",
		},
		Sequences = {
			["FLASH"] = sequence():Add( 0, 0, 1, 0, 1, 0, 1, 0, 0, 2, 0, 2, 0, 2 ):SetTiming( 1/31 )
		}
	},
	["Rear"] = {
		Frames = {
			[1] = "11",
			[2] = "9 10",
			[3] = "7 8",
		},
		Sequences = {
			["FLASH"] = sequence():Add( 1, 0, 1, 0, 1, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 3, 0, 3, 0, 3, 0, 0, 0 ):SetTiming( 1/30 )
		}
	},
	["Steady"] = {
		Frames = {
			[1] = "3 4 5 6 7 8",
			[2] = "3 4 5 6",
		},
		Sequences = {
			["Full"] = { 1, },
			["Front"] = { 2, },
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			["Steady"] = "Full",
		},
		["MODE2"] = {
			["Steady"] = "Front",
			["Rear"] = "FLASH",
		},
		["MODE3"] = {
			["Front_Outer"] = "FLASH",
			["Front_Inboard"] = "FLASH",
			["Corners"] = "FLASH",
			["Rear"] = "FLASH",
			on = "CODE3"
		}
	}
}