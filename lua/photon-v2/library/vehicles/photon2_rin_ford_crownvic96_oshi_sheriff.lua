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
						Name = "@front_plate",
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 122.7, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						}
					}
				}
			},
			{
				Option = "Highway Patrol",
				SubMaterials = {
					{ Id = 6, Material = "rin/oshiumi_sheriff/crownvic96/highway" }
				},
				Props = {
					{
						Inherit = "@front_plate",
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff_old_dui",
						}
					},
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 120, 23.3),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
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
						Inherit = "@front_plate",
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						}
					}
				}
			},
			{
				Option = "Command",
				SubMaterials = {
					{ Id = 6, Material = "rin/oshiumi_sheriff/crownvic96/command" }
				},
				Props = {
					{
						Inherit = "@front_plate",
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit_white",
						}
					}
				}
			},
		}
	},
	{
		Category = "Lighting",
		Options = {
			{
				Option = "Default",
				Components = {
					{
						Component = "photon_standard_sgmcvpi96",
					},
				}
			}
		}
	},
    {
		Category = "Lightbar",
		Options = {
            {
				Option = "Whelen Advantedge",
				Components = {
					{
						Component = "photon_whe_advantedge_oshi",
						Position = Vector( 0, -17.5, 68.45 ),
						Angles = Angle( -0.5, -90, 0 ),
						Scale = 1.035,
						BodyGroups = { 
							["feet"] = 0,
							["straps"] = 0,
							["center"] = 1,
							["rear500ta"] = 0,
							["rear500_dr"] = 1,
							["rear500_pas"] = 1
						},
						Bones = {
							["foot_dr"] =	{ Vector( 0, 1, 0 ), Angle( 0, 0, 0 ), 1 },
							["foot_pas"] =	{ Vector( 0, -1, 0 ), Angle( 0, 0, 0 ), 1 },
							["strap_dr"] =	{ Vector( 0, 0.85, -0.25 ), Angle( 0, 0, 0 ), 1 },
							["strap_pas"] =	{ Vector( 0, -0.85, -0.25 ), Angle( 0, 0, 0 ), 1 },

							["500_rear_dr"] =	{ Vector( 0, -2.95, 0 ), Angle( 0, 0, 0 ), 1 },
							["500_rear_pas"] =	{ Vector( 0, 2.95, 0 ), Angle( 0, 0, 0 ), 1 },
						},
						Segments = {
							["TA500"] = {
								Sequences = {
									SIGLEFT96 = sequence():Alternate(22,0,12),
			                        SIGRIGHT96 = sequence():Alternate(23,0,12),
			                        HAZARD96 = sequence():Alternate(24,0,12),
								}
							},
						},
						Inputs = {
							["Vehicle.Signal"] = {
								["LEFT"] = { 
									TA500 = "SIGLEFT96",
								},
								["RIGHT"] = { 
									TA500 = "SIGRIGHT96",
								},
								["HAZARD"] = { 
									TA500 = "HAZARD96",
								},
							},
						},
					}
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
						Position = Vector( -9, 109.7, 30.4 ),
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
						Position = Vector( 9, 109.7, 30.4 ),
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
		Category = "Rear Deck Lights",
		Options = {
            {
				Option = "Rear Deck Lights",
				Components = {
					{
						Name = "@deck_par46",
						Component = "photon_par46_flasher_oshi",
						Position = Vector( -15, -77, 48 ),
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
						Position = Vector( 15, -77, 48 ),
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
						Position = Vector( -15, -77, 45 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 15, -77, 45  ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
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
		Category = "Siren",
		Options = {
			{
				Option = "Whelen Gamma",
				Components = {
					{
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 100, 29.3 ),
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
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "pillars", Value = 1 },
                    { BodyGroup = "cvbadge", Value = 0 },
                    { BodyGroup = "fordbadge", Value = 0 },
					{ BodyGroup = "trim_body", Value = 0 },
                    { BodyGroup = "trim_fdoor", Value = 0 },
                    { BodyGroup = "trim_rdoor", Value = 0 },
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
						Model = "models/tdmcars/emergency/equipment/whelen_295slsa6.mdl",
						Position = Vector( 0, 6.1, 23.7 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1.2,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/tactld1.mdl",
						Position = Vector( 0, 9.7, 23.9 ),
						Angles = Angle( 0, 0, 20 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/rob/oldpolicepack/motorola.mdl",
						Position = Vector( 0, 21, 31.2 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/oshiumi_sheriff/props/mdt/mdt",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 11.5, 26.9 ),
						Angles = Angle( 200, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 0, -35, 68.6 ),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -5, -45, 67.9 ),
						Angles = Angle( -2, 0, 4.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 5, -45, 67.9 ),
						Angles = Angle( 2, 0, 4.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -105, 46.3 ),
						Angles = Angle( 0, 0, 5.5 ),
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
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff_old",
						},
					},
				}
			}
		}
	},
}
