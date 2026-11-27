if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Rin Hoshizora & LilRanbay"

COMPONENT.Credits = {
	Code = "Rin Hoshizora & LilRanbay",
	Model = "Khuutznetsov",
}

COMPONENT.Title = [[Federal Signal GH1 Oshiumi County Sheriff]]
COMPONENT.Category = "Perimeter"
COMPONENT.Model = "models/lightbars/fs_gh1/fs_gh1.mdl"

COMPONENT.BodyGroups = { ["type"] = 0 }

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 2
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width = 4.46,
			Height = 6,
			Scale = 0.5,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_shape.png").MaterialName,
			IntensityGainFactor = 8,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF"
		}
	}
}

COMPONENT.States = {
	[1] = "~R"
}

COMPONENT.StateMap = "[1] 1"

COMPONENT.Elements = {
	[1] = { "Light", Vector( 1.59, 0, 3.27 ), Angle( 0, -90, 0 ) }
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	["Light"] = {
		Off = "~OFF",
		Frames = {
			[1] = "1",
		},
		Sequences = {
			["OFF"] = { 0 },

			["HALOGEN"] = sequence():Alternate(1, 0, 8)
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
	}
}