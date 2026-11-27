if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline OCSO"
VEHICLE.Vehicle		= "econoline_sgm"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "DHS Police",
				SubMaterials = {
					{ Id = 21, Material = "rin/oshiumi_sheriff/econoline92/patrol" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
					{ Id = 5, Material = "sentry/shared/black" },
                },
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Tomar Heliobe",
				Components = {
					{
						Component = "photon_tomar_heliobe_oshi_sheriff",
						Position = Vector( 0, 10, 89.5 ),
						Angles = Angle( 1.5, 90, 0 ),
						Scale = 1.2,
					},
				}
			}
		}
	},
	{
		Category = "Grille Lights",
		Options = {
            {
				Option = "Grille Lights",
				Components = {
					{
						Component = "photon_par46_flasher_oshi",
						Position = Vector( -15.5, 100, 38.92 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.5,
						RenderGroup = RENDERGROUP_OPAQUE,
						Inputs = {
							["Vehicle.Brake"] = {
								["BRAKE"] = {},
							}
						}
					},
					{
						Component = "photon_par46_flasher_oshi",
						Position = Vector( 15.5, 100, 38.92 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.5,
						RenderGroup = RENDERGROUP_OPAQUE,
						Inputs = {
							["Vehicle.Brake"] = {
								["BRAKE"] = {},
							}
						}
					},
                },
			},
		}
	},
	{
		Category = "Rear Lights",
		Options = {
            {
				Option = "Rear Lights",
				Components = {
					{
						Name = "@deck_par46",
						Component = "photon_par46_flasher_oshi",
						Position = Vector( -25, -140, 87 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						Segments = {
							["Light"] = {
								Sequences = {
									STAGE96 = sequence():Alternate(0,1,8),
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { 
									Light = "STAGE96",
								}
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Inherit = "@deck_par46",
						Position = Vector( 25, -140, 87 ),
						Angles = Angle( 0, 180, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { 
									Light = "STAGE96",
								}
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -25, -140, 84 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 25, -140, 84  ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
		}
	},
	{
		Category = "Spotlights",
		Options = {
			{
				Option = "Spotlights",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -42, 47, 69 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
				}
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Whelen Gamma",
				Components = {
					{
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 90, 35 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "whelen_gamma",
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "partition", Value = 1 },
				},
                Props = {
					{
						Model = "models/tdmcars/emergency/equipment/whelen_295slsa6.mdl",
						Position = Vector( -2, 43, 61.5 ),
						Angles = Angle( 80, 268.5, 0 ),
						Scale = 1.2,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( -3.7, 41.7, 54 ),
						Angles = Angle( 265, 270, 0 ),
						Scale = 0.42,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -50, 90.9 ),
						Angles = Angle( 0, 0, 0.5 ),
						Scale = 1,
					},
					{
						Model = "models/supermighty/photon/sidestep.mdl",
						Position = Vector( 0, 75, -11 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector(1.75, 0.92, 1),
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 107, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff_old",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
				}
			}
		}
	},
}