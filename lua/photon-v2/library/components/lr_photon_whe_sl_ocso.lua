if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Title = "Whelen Slimlighter Oshiumi"
COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Model = "RobertMDLS, LilRanbay",
	Code = "LilRanbay"
}

COMPONENT.Category = "Interior"
COMPONENT.Model = "models/lilranbay/props/whelen_slimlighter.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 1.8
}

COMPONENT.Templates = {
	["2D"] = {
		tir6 = {
			Width 	= 6.42,
			Height	= 3.21,
			Detail = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/whelen_slimlighter/whe_sl_tir6_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/whelen_slimlighter/whe_sl_tir6_detail.png").MaterialName,
			Scale = 1.1
		},
		fivemm = {
			Width 	= 8.66,
			Height	= 4.25,
			Detail = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/whelen_slimlighter/whe_sl_5mm_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("lilranbay/sprites/whelen_slimlighter/whe_sl_5mm_shape.png").MaterialName,
			Scale = 0.65,
			LightMatrix = {
				Vector(3.3,0,0),
				Vector(2.2,0,0),
				Vector(1.1,0,0),
				Vector(-3.3,0,0),
				Vector(-2.2,0,0),
				Vector(-1.1,0,0),
				Vector(0,0,0),
			}
		}
	}
}

COMPONENT.States = {
	[1] = "R",
	[2] = "B"
}

COMPONENT.StateMap = "[1] 1 3 [2] 2 4"

COMPONENT.Elements = {
	[1] = { "tir6", Vector( -0.49, 5.93, 0 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["lighthead"] = 0 } },
	[2] = { "tir6", Vector( -0.49, -5.93, 0 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["lighthead"] = 0 } },
	[3] = { "fivemm", Vector( -0.49, 4.88, 0.02 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["lighthead"] = 1 } },
	[4] = { "fivemm", Vector( -0.49, -4.88, 0.02 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["lighthead"] = 1 } }
}

COMPONENT.ElementGroups = {
	["Left"] = { 1, 3 },
	["Right"] = { 2, 4 }
}

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "Left Right",
			[2] = "Left",
			[3] = "Right"
		},
		Sequences = {
			DEBUG = { 1 },
            ["ALTERNATE"] = sequence():Alternate(2,3,3),
			["CRUISE"] = { 1 },
			["CRUISEA"] = { 2 },
			["CRUISEB"] = { 3 },
			["RESPONSE"] = sequence():Add( 0, 0, 2, 0, 2, 0, 2, 0, 0, 3, 0, 3, 0, 3 ):SetTiming( 1/31 ),
			["OFF"] = { 0 },
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = { All = "CRUISE" },
		["MODE2"] = { All = "CRUISE" },
		["MODE3"] = { All = "RESPONSE" }
	}
}