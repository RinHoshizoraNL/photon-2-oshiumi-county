local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Name = "fitp_photon_fs_gs1"
COMPONENT.Title = "Federal Signal GS1"
COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Model = "Awesom1miner",
	Code = "LilRanbay"
}

COMPONENT.Category = "Perimeter"
COMPONENT.Model = "models/lightbars/fs_gh1/fs_gh1.mdl"

COMPONENT.BodyGroups = { ["type"] = 1 }
COMPONENT.SubMaterials = {
	[1] = "projectusfi/props/gh1/chrome",
	[2] = "projectusfi/skins/fitp/props/gh1/gh1_glass_red",
	[3] = "projectusfi/skins/fitp/props/gh1/gh1_glass_outer_colored"
}

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 1.8
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width = 4.57,
			Height = 6.43,
			Scale = 1,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_strobe_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_strobe_shape.png").MaterialName,
		}
	}
}

COMPONENT.States = {
	[1] = "R"
}

COMPONENT.StateMap = "[1] 1"

COMPONENT.Elements = {
	[1] = { "Light", Vector( 1.59, 0, 3.27 ), Angle( 0, -90, 0 ) }
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Strobe = {
		Frames = {
			[1] = "1"
		},
		Sequences = {
			STAGE2 = sequence():Add( 1,0,1,0,0,0,0,0 ):AppendPhaseGap():SetTiming( 1/30 ),
			STAGE3 = sequence():Add( 1,0,1,0,1,0,1,0 ):AppendPhaseGap():SetTiming( 1/30 ),
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = { Strobe = "STAGE2" },
		["MODE2"] = { Strobe = "STAGE2" },
		["MODE3"] = { Strobe = "STAGE3" }
	}
}

Photon2.RegisterComponent( COMPONENT )