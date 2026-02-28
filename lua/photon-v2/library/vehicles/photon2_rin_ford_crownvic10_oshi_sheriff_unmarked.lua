if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria OCSO Unmarked"
VEHICLE.Vehicle		= "cvpi_hd_sgm"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Paint",
		Options = {
            {
				Option = "Norsea Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(30,56,82)
				}
			},
			{
				Option = "Deep Wedgewood Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(1,12,32)
				}
			},
			{
				Option = "Light Ice Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(127, 150, 156)
				}
			},
			{
				Option = "Aspen Green Metallic",
				Properties = {
					Skin = 0,
					Color = Color(12, 32, 26)
				}
			},
			{
				Option = "Dark Toreador Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(58, 0, 0)
				}
			},
            {
				Option = "Dark Cherry Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(27, 0, 0)
				}
			},
			{
				Option = "Medium Titanium Metallic",
				Properties = {
					Skin = 0,
					Color = Color(30, 30, 30)
				}
			},
			{
				Option = "Silver Birch Metallic",
				Properties = {
					Skin = 0,
					Color = Color(153, 153, 153)
				}
			},
			{
				Option = "Smokestone Metallic",
				Properties = {
					Skin = 0,
					Color = Color(156, 153, 145)
				}
			},
			{
				Option = "Black",
				Properties = {
					Skin = 0,
					Color = Color(0, 0, 0)
				}
			},
			{
				Option = "Performance White",
				Properties = {
					Skin = 0,
					Color = Color(255, 255, 255)
				}
			},
        }
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "KGT-1",
				Props = {
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
				Option = "None",
			},
		}
	},
	{
		Category = "License Plates",
		Options = {
			{
				Option = "2001-2010",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_civ_1",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 49.2, -9.8, 0 ),
						Angles = Angle( 0, 12, -90 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_civ_1",
						},
						FollowBone = "trunk"
					},
				}
			},
			{
				Option = "2010-2020",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_civ_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 49.2, -9.8, 0 ),
						Angles = Angle( 0, 12, -90 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_civ_2",
						},
						FollowBone = "trunk"
					},
				}
			},
		}
	},
	{
		Category = "Front Window",
		Options = {
            {
				Option = "Whelen Slimlighter",
				Components = {
					{
						Component = "lr_photon_whe_sl_ocso",
						Position = Vector( 0, 13, 60.1 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						Bones = {
							["suction_mounts"] = { Vector( 0, 0, 0 ), Angle( 0, 0, -45 ), 1 }
						},
						BodyGroups = {
							["lighthead"] = 0,
							["wire"] = 0,
							["mount"] = 0
						},
						States = { "R", "R" },
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {All = "CRUISE"},
								["MODE2"] = {All = "CRUISE"},
								["MODE3"] = {All = "RESPONSE"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE
					},
                }
			},
		}
	},
	{
		Category = "Grille",
		Options = {
            {
				Option = "Whelen TIR6",
				Components = {
					{
						Name = "@grille_tir6",
						Component = "ocso_photon_whe_tir6",
						Position = Vector( 10.1, 107.3, 31.9 ),
						Angles = Angle( 180, -3, 0 ),
						Scale = 1
					},
					{
						Inherit = "@grille_tir6",
						Position = Vector( -10.1, 107.3, 31.9 ),
						Angles = Angle( 180, 3, 0 ),
					},
                }
			},
		}
	},
	{
		Category = "Rear Deck",
		Options = {
            {
				Option = "Whelen Slimlighters",
				Components = {
					{
						Component = "lr_photon_whe_sl_ocso",
						Position = Vector( 0, -78.1, 52.4 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Bones = {
							["suction_mounts"] = { Vector( 0, 0, 0 ), Angle( 0, 0, -55 ), 1 }
						},
						BodyGroups = {
							["lighthead"] = 0,
							["wire"] = 0,
							["mount"] = 0
						},
						States = { "R", "B" },
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {All = "CRUISE"},
								["MODE2"] = {All = "ALTERNATE"},
								["MODE3"] = {All = "RESPONSE"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE
					},
				}
			},
		}
	},
	{
		Category = "Side",
		Options = {
            {
				Option = "Whelen TIR6",
				Components = {
					{
						Name = "@side_tir6",
						Component = "ocso_photon_whe_tir6",
						Position = Vector( 38.5, -23.1, 45.8 ),
						Angles = Angle( -2, 270, 0 ),
						Scale = 0.9,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {All = "OFF"},
								["MODE2"] = {All = "OFF"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Inherit = "@side_tir6",
						Position = Vector( -38.5, -23.1, 45.8 ),
						Angles = Angle( 2, 90, 0 ),
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
		Category = "Spotlight",
		Options = {
			{
				Option = "Pillar Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
                },
				BodyGroups = {
					{ BodyGroup = "door_l_notch", Value = 0 },
					{ BodyGroup = "door_r_notch", Value = 1 },
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
					{ BodyGroup = "hubcaps", Value = 0 },
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "rearfascia", Value = 0 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "doortrim", Value = 2 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 0 },
					{ BodyGroup = "trunkemblem", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
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
						Position = Vector( 12.5, 13.8, 58),
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
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 0, -115, 47.2 ),
						Angles = Angle( 0, 0, 5 ),
						Scale = 1,
					},
					{
						Name = "@trunk_antenna",
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 29.625, 2.468, 0 ),
						Angles = Angle( 180, -4.9, -90 ),
						Scale = 1,
						Color = Color(0, 0, 0),
						FollowBone = "trunk"
					},
				}
			}
		}
	},
}