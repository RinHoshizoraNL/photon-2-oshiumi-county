if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2018 Toyota Camry OCSO Unmarked"
VEHICLE.Vehicle		= "sky_camry18_ico"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
	["roof"] = 1,
}

VEHICLE.SubMaterials = {
	[1] = "sentry/13caprice/black",
	[2] = "sentry/13caprice/black",
	[3] = "sentry/shared/env_cubemap_model",
    [5] = "sentry/shared/glass",
	[17] = "schmal/photon/fedsig_visionslr/lens_pod_2",
}

VEHICLE.Equipment = {
	{
		Category = "Rear Deck",
		Options = {
			{
				Option = "Rear Deck",
				Props = {
					{
						Model = "models/sentry/props/soundofffascia_lbracket.mdl",
						Position = Vector( -9, -85, 54.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/soundofffascia_lbracket.mdl",
						Position = Vector( 9, -85, 54.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/soundofffascia_lbracket.mdl",
						Position = Vector( -3, -85, 54.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/soundofffascia_lbracket.mdl",
						Position = Vector( 3, -85, 54.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Components = {
					{
						Component = "photon_fedsig_micropulse_ultra", --REAR
						Angles = Angle( 0, 180, 0 ),
						Position = Vector( -9, -85.3, 54.5 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 0, 180, 0 ),
						Position = Vector( 9, -85.3, 54.5 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 0, 180, 0 ),
						Position = Vector( -3, -85.3, 54.5 ),
						Scale = 1,
						States = {
							[1] = "B",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 0, 180, 0 ),
						Position = Vector( 3, -85.3, 54.5 ),
						Scale = 1,
						States = {
							[1] = "B",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Federal Signal Smart Siren",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 107, 29.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "fedsig_smartsiren",
						Templates = {
							["Sound"] = { 
								Tone = {
									DSP = 0,
									Pitch = 100
								}
							}
						},
						Inputs = { 
							["Emergency.SirenParkKill"] = { ["PARK"] = {} }
						}
					},
				}
			}
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 8, 23, 35 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				},
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 9, 19.5, 57.4),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/photon_ex/controllers/fedsig_scsb.mdl",
						Position = Vector( 0, 4.2, 25 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 7.5, 25.7 ),
						Angles = Angle( 200, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}