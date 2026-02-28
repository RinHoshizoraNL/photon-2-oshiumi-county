if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1991 Chevrolet Caprice OCSO"
VEHICLE.Vehicle		= "91caprice_sgm"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/caprice91/patrol" },
				},
				Props = {
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 118, 17),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
					},
				}
			},
			{
				Option = "Highway Patrol",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/caprice91/highway" },
				},
				Props = {
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 118, 17),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
					},
				}
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/caprice91/supervisor" },
				},
				Props = {
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 118, 17),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
					},
				}
			},
			{
				Option = "Command",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/caprice91/command" },
				},
				Props = {
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 118, 17),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/oshiumi_sheriff/props/white"
						}
					},
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Whelen Advantedge", --I'LL GET THIS WORKING SOME TIME IDK
				Props = {
					{
						Model = "models/sentry/props/whelenadvantedge.mdl",
						Position = Vector( 0, -20.5, 60.2 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1.012,
						SubMaterials = {
							[2] = "rin/oshiumi_sheriff/props/advantedge"
						},
						BodyGroups = {
							["Speaker"] = 1,
						},
					},
				}
			},
		}
	},
	{
		Category = "Grille",
		Options = {
            {
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( -9, 104, 20.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = {Light = "HALOGEN"},
							},
						},
					},
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( 9, 104, 20.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = {Light = "HALOGEN"},
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
				Option = "Federal Signal PA300",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 104, 23.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "pa300_2",
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
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -37.5, 30, 42 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "trim", Value = 1 },
                },
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 51),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/sirenbox.mdl",
						Position = Vector( 1, 29.8, 35.75 ),
						Angles = Angle( 90, 270, 0 ),
						Scale = 1.35,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 26.5, 24 ),
						Angles = Angle( 270, 270, 0 ),
						Scale = 0.39,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( 0, -105, 37.5),
						Angles = Angle( 0, 0, 6.5 ),
						Scale = 1,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 114, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_sheriff_old",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_sheriff_old",
						},
					},
				}
			}
		}
	},
}
