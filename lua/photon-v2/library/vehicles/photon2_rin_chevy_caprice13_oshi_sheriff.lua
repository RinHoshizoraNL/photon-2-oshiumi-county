if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2013 Chevrolet Caprice OCSO"
VEHICLE.Vehicle		= "13caprice_sgm"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
	[15] = "photon/common/blank"
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 13, Material = "rin/oshiumi_sheriff/caprice13/patrol" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 107, 22.3),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 109.9, 18.9 ),
						Angles = Angle( -0.7, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_credit",
						},
					},
				}
			},
			{
				Option = "Highway Patrol",
				SubMaterials = {
					{ Id = 13, Material = "rin/oshiumi_sheriff/caprice13/highway" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 107, 22.3),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 109.9, 18.9 ),
						Angles = Angle( -0.7, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_chase",
						},
					},
				}
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 13, Material = "rin/oshiumi_sheriff/caprice13/supervisor" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 107, 22.3),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 109.9, 18.9 ),
						Angles = Angle( -0.7, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_credit",
						},
					},
				}
			},
			{
				Option = "Command",
				SubMaterials = {
					{ Id = 13, Material = "rin/oshiumi_sheriff/caprice13/command" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 107, 22.3),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(255, 255, 255),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 109.9, 18.9 ),
						Angles = Angle( -0.7, 90, 0 ),
						Scale = 1,
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
			{ Option = "SoundOff Signal nForce", 
				Variants = {
					{
						Variant = "Default",
						Components = {
							{
								Name = "@nforce48",
								Component = "photon_sos_nforce_48_ocso",
								Position = Vector( 0, -19, 70.6 ),
								Angles = Angle( 0, 0, -2 ),
								Scale = 0.9,
								Bones = {
									["foot_l"] = { Vector( -1, 0, 0 ), Angle(), 1 },
									["foot_r"] = { Vector( 1, 0, 0 ), Angle(), 1 }
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
						Angles = Angle( 0, 98, 0 ),
						Position = Vector( -12, 99.5, 33.5 ),
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
						Angles = Angle( 0, 82, 0 ),
						Position = Vector( 12, 99.5, 33.5 ),
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
		Category = "Side",
		Options = {
			{
				Option = "Side",
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 200, -2, 4 ),
						Position = Vector( -40.5, 46, 37.8 ),
						Scale = 1,
						Phase = 180,
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
						Angles = Angle( -20, 2, -4 ),
						Position = Vector( 40.5, 46, 37.8 ),
						Scale = 1,
						Phase = 180,
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
		Category = "ALPR",
		Options = {
			{
				Option = "None",
			},
			{
				Option = "ALPR",
			    Props = {
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( 25.7, -100, 54.6),
						Angles = Angle( 0, 235, -4.5 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 2,
							["lens cover"] = 1,
						},
					},
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( -25.7, -100, 54.6),
						Angles = Angle( 0, -55, 4.5 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 0,
							["lens cover"] = 1,
						},
					},
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
					{ BodyGroup = "hubcaps", Value = 0 },
				},
			},
		}
	},
	{
		Category = "Spotlight",
		Options = {
			{
				Option = "Pillar Spotlight",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -32, 27, 53 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[7] = "sentry/shared/env_cubemap_model"
						}
					},
				},
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
						Position = Vector( 0, 99, 29.3 ),
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
						Position = Vector( 8, 13, 45 ),
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
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 1.5, -2, 4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 1, 1, 1 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 8, 13.8, 58.6),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/tactld1.mdl",
						Position = Vector( 1.5, 8.6, 29 ),
						Angles = Angle( 0, 0, 20 ),
						Scale = 1,
					},
					{
						Model = "models/photon_ex/controllers/fedsig_scsb.mdl",
						Position = Vector( 1.5, 2.2, 29 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 0, -35, 68.7 ),
						Angles = Angle( 0, 0, 4.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -5, -45, 67.8 ),
						Angles = Angle( -1, 0, 4 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 5, -45, 67.8 ),
						Angles = Angle( 1, 0, 4 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -103, 52.5),
						Angles = Angle( -2, 90, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
                    {
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -120.5, 26 ),
						Angles = Angle( -2, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_sheriff",
						},
					},
				}
			}
		}
	},
	{
		Category = "Windows",
		Options = {
			{
				Option = "Window",
				Props = {
					{
						Model = "models/schmal/chevcap13_windows.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "schmal/chevcap13/police_modulate"
						}
					}
				}
			},
		}
	},
}