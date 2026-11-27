if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1998 Ford Crown Victoria OCSO Slicktop"
VEHICLE.Vehicle		= "cvpi_hd_98_sgm"
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
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic98/highway_slick" }
				},
			},
		}
	},
	{
		Category = "Model Year",
		Options = {
            {
				Option = "1998",
				BodyGroups = {
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "bumperf_chrome", Value = 1 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
					{ BodyGroup = "pillars", Value = 0 },
                },
			},
			{
				Option = "1999",
				BodyGroups = {
					{ BodyGroup = "grille", Value = 3 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "pillars", Value = 0 },
                },
			},
			{
				Option = "2001",
				BodyGroups = {
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "pillars", Value = 1 },
                },
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
		Category = "Visor Light",
		Options = {
            {
				Option = "Visor Light",
				Components = {
					{
						Component = "photon_fedsig_gs1_oshi",
						Position = Vector( -1.8, 13.9, 62.95 ),
						Angles = Angle( 0, 90, 180 ),
						Scale = 0.7,
						Phase = 270,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gs1_oshi",
						Position = Vector( 1.8, 13.9, 62.95 ),
						Angles = Angle( 0, 90, 180 ),
						Scale = 0.7,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_oshi",
						Position = Vector( -5.4, 13.8, 62.95 ),
						Angles = Angle( 0, 94, 180 ),
						States = { "SW" },
						Scale = 0.7,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
						SubMaterials = {
							[2] = "sentry/shared/glass"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE2"] = {}
							},
						}
					},
					{
						Component = "photon_fedsig_gh1_oshi",
						Position = Vector( 5.4, 13.8, 62.95 ),
						Angles = Angle( 0, 86, 180 ),
						States = { "SW" },
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
						SubMaterials = {
							[2] = "sentry/shared/glass"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE2"] = {}
							},
						}
					},
					{
						Component = "photon_fedsig_gs1_oshi",
						Position = Vector( -9, 13.5, 62.95 ),
						Angles = Angle( 0, 95, 180 ),
						Scale = 0.7,
						Phase = 90,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gs1_oshi",
						Position = Vector( 9, 13.5, 62.95 ),
						Angles = Angle( 0, 85, 180 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
		}
	},
	{
		Category = "Fastrax",
		Options = {
            {
				Option = "Whelen Fastrax",
				Components = {
					{
                        Component = "photon_whe_fastrax_oshi",
                        Position = Vector( 0, 0, 0 ),
                        Angles = Angle( 0, 0, 0 ),
                        Scale = 1,
						Color = Color(0, 0, 0),
					},
				}
			},
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "rearfascia", Value = 0 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "partition", Value = 0 },
					{ BodyGroup = "doortrim", Value = 1 },
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
						Position = Vector( 4.5, 19.5, 55.5),
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
						Position = Vector( -35, -105, 45 ),
						Angles = Angle( -2, 0, 4 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 35, -105, 45 ),
						Angles = Angle( 2, 0, 4 ),
						Scale = 1,
					},
					{
						Name = "@trunk_antenna",
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 20, 2.3, 0 ),
						Angles = Angle( 180, 0, -90 ),
						Scale = 1,
						FollowBone = "trunk"
					},
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 117, 21.1),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 49.2, -9.8, 0 ),
						Angles = Angle( 0, 12, -90 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_civ_1",
						},
						FollowBone = "trunk"
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_civ_1",
						}
					}
				}
			}
		}
	},
}