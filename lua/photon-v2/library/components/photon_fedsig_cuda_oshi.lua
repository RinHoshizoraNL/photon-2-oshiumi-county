if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Rin Hoshizora"

COMPONENT.Credits = {
	Model = "GTA5",
	Code = "anemolis72"
}

COMPONENT.Title = [[Federal Signal Cuda Oshiumi County Sheriff]]
COMPONENT.Category = "Interior"
COMPONENT.Model = "models/anemolis/props/trioptic/trioptic3.mdl"

COMPONENT.States = {
	[1] = "R",
}

local s = 1.6

COMPONENT.Templates = {
	["2D"] = {
		main = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/anemolis_trioptic_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/anemolis_trioptic.png").MaterialName,
			Width = 4.2,
			Height = 4.45,
			Ratio = .4,
			Scale = .4,
			ForwardVisibilityOffset = -0.1,
			ForwardBloomOffset = 0.1,
			-- LightMatrix = { Vector(s, 0, 0), Vector(-s, 0, 0),  },
			-- LightMatrixScaleMultiplier = 0.6
		},
	}
}

COMPONENT.StateMap = "[1] 1"

COMPONENT.Elements = {
	[1] = { "main", Vector(0, 1.62, .63 ), Angle(0, 0, 0) },
}

COMPONENT.Segments = {
	fedsig_cuda = {
		Frames = {
			[1] = "1",
		},
		Sequences = {
			["CODE"] = sequence():QuadFlash( 0, 1 ):SetTiming( 1/20 ),
		}
	},
	["Brake"] = {
		Frames = {
			[1] = "1"
		},
		Sequences = {
			["ON"] = { 1 }
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE2"] = {
			fedsig_cuda = "CODE"
		},
		["MODE3"] = {
			fedsig_cuda = "CODE"
		}
	},
	["Vehicle.Brake"] = {
		["BRAKE"] = {
			["Brake"] = "ON",
		}
	},
}