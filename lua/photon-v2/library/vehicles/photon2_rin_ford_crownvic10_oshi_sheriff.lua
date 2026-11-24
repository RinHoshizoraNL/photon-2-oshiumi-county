if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria OCSO"
VEHICLE.Vehicle		= "cvpi_hd_sgm"
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
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic10/patrol" }
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
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic10/highway" }
				},
				Props = {
					{
						Inherit = "@front_plate",
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_chase",
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
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic10/supervisor" }
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
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic10/command" }
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
		Category = "Flashers",
		Options = {
			{
				Option = "Flashers",
				Components = {
					{
						Component = "photon_standard_cvpi10",
						Segments = {
							["Headlight_flashers"] = {
								Frames = {
									[4] = "[PASS] 1 21 19 9 11 30 2 22 20 10 12 31"
								},
								Sequences = {
									STAGE3 = sequence():Alternate(1,2,6),
									CUT = { 4 }
								}
							},
							["Rear_flashers_SCPD"] = {
								Off = "OFF",
								Frames = {
									[1] = "15:~RI 16:~RI",
									[2] = "[W] 17 18",
									[3] = "[PASS] 15 16 17 18"
								},
								Sequences = {
									STAGE3 = sequence():QuadFlash( 1, 2 ):SetTiming( 1/20 ),
									CUT = { 3 }
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { 
									Headlight_flashers = "STAGE3",
									Rear_flashers_SCPD = "STAGE3"
								}
							},
							["Emergency.Cut"] = {
								["FRONT"] = { Headlight_flashers = "CUT" },
								["REAR"] = { Rear_flashers_SCPD = "CUT" }
							}
						}
					}
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Vision SL",
				Components = {
					{
						Component = "lr_photon_fedsig_vision_oshi",
						Position = Vector( 0, -17, 65.5 ),
						Angles = Angle( 0, 180, 0.5 ),
						Scale = 1.05,
						BodyGroups = {
							["center_pod"] = 1,
							["inner_pod"] = 1,
							["middle_pod"] = 1,
							["outer_pod"] = 1,
							["decal"] = 1,
						},
						Bones = {
							["mount_l"] =	{ Vector( 0, -1, 0 ), Angle( 0, 0, 0 ), 1 },
							["mount_r"] =	{ Vector( 0, 1, 0 ), Angle( 0, 0, 0 ), 1 },
							["strap_l"] =	{ Vector( -0.5, -1.3, 0 ), Angle( 0, 0, 0 ), 1 },
							["strap_r"] =	{ Vector( -0.5, 1.3, 0 ), Angle( 0, 0, 0 ), 1 },
						}
					},
				}
			}
		}
	},
	{
		Category = "Grille Lights",
		Options = {
			{
				Option = "Whelen Ion",
				Components = {
					{
						Name = "@grille_ion",
						Component = "photon_whe_ion_surface_bracket",
						Position = Vector( 10, 107, 32  ),
						Angles = Angle( 182, -8, 0 ),
						Scale = 0.9,
						States = { "R" },
						Segments = {
							LightOshi = {
								Frames = {
									[1] = "Light"
								},
								Sequences = {
									["STAGE3"] = sequence():QuadFlash( 0, 1 ):SetTiming( 1/20 ),
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {
									LightOshi = "STAGE3"
								},
								["MODE3"] = {
									LightOshi = "STAGE3"
								}
							},
						}
					},
					{
						Inherit = "@grille_ion",
						Position = Vector( -10, 107, 32  ),
						Angles = Angle( 178, 8, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {
									LightOshi = "STAGE3"
								},
								["MODE3"] = {
									LightOshi = "STAGE3"
								}
							},
						}
					},
				}
			},
		}
	},
	{
		Category = "Rear Deck Lights",
		Options = {
			{
				Option = "Federal Signal Cudas",
				Components = {
					{
						Component = "photon_fedsig_cuda_oshi",
						Position = Vector( -22, -75, 49.75  ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_cuda_oshi",
						Position = Vector( 22, -75, 49.75  ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
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
					{ BodyGroup = "hubcaps", Value = 1 },
				}
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "rearfascia", Value = 0 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "doortrim", Value = 5 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 0 },
					{ BodyGroup = "trunkemblem", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
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
						Position = Vector( 7.5, 13.8, 58.55),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/vision.mdl",
						Position = Vector( 0, 4.1, 25 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 0.8,
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
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 29.625, 2.468, 0 ),
						Angles = Angle( 180, -4.9, -90 ),
						Scale = 1,
						Color = Color(0, 0, 0),
						FollowBone = "trunk"
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 49.2, -9.8, 0 ),
						Angles = Angle( 0, 12, -90 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff",
						},
						FollowBone = "trunk"
					}
				}
			}
		}
	}
}