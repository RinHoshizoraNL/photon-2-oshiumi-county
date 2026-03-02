local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Name = "ocso_photon_whe_tir6"
COMPONENT.Title = "Whelen Tir6"
COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Model = "ANM",
	Code = "LilRanbay"
}

COMPONENT.Category = "Perimeter"
COMPONENT.Model = "models/anemolis/props/whelen/500/anemolis_wh500tir6_l.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 1.8
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width 	= 5.56,
			Height	= 2.67,
			Detail = PhotonMaterial.GenerateLightQuad("rin/oshiumi_sheriff/sprites/whelen_tir6_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("rin/oshiumi_sheriff/sprites/whelen_tir6_shape.png").MaterialName,
			Scale = 1.3
		}
	}
}

COMPONENT.States = {
	[1] = "R"
}

COMPONENT.StateMap = "[1] 1"

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 0.3, 0.025 ), Angle( 0, 0, 0 ) }
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "1"
		},
		Sequences = {
			DEBUG = { 1 },
			["TRIPLE"] = sequence():TripleFlash(0, 1):Stretch(1),
			["FLASHHOLD"] = sequence():FlashHold(1,2,3):AppendPhaseGap(),
			["OFF"] = { 0 },
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = { All = "DEBUG" },
		["MODE2"] = { All = "DEBUG" },
		["MODE3"] = { All = "TRIPLE" }
	}
}

Photon2.RegisterComponent( COMPONENT )