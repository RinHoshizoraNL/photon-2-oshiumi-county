if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Rin Hoshizora"

COMPONENT.Credits = {
	Code = "Schmal",
	Model = "Khuutznetsov",
}

COMPONENT.Phase = nil

COMPONENT.Title = [[PAR46 Flasher Oshiumi County Sheriff]]
COMPONENT.Category = "Interior"
COMPONENT.Model = "models/sentry/props/spotlight_head.mdl"

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 2
}

COMPONENT.SubMaterials = {
	[3] = "schmal/photon/fedsig_legend/dome_l",
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_detail.png").MaterialName,
			Width = 7.2,
			Height = 7.2,
			Scale = 2,
			IntensityGainFactor = 8,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF",
			States = halogenStates
		}
	}
}

COMPONENT.States = {
	[1] = "R"
}

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 2.2, 3.7 ), Angle( 0, 0, 0 ) },
}

COMPONENT.ElementStates = {}

COMPONENT.StateMap = "[1] 1"

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	["Light"] = {
		Off = "~OFF",
		Frames = {
			[1] = "1",
			[2] = "1",
		},
		Sequences = {
			["ON"] = {

			},
			["OFF"] = { 0 },
			["HALOGEN"] = sequence():Alternate(0,1,5),
		}
	},
	["Brake"] = {
		Off = "PASS",
		Frames = {
			[1] = "1"
		},
		Sequences = {
			["ON"] = { 1 }
		}
	},
}

COMPONENT.InputPriorities = {
	["Virtual.Siren"] = 200
}

COMPONENT.VirtualOutputs = {
	-- Virtual channel name
	["Virtual.Siren"] = {
		{
			Mode = "T1",
			Conditions = {
				["Emergency.Siren"] = { "T1" },
				["Emergency.Warning"] = { "MODE1", "MODE2", "MODE3" }
			}
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE2"] = {
			Light = "HALOGEN"
		},
		["MODE3"] = {
			Light = "HALOGEN"
		}
	},
	["Vehicle.Brake"] = {
		["BRAKE"] = {
			["Brake"] = "ON",
		}
	},
	-- ["Virtual.Siren"] = {
	-- 	["T1"] = {
	-- 		Light = "ON"
	-- 	}
	-- }
}