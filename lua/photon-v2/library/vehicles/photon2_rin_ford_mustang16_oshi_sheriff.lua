if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2016 Ford Mustang GT350 OCSO"
VEHICLE.Vehicle		= "gt350r_sgm"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Highway Patrol",
				SubMaterials = {
					{ Id = 0, Material = "rin/oshiumi_sheriff/mustang/highway" }
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{ Option = "SoundOff Signal nForce", 
				Variants = {
					{
						Variant = "Default",
						Components = {
							{
								Name = "@nforce48",
								Component = "photon_sos_nforce_48_ocso",
								Position = Vector( 0, -17, 68 ),
								Angles = Angle( 0, 0, -0.5 ),
								Scale = 0.97,
								Bones = {
									["foot_l"] = { Vector( 1, 0, 0 ), Angle(), 1 },
									["foot_r"] = { Vector( -1, 0, 0 ), Angle(), 1 }
								}
							},
						}
					},
				},
			},
		},
	},
	{
		Category = "Grille",
		Options = {
			{
				Option = "Grille",
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( -30, 97, 1 ),
						Position = Vector( -13, 106.5, 14 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "MODE1"},
								["MODE2"] = {Light = "MODE1"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( -30, 83, -1 ),
						Position = Vector( 13, 106.5, 14 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "MODE1"},
								["MODE2"] = {Light = "MODE1"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
				}
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Soundoff nErgy 400",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/100j.mdl",
						Position = Vector( 0, 100, 18 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "sos_nergy400",
						Templates = {
							["Sound"] = { 
								Tone = {
									DSP = 0,
									Pitch = 100
								}
							}
						},
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
						Position = Vector( 6.5, 8, 40 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 0.9,
						Options = {
							Pole = 0,
							Base = -60,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 8, 9.1, 57.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 13, 29.5 ),
						Angles = Angle( 245, 270, 0 ),
						Scale = 0.33,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sosnergy.mdl",
						Position = Vector( 0, 17, 39.3 ),
						Angles = Angle( 65, 270, 0 ),
						Scale = 0.95,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 0, -30, 65.8 ),
						Angles = Angle( 0, 0, 5.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -5, -40, 64.5 ),
						Angles = Angle( -1, 0, 8 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 5, -40, 64.5 ),
						Angles = Angle( 1, 0, 8 ),
						Scale = 1,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 112, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 112.7, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_arrive",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -119.1, 27 ),
						Angles = Angle( -18, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff",
						},
					},
				}
			}
		}
	},
}