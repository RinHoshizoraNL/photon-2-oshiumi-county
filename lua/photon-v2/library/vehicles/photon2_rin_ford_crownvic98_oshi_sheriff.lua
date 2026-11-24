if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1998 Ford Crown Victoria OCSO"
VEHICLE.Vehicle		= "cvpi_hd_98_sgm"
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
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic98/patrol" }
				},
				Props = {
					{
						Name = "@front_plate",
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						}
					}
				}
			},
			{
				Option = "Highway Patrol",
				SubMaterials = {
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic98/highway" }
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
						Position = Vector( 0, 117, 21.1),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
				}
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic98/supervisor" }
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
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic98/command" }
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
						Component = "photon_standard_cvpi98_4bulb",
						Segments = {
							["Headlight_flashers"] = {
								Sequences = {
									STAGE3 = sequence():Alternate(1,2,6),
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { 
									Headlight_flashers = "STAGE3",
									Taillight_flashers = "FLASH3",
								}
							},
						}
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
						Position = Vector( 0, -19, 67.5 ),
						Angles = Angle( -1, -90, 0 ),
						Scale = 1,
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
							["strap_dr"] =	{ Vector( 0, 1.7, -0.1 ), Angle( 0, 0, 0 ), 1 },
							["strap_pas"] =	{ Vector( 0, -1.7, -0.1 ), Angle( 0, 0, 0 ), 1 },

							["500_rear_dr"] =	{ Vector( 0, -2.95, 0 ), Angle( 0, 0, 0 ), 1 },
							["500_rear_pas"] =	{ Vector( 0, 2.95, 0 ), Angle( 0, 0, 0 ), 1 },
						}
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
						Position = Vector( -8.5, 107, 27.5 ),
						Angles = Angle( 0, 0, 0 ),
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
						Position = Vector( 8.5, 107, 27.5 ),
						Angles = Angle( 0, 0, 0 ),
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
						Component = "photon_par46_flasher_oshi",
						Position = Vector( -16, -77, 49 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_flasher_oshi",
						Position = Vector( 16, -77, 49 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -16, -77, 46 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 16, -77, 46  ),
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
				Option = "Pillar Spotlight Single",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					}
                },
				BodyGroups = {
					{ BodyGroup = "door_l_notch", Value = 0 },
					{ BodyGroup = "door_r_notch", Value = 1 },
				}
			},
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
				},
			},
            {
				Option = "Steelies missing center caps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 2 },
				},
			},
		}
	},
	{
		Category = "Rain Guards",
		Options = {
			{
				Option = "Rain Guards",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 1 },
				},
			},
			{
				Option = "None",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 0 },
				},
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "rearfascia", Value = 0 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "rearfascia", Value = 0 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 1 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
					{ BodyGroup = "partition", Value = 0 },
					{ BodyGroup = "doortrim", Value = 1 },
					{ BodyGroup = "pillars", Value = 0 },
                    { BodyGroup = "4bulb_tails", Value = 1 },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 6.5, 13.5, 40 ),
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
						Position = Vector( 7.5, 13.8, 58.55),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/tdmcars/emergency/equipment/whelen_295slsa6.mdl",
						Position = Vector( 0, 4.6, 23.7 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1.2,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/tactld1.mdl",
						Position = Vector( 0, 8.2, 23.9 ),
						Angles = Angle( 0, 0, 20 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 12.9, 28 ),
						Angles = Angle( 200, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 0, -35, 67.8 ),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -5, -45, 67.3 ),
						Angles = Angle( -2, 0, 4 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 5, -45, 67.3 ),
						Angles = Angle( 2, 0, 4 ),
						Scale = 1,
					},
					{
						Name = "@trunk_antenna",
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 29.625, 2, 0 ),
						Angles = Angle( 180, -4.9, -90 ),
						Scale = 1,
						FollowBone = "trunk"
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 49.2, -9.8, 0 ),
						Angles = Angle( 0, 12, -90 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff_old",
						},
						FollowBone = "trunk"
					}
				}
			}
		}
	},
}