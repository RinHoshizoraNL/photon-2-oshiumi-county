
if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2020 Ford Explorer OCSO"
VEHICLE.Vehicle		= "20fpiu_new_sgm"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"


VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/explorer20/patrol" }
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 120.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
				},
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 0, 98, 1 ),
						Position = Vector( -13, 114.5, 45 ),
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
						Angles = Angle( 0, 82, -1 ),
						Position = Vector( 13, 114.5, 45 ),
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
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 180, -3, 2 ),
						Position = Vector( -49, 76.5, 44.5 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
					{
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 0, 3, -2 ),
						Position = Vector( 49, 76.5, 44.5 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
				}
			},
			{
				Option = "Highway Patrol",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/explorer20/highway" }
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 120.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_arrive",
						},
					},
					{
						Model = "models/sentry/props/westin_36-2125.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				},
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 0, 90, 0 ),
						Position = Vector( -9, 117.3, 53.5 ),
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
						Angles = Angle( 0, 90, 0 ),
						Position = Vector( 9, 117.3, 53.5 ),
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
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 180, 0, 0 ),
						Position = Vector( -16.8, 122.5, 40 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
					{
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 0, 0, 0 ),
						Position = Vector( 16.8, 122.5, 40 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
				}
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/explorer20/supervisor" }
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 120.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
				},
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 0, 98, 1 ),
						Position = Vector( -13, 114.5, 45 ),
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
						Angles = Angle( 0, 82, -1 ),
						Position = Vector( 13, 114.5, 45 ),
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
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 180, -3, 2 ),
						Position = Vector( -49, 76.5, 44.5 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
					{
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 0, 3, -2 ),
						Position = Vector( 49, 76.5, 44.5 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
				}
			},
			{
				Option = "Command",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/explorer20/command" }
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 120.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit_white",
						},
					},
				},
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 0, 98, 1 ),
						Position = Vector( -13, 114.5, 45 ),
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
						Angles = Angle( 0, 82, -1 ),
						Position = Vector( 13, 114.5, 45 ),
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
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 180, -3, 2 ),
						Position = Vector( -49, 76.5, 44.5 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
					{
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 0, 3, -2 ),
						Position = Vector( 49, 76.5, 44.5 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
				}
			},
			{
				Option = "Recruitment",
				SubMaterials = {
					{ Id = 20, Material = "rin/oshiumi_sheriff/explorer20/recruitment" }
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 120.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
				},
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 0, 98, 1 ),
						Position = Vector( -13, 114.5, 45 ),
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
						Angles = Angle( 0, 82, -1 ),
						Position = Vector( 13, 114.5, 45 ),
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
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 180, -3, 2 ),
						Position = Vector( -49, 76.5, 44.5 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
					{
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 0, 3, -2 ),
						Position = Vector( 49, 76.5, 44.5 ),
						Scale = 1,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
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
						Position = Vector( 29, 8, 85.9),
						Angles = Angle( -10, 235, 0 ),
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
						Position = Vector( -29, 8, 85.9),
						Angles = Angle( -10, -55, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 0,
							["lens cover"] = 1,
						},
					},
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( 29, -92.5, 85.3),
						Angles = Angle( -8, 140, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 0,
							["lens cover"] = 1,
						},
					},
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( -29, -92.5, 85.3),
						Angles = Angle( -8, 40, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 2,
							["lens cover"] = 1,
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
						Position = Vector( 0, 115, 41 ),
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
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
				},
			},
		}
	},
		{
		Category = "Lightbar",
		Options = {
			{ Option = "Federal Signal Vision SLR", 
				Variants = {
					{
						Variant = "Default",
						Components = {
							{
								Component = "photon_fedsig_visionslr_ocso",
								Position = Vector( 0, -13, 89 ),
								Angles = Angle( 1.5, 90, 0 ),
								Scale = 1.08,
							},
						}
					},
				},
			},
		},
	},
	{
		Category = "Side",
		Options = {
			{
				Option = "Side",
				Components = {
					{
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 180, 1.5, 0 ),
						Position = Vector( -49.2, -73.5, 44.7 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
					{
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 0, -1.5, 0 ),
						Position = Vector( 49.2, -73.5, 44.7 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "OFF"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
				}
			},
		}
	},
	{
		Category = "Plate Lights",
		Options = {
			{
				Option = "Plate Lights",
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( -12, 270, 90 ),
						Position = Vector( -8.3, -126.5, 49 ),
						Scale = 1,
						States = {
							[1] = "B",
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "TRIPLE"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( -12, 270, 90 ),
						Position = Vector( 8.3, -126.5, 49 ),
						Scale = 1,
						Phase = 180,
						States = {
							[1] = "B",
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "OFF"},
								["MODE2"] = {Light = "TRIPLE"},
								["MODE3"] = {Light = "TRIPLE"},
							},
						},
					},
				},
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
						Component = "photon_whe_par46_left",
						Position = Vector( -39.4, 37, 63 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[7] = "sentry/shared/env_cubemap_model"
						}
					},
				},
			}
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "foglights", Value = 0 },
					{ BodyGroup = "console", Value = 0 },
					{ BodyGroup = "laptop", Value = 0 },
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "interceptorbadge", Value = 1 },
				},
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 9.5, 18.9, 76.2),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -3.1, -40, 85.6 ),
						Angles = Angle( 0, 0, 1 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 3.1, -40, 85.6 ),
						Angles = Angle( 0, 0, 1 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 0, -60, 85.3 ),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 0, -30, 86 ),
						Angles = Angle( 0, 0, 1 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -126.67, 49 ),
						Angles = Angle( -12, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 120, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/schmal/sgm_fpiu20_win.mdl",
						Position = Vector(),
						Angles = Angle(0, 0, 0),
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/explorer20/ocso_glass"
						}
					}
				}
			}
		}
	},
}
