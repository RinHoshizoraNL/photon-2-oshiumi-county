if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Rin Hoshizora"

COMPONENT.Credits = {
	Model = "MattDavidJ",
	Code = "anemolis72"
}

COMPONENT.Title = [[Tomar Heliobe Oshiumi County Sheriff]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/lightbars/heliobe/heliobe.mdl"

COMPONENT.SubMaterials = {
	[2] = "rin/oshiumi_sheriff/props/heliobe/glass",
}

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

COMPONENT.StateMap = "[1] 1 2 3 4 5 6 7 8 11 [3] 9 10 [4] 12 13 14 15"

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
			[1] = "1 3 5 7 9 11",
			[2] = "2 4 6 8 10",
		},
		Sequences = {
			["CODE3"] = { 1,0,1,0,1,0,1,0,1,0,0,0,0,0,0,2,0,2,0,2,0,2,0,2,0,0,0,0,0,0 },
		}
	},
	front = {
		FrameDuration = 1/40,
		Frames = {
			[1] = "1 2 5 6",
			[2] = "3 4",
		},
		Sequences = {
			["CODE3"] = { 1,0,1,0,1,0,1,0,1,0,0,0,2,0,2,0,2,0,2,0,2,0,0,0 },
		}
	},
	rear = {
		FrameDuration = 1/40,
		Frames = {
			[1] = "9 10",
			[2] = "7 8 11",
		},
		Sequences = {
			["CODE3"] = { 1,0,1,0,1,0,1,0,1,0,0,0,2,0,2,0,2,0,2,0,2,0,0,0 },
		}
	},
	takedown = {
		Frames = {
			[0] = "[~OFF] 12 13",
			[1] = "12",
			[2] = "13",
			[3] = "12 13",
		},
		Sequences = {
			["CODE3"] = sequence():Alternate(3,0,5),
			["ON"] = { 3 },
		}
	},
	alley_left = {
		Frames = {
			[0] = "[~OFF] 15",
			[1] = "15",
		},
		Sequences = {
			["CODE3"] = sequence():Alternate(0,1,5),
			["ON"] = { 1 },
		}
	},
	alley_right = {
		Frames = {
			[0] = "[~OFF] 14",
			[1] = "14",
		},
		Sequences = {
			["CODE3"] = sequence():Alternate(0,1,5),
			["ON"] = { 1 },
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
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE2"] = {
			front = "CODE3",
			rear = "CODE3",
		},
		["MODE3"] = {
			front = "CODE3",
			rear = "CODE3",
			takedown = "CODE3",
			alley_left = "CODE3",
			alley_right = "CODE3",
		}
	},
	["Emergency.SceneForward"] = {
		["ON"] = {
			takedown = "ON",
		},
		["FLOOD"] = {
			takedown = "ON",
			alley_left = "ON",
			alley_right = "ON",
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = {
			alley_left = "ON",
		}
	},
	["Emergency.SceneRight"] = {
		["ON"] = {
			alley_right = "ON",
		}
	},
}