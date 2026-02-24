if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1996 Ford Crown Victoria OCSO"
VEHICLE.Vehicle		= "96cvpi_sgm"
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
					{ Id = 6, Material = "rin/oshiumi_sheriff/crownvic96/patrol" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 120, 23.3),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 122.7, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_credit",
						},
					},
				}
			},
			{
				Option = "Highway Patrol",
				SubMaterials = {
					{ Id = 6, Material = "rin/oshiumi_sheriff/crownvic96/highway" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 120, 23.3),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 122.7, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_sheriff_old_dui",
						},
					},
				}
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 6, Material = "rin/oshiumi_sheriff/crownvic96/supervisor" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 120, 23.3),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 122.7, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_credit",
						},
					},
				}
			},
			{
				Option = "Command",
				SubMaterials = {
					{ Id = 6, Material = "rin/oshiumi_sheriff/crownvic96/command" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 120, 23.3),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(225, 225, 225),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 122.7, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_credit_white",
						},
					},
				}
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
						Component = "photon_tomar_heliobe_ocso",
						Position = Vector( 0, -19, 67 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.05,
						SubMaterials = {
							[2] = "rin/oshiumi_sheriff/props/heliobe"
						}
					},
                }
			},
		}
	},
	{
		Category = "Rear Deck",
		Options = {
            {
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( -22.4, -74.5, 47.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = {Light = "HALOGEN"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( 22.4, -74.5, 47.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = {Light = "HALOGEN"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
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
						Position = Vector( -7.5, 122.5, 24.25 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.9,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = {Light = "HALOGEN"},
							},
						},
					},
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( 7.5, 122.5, 24.25 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.9,
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
				Option = "Federal Signal Smart Siren",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 107, 29.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "pa300_1",
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
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 1 },
					{ BodyGroup = "hubcaps_fr", Value = 0 },
					{ BodyGroup = "hubcaps_rl", Value = 0 },
					{ BodyGroup = "hubcaps_rr", Value = 0 },
				}
			},
			{
				Option = "Steelies missing centercaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 2 },
					{ BodyGroup = "hubcaps_fr", Value = 2 },
					{ BodyGroup = "hubcaps_rl", Value = 2 },
					{ BodyGroup = "hubcaps_rr", Value = 2 },
				}
			},
			{
				Option = "Steelies missing one centercap",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 1 },
					{ BodyGroup = "hubcaps_fr", Value = 2 },
					{ BodyGroup = "hubcaps_rl", Value = 0 },
					{ BodyGroup = "hubcaps_rr", Value = 0 },
				}
			},
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 0 },
					{ BodyGroup = "hubcaps_fr", Value = 1 },
					{ BodyGroup = "hubcaps_rl", Value = 1 },
					{ BodyGroup = "hubcaps_rr", Value = 1 },
				}
			},
			{
				Option = "Hubcaps one missing",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 0 },
					{ BodyGroup = "hubcaps_fr", Value = 1 },
					{ BodyGroup = "hubcaps_rl", Value = 2 },
					{ BodyGroup = "hubcaps_rr", Value = 1 },
				}
			},
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
						Position = Vector( -36, 28, 50 ),
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
					{ BodyGroup = "pillars", Value = 0 },
                    { BodyGroup = "cvbadge", Value = 0 },
                    { BodyGroup = "fordbadge", Value = 0 },
					{ BodyGroup = "trim_body", Value = 1 },
					{ BodyGroup = "trim_fdoor", Value = 1 },
					{ BodyGroup = "trim_rdoor", Value = 1 },
				},
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 59.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 1.5, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/tactld1.mdl",
						Position = Vector( 0, 12.2, 25 ),
						Angles = Angle( 0, 0, 20 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/photon_ex/controllers/fedsig_scsb.mdl",
						Position = Vector( 0, 5.6, 25 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/rob/oldpolicepack/motorola.mdl",
						Position = Vector( 0, 21, 31.2 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( 0, -100, 43.5),
						Angles = Angle( 0, 0, 5 ),
						Scale = 1,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 122, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -125.4, 31.8 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 0.95,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_sheriff_old",
						},
					},
				}
			}
		}
	},
}
