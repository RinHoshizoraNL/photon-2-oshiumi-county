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
					{ Id = 16, Material = "rin/oshiumi_sheriff/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/oshiumi_sheriff/caprice95/dash_blue" }
				},
				Props = {
					{
						Name = "@front_plate",
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
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
					{ Id = 20, Material = "rin/oshiumi_sheriff/caprice91/highway" },
					{ Id = 16, Material = "rin/oshiumi_sheriff/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/oshiumi_sheriff/caprice95/dash_blue" }
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
						Position = Vector( 0, 112.2, 15.1),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 1.15, 1.2),
						Color = Color(0, 0, 0),
					},
				}
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/caprice91/supervisor" },
					{ Id = 16, Material = "rin/oshiumi_sheriff/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/oshiumi_sheriff/caprice95/dash_blue" }
				},
				Props = {
					{
						Inherit = "@front_plate",
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						}
					},
				}
			},
			{
				Option = "Command",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/caprice91/command" },
					{ Id = 16, Material = "rin/oshiumi_sheriff/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/oshiumi_sheriff/caprice95/dash_blue" }
				},
				Props = {
					{
						Inherit = "@front_plate",
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit_white",
						}
					},
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
						Component = "photon_standard_chevcap91_oshi",
					}
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
						Position = Vector( 0, -15, 60.6 ),
						Angles = Angle( -1.7, -90, 0 ),
						Scale = 1.02,
						BodyGroups = { 
							["feet"] = 0,
							["straps"] = 0,
							["center"] = 1,
							["rear500ta"] = 0,
							["rear500_dr"] = 1,
							["rear500_pas"] = 1
						},
						Bones = {
							["foot_dr"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["foot_pas"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["strap_dr"] =	{ Vector( 0, -0.1, -0.1 ), Angle( 0, 0, 9 ), 1 },
							["strap_pas"] =	{ Vector( 0, 0.1, -0.1 ), Angle( 0, 0, -9 ), 1 },

							["500_rear_dr"] =	{ Vector( 0, -2.95, 0 ), Angle( 0, 0, 0 ), 1 },
							["500_rear_pas"] =	{ Vector( 0, 2.95, 0 ), Angle( 0, 0, 0 ), 1 },
						},
						Segments = {
							["TA500"] = {
								Sequences = {
									SIGLEFT95 = sequence():Alternate(22,0,10),
			                        SIGRIGHT95 = sequence():Alternate(23,0,10),
			                        HAZARD95 = sequence():Alternate(24,0,10),
								}
							},
						},
						Inputs = {
							["Vehicle.Signal"] = {
								["LEFT"] = { 
									TA500 = "SIGLEFT95",
								},
								["RIGHT"] = { 
									TA500 = "SIGRIGHT95",
								},
								["HAZARD"] = { 
									TA500 = "HAZARD95",
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
						Position = Vector( -9, 105, 21.5 ),
						Angles = Angle( 0, 5, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
						Inputs = {
							["Vehicle.Brake"] = {
								["BRAKE"] = {},
							}
						}
					},
					{
						Component = "photon_par46_flasher_oshi",
						Position = Vector( 9, 105, 21.5 ),
						Angles = Angle( 0, -5, 0 ),
						Scale = 0.7,
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
						Position = Vector( -15, -77, 42 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						Segments = {
							["Light"] = {
								Sequences = {
									STAGE95 = sequence():Alternate(0,1,10),
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { 
									Light = "STAGE95",
								}
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Inherit = "@deck_par46",
						Position = Vector( 15, -77, 42 ),
						Angles = Angle( 0, 180, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { 
									Light = "STAGE95",
								}
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -15, -77, 39 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 15, -77, 39 ),
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
		Category = "Siren",
		Options = {
			{
				Option = "Whelen Gamma",
				Components = {
					{
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 90, 23 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 51),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/tdmcars/emergency/equipment/whelen_295slsa6.mdl",
						Position = Vector( 0, 27.5, 33.5 ),
						Angles = Angle( 80, 270, 0 ),
						Scale = 1.2,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/tactld1.mdl",
						Position = Vector( 0, 30, 41.2 ),
						Angles = Angle( 1, 0, 88 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 27, 23.25 ),
						Angles = Angle( 265, 270, 0 ),
						Scale = 0.4,
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
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 0, -35, 60.1 ),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -108, 40.4 ),
						Angles = Angle( 0, 0, 5.5 ),
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
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff_old",
						},
					},
				}
			}
		}
	},
}
