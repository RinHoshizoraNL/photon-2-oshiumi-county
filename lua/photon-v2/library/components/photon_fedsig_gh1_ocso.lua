local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Name = "photon_fedsig_gh1_ocso"
COMPONENT.Title = "Federal Signal GH1"
COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Model = "Awesom1miner",
	Code = "LilRanbay"
}

COMPONENT.Category = "Perimeter"
COMPONENT.Model = "models/lightbars/fs_gh1/fs_gh1.mdl"

COMPONENT.BodyGroups = { ["type"] = 0 }
COMPONENT.SubMaterials = {
	[1] = "rin/oshiumi_sheriff/props/gh1/chrome"
}

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 1.8
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
	Halogen = {
		Off = "~OFF",
		Frames = {
			[1] = "1"
		},
		Sequences = {
			ON = { 1 },
			STAGE3 = sequence():Alternate( 1, 0, 7 )
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = { Halogen = "STAGE3" },
		["MODE2"] = { Halogen = "STAGE3" },
		["MODE3"] = { Halogen = "STAGE3" }
	}
}

Photon2.RegisterComponent( COMPONENT )