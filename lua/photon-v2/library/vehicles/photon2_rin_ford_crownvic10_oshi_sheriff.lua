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
						Name = "@pushbar_nypd",
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 117, 21.1),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
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
						Inherit = "@pushbar_nypd"
					},
					{
						Inherit = "@front_plate",
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_chase",
						}
					}
				}
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic10/supervisor" }
				},
				Props = {
					{
						Inherit = "@pushbar_nypd"
					},
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
						Inherit = "@pushbar_nypd",
						Color = Color(255, 255, 255)
					},
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
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
				}
			},
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 0 },
				}
			}
		}
	},
	{
		Category = "Lighting Setup",
		Options = {
            {
				Option = "2006 - 2009 (Federal Signal Vision)",
				Props = {
					{
						Model = "models/gandhi/props/vision.mdl",
						Position = Vector( 0, 4.1, 25 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/vision.mdl",
						Position = Vector( 0, -17.8, 66 ),
						Angles = Angle( 0, 180, 0.5 ),
						Scale = 0.99,
						SubMaterials = {
							[2] = "rin/oshiumi_sheriff/props/vision/glass_new",
							[3] = "rin/oshiumi_sheriff/props/vision/glass_outer"
						}
					}
				},
				Components = {
					-- STANDARD --
					{
						Inherit = "@standard",
						Segments = {
							["Headlight_flashers"] = {
								Sequences = {
									STAGE3 = sequence():Alternate(1,2,9)
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { Headlight_flashers = "STAGE3" }
							}
						}
					},
					-- VISION --
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( -10, 108, 26 ),
						Angles = Angle( 0, 95, 0 ),
						Scale = 0.9,
					},
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( 10, 108, 26 ),
						Angles = Angle( 0, 85, 0 ),
						Scale = 0.9,
						Phase = 45,
					},
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( -22, -74.5, 48 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( 22, -74.5, 48 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
			{
				Option = "2010 - 2011 (Whelen Liberty)", 
				Props = {
					{
						Model = "models/supermighty/photon/whelen_liberty_ocso.mdl",
						Position = Vector( 0, -20, 68.64-2.841 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.91,
						BodyGroups = {
							["feet"] = 1
						},
						SubMaterials = { 
							[4] = "rin/oshiumi_sheriff/props/liberty/glass"
						}
					},
					{
						Name = "@liberty_feet",
						Model = "models/schmal/whelen_liberty_48.mdl",
						Position = Vector( 0, -20, 68.64 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.91,
						Bones = {
							-- INVISIBLE, DISAPPEAR, FUCK OFF!!!! --
							["liberty"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 0 },
							["lens"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 0 },
							["fi_linear"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 0 },
							["fm_linear"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 0 },
							["fo_linear"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 0 },
							["ri_linear"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 0 },
							["rm_linear"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 0 },
							["ro_linear"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 0 },

							["foot_l"] = { Vector( -3.25, 0, 0), Angle( 0, 0, 0 ), 1 },
							["foot_r"] = { Vector( 3.25, 0, 0), Angle( 0, 0, 0 ), 1 },
							["strap_l"] = { Vector( -5.5, 0, 0.9), Angle( 0, 0, 0 ), 1 },
							["strap_r"] = { Vector( 5.5, 0, 0.9), Angle( 0, 0, 0 ), 1 }
						}
					},
					{
						Model = "models/tdmcars/emergency/equipment/whelen_295slsa6.mdl",
						Position = Vector( 0, 4.5, 24 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1
					}
				},
				Components = {
					-- STANDARD --
					{
						Name = "@standard",
						Component = "photon_standard_cvpi10",
						Segments = {
							["Headlight_flashers"] = {
								Sequences = {
									STAGE3 = sequence():Alternate(1,2,9)
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { Headlight_flashers = "STAGE3" }
							}
						}
					},
					-- GRILLE LIGHTS --
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
					-- REAR SLIMLIGHTER --
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
						States = { "R", "R" },
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {All = "OFF"},
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
		Category = "ALPR",
		Options = {
			{
				Option = "None",
			},
			{
				Option = "ALPR",
			    Props = {
					{
						Name = "@trunk_alpr",
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( 24.6, 3.67, 32.5),
						Angles = Angle( 32, 1.5, -90+7.5 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 0,
							["lens cover"] = 1
						},
						FollowBone = "trunk"
					},
					{
						Inherit = "@trunk_alpr",
						Position = Vector( 24.6, 3.67, -32.5),
						Angles = Angle( -32, 1.5, -90-7.5 ),
						BodyGroups = {
							["wire"] = 2,
							["lens cover"] = 1
						}
					}
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
					}
                },
				BodyGroups = {
					{ BodyGroup = "door_l_notch", Value = 0 },
					{ BodyGroup = "door_r_notch", Value = 1 },
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
				InteractionSounds = {
					{ Class = "Controller", Profile = "click" }
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
						Name = "@motorola_6500",
						Model = "models/paolo/props/motorola_6500.mdl",
						Position = Vector( 0, 14, 25 ),
						Angles = Angle( 21.25, -90, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE
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