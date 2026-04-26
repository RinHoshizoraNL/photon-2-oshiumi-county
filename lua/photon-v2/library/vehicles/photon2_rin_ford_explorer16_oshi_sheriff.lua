if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2016 Ford Explorer OCSO"
VEHICLE.Vehicle		= "sm16fpiu"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[5] = "photon/common/blank",
	[28] = "photon/common/blank",
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 15, Material = "rin/oshiumi_sheriff/explorer16/patrol" }
				},
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.06,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
					{
						Model = "models/schmal/sm_fpiu16_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						SubMaterials = {
							[1] = "schmal/liveries/sm_fpiu16/lvmpd_modulate",
							[2] = "rin/oshiumi_sheriff/explorer16/ocso_glass",
						}
					}
				},
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 0, 97, 0 ),
						Position = Vector( -12.5, 111.5, 44.3 ),
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
						Angles = Angle( 0, 83, 0 ),
						Position = Vector( 12.5, 111.5, 44.3 ),
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
						Angles = Angle( 180, -2, 2 ),
						Position = Vector( -48.2, 71, 43.8 ),
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
						Angles = Angle( 0, 2, -2 ),
						Position = Vector( 48.2, 71, 43.8 ),
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
					{ Id = 15, Material = "rin/oshiumi_sheriff/explorer16/highway" }
				},
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 1 },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.06,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_arrive",
						},
					},
					{
						Model = "models/schmal/sm_fpiu16_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						SubMaterials = {
							[1] = "schmal/liveries/sm_fpiu16/lvmpd_modulate",
							[2] = "rin/oshiumi_sheriff/explorer16/ocso_glass",
						}
					}
				},
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 0, 90, 0 ),
						Position = Vector( -12, 118.8, 49.6 ),
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
						Position = Vector( 12, 118.8, 49.6 ),
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
						Position = Vector( -21, 123.2, 35 ),
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
						Position = Vector( 21, 123.2, 35 ),
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
					{ Id = 15, Material = "rin/oshiumi_sheriff/explorer16/supervisor" }
				},
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.06,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
					{
						Model = "models/schmal/sm_fpiu16_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						SubMaterials = {
							[1] = "schmal/liveries/sm_fpiu16/lvmpd_modulate",
							[2] = "rin/oshiumi_sheriff/explorer16/ocso_glass",
						}
					}
				},
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 0, 97, 0 ),
						Position = Vector( -12.5, 111.5, 44.3 ),
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
						Angles = Angle( 0, 83, 0 ),
						Position = Vector( 12.5, 111.5, 44.3 ),
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
						Angles = Angle( 180, -2, 2 ),
						Position = Vector( -48.2, 71, 43.8 ),
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
						Angles = Angle( 0, 2, -2 ),
						Position = Vector( 48.2, 71, 43.8 ),
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
					{ Id = 15, Material = "rin/oshiumi_sheriff/explorer16/command" }
				},
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.06,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit_white",
						},
					},
					{
						Model = "models/schmal/sm_fpiu16_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						SubMaterials = {
							[1] = "schmal/liveries/sm_fpiu16/lvmpd_modulate",
							[2] = "rin/oshiumi_sheriff/explorer16/ocso_glass",
						}
					}
				},
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 0, 97, 0 ),
						Position = Vector( -12.5, 111.5, 44.3 ),
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
						Angles = Angle( 0, 83, 0 ),
						Position = Vector( 12.5, 111.5, 44.3 ),
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
						Angles = Angle( 180, -2, 2 ),
						Position = Vector( -48.2, 71, 43.8 ),
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
						Angles = Angle( 0, 2, -2 ),
						Position = Vector( 48.2, 71, 43.8 ),
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
		Category = "Lightbar",
		Options = {
			{ Option = "Federal Signal Vision SLR", 
				Variants = {
					{
						Variant = "Default",
						Components = {
							{
								Component = "photon_fedsig_visionslr_ocso",
								Position = Vector( 0, -10, 88 ),
								Angles = Angle( 1.5, 90, 0 ),
								Scale = 1.1,
							},
						}
					},
				},
			},
		},
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Federal Signal Pathfinder",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 112, 33 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "fedsig_pathfinder_ssp",
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
		Category = "Side",
		Options = {
			{
				Option = "Side",
				Components = {
					{
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 180, 1.5, 1 ),
						Position = Vector( -48, -69, 45.5 ),
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
						Angles = Angle( 0, -1.5, -1 ),
						Position = Vector( 48, -69, 45.5 ),
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
						Position = Vector( 28.4, 13.5, 84.9),
						Angles = Angle( -8, 235, 0 ),
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
						Position = Vector( -28.4, 13.5, 84.9),
						Angles = Angle( -8, -55, 0 ),
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
						Position = Vector( 25.7, -82, 86.65),
						Angles = Angle( -6, 140, 0 ),
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
						Position = Vector( -25.7, -82, 86.65),
						Angles = Angle( -6, 40, 0 ),
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
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 0 },
				},
			},
		}
	},
    {
		Category = "Spotlight",
		Options = {
			{
				Option = "PAR46 LED",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -39, 41, 62 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[7] = "sentry/shared/env_cubemap_model"
						}
					},
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
					{ BodyGroup = "bobblehead", Value = 6 },
				},
                Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 7.8, 21.5, 48 ),
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
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 8.5, 28.5, 72),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/vision.mdl",
						Position = Vector( 0, 11, 35 ),
						Angles = Angle( 33, 270, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 14.8, 36.7 ),
						Angles = Angle( 212, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -4.9, -40, 85.3 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 4.9, -40, 85.3 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 0, -60, 85 ),
						Angles = Angle( 0, 0, 1.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 0, -30, 84.7 ),
						Angles = Angle( 0, 0, -1 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -120.5, 50 ),
						Angles = Angle( -18, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff",
						},
					},
				}
			}
		}
	},
}