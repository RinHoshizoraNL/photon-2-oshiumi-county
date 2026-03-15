if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria OCSO"
VEHICLE.Vehicle		= "cvpi_hd_sgm"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

local libposy		= -20
local libposz		= 69.08
local libtir3fx		= 18.8
local libtir3fyof	= 6.8
local libtir3fzof	= 1.1
local libtir3fmofy 	= 1.196
local libtir3fmofz 	= 0.042

local libtir3sfx	= 27.27
local libtir3sfzof	= 1.2725

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
							},
							["Taillight_flashers"] = {
								Sequences = {
									STAGE3 = sequence():Alternate(6,7,6)
								}
							},
							["Taillight_flashers_mix"] = {
								Off = "PASS",
								Frames = {
									[1] = "[~RI] 15 16",
									[2] = "[~RI] 15",
									[3] = "[~RI] 16",
								},
								Sequences = {
									STAGE3 = sequence():TripleFlash(2,3)
								}
							},
							["Reverse_flashers_mix"] = {
								Off = "PASS",
								Frames = {
									[1] = "17 18",
									[2] = "17",
									[3] = "18"
								},
								Sequences = {
									STAGE3 = sequence():Alternate(3,2,6)
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { 
									Headlight_flashers = "STAGE3",
									Taillight_flashers = "STAGE3"
								}
							}
						}
					},
					-- VISION --
					{
						Component = "lr_photon_fedsig_vision_ocso",
						Position = Vector( 0, -17.8, 65.63 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.98, -- Accurate (mostly) scale, when placing on other cars just adjust the straps. (I'd recommend checking an IRL car with a Vision mounted to double check the scale is correct)
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/vision/glass_new",
							[2] = "rin/oshiumi_sheriff/props/vision/glass_outer_new"
						},
						BodyGroups = {
							-- Rear Signalmaster
							["rear_ta"] = 0,
							-- Straps/Mounts (If you remove the mounts, always remove the straps)
							["straps"] = 0,
							["mounts"] = 0,
							-- Pods/Decal (0 = Vision, 1 = Vision SL)
							["center_pod"] = 1,
							["inner_pod"] = 0,
							["middle_pod"] = 1,
							["outer_pod"] = 1,
							["decal"] = 1
						},
						Bones = {
							-- In most cases, you won't need to move the mounts, just the straps.
							["mount_l"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 1 },
							["mount_r"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 1 },
							["strap_l"] = { Vector( 0, 0.5, -0.1), Angle( 0, 0, 0 ), 1 },
							["strap_r"] = { Vector( 0, -0.5, -0.1), Angle( 0, 0, 0 ), 1 }
						}
					},
					-- GRILLE LIGHTS --
					{
						Name = "@grille_gh1",
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( -10, 108, 26 ),
						Angles = Angle( 0, 90+5, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[2] = "rin/oshiumi_sheriff/props/gh1/glass_color_red",
							[3] = "rin/oshiumi_sheriff/props/gh1/glass_outer"
						}
					},
					{
						Inherit = "@grille_gh1",
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( 10, 108, 26 ),
						Angles = Angle( 0, 90-5, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { Halogen = "STAGE3:180" }
							}
						}
					},
					{
						Inherit = "@grille_gh1",
						Name = "@rear_gh1",
						Position = Vector( -22, -74.5, 48 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE
					},
					{
						Inherit = "@rear_gh1",
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( 22, -74.5, 48 ),
						Phase = 180
					},
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
					}
				}
			},
			{
				Option = "2010 - 2011 (Whelen Liberty)", 
				Props = {
					{
						Name = "@liberty_feet",
						Model = "models/schmal/whelen_liberty_48.mdl",
						Position = Vector( 0, libposy, libposz ),
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

							["foot_l"] = { Vector( -5.8, 0, 0), Angle( 0, 0, 0 ), 1 },
							["foot_r"] = { Vector( 5.8, 0, 0), Angle( 0, 0, 0 ), 1 },
							["strap_l"] = { Vector( -5.3, 0, 0), Angle( 0, 0, 0 ), 1 },
							["strap_r"] = { Vector( 5.3, 0, 0), Angle( 0, 0, 0 ), 1 }
						}
					},
					{
						Model = "models/tdmcars/emergency/equipment/whelen_295slsa6.mdl",
						Position = Vector( 0, 4.5, 24 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1
					},
					{
						Name = "@pushbar_tir3_ff_mount",
						Model = "models/props_phx/construct/plastic/plastic_panel1x1.mdl",
						Position = Vector( -libtir3fx, libposy+libtir3fyof-libtir3fmofy, libposz-libtir3fzof+libtir3fmofz ),
						Angles = Angle( 0, 0, -90 ),
						Scale = Vector( 0.0923, 0.0395, 0.065 ),
						SubMaterials = { 
							[0] = "sentry/cvpi_hd/black",
							[1] = "sentry/cvpi_hd/black"
						}
					},
					{
						Inherit = "@pushbar_tir3_ff_mount",
						Position = Vector( libtir3fx, libposy+libtir3fyof-libtir3fmofy, libposz-libtir3fzof+libtir3fmofz )
					},
					{
						Inherit = "@pushbar_tir3_ff_mount",
						Position = Vector( -libtir3sfx+libtir3fmofy, libposy, libposz-libtir3sfzof ),
						Angles = Angle( 0, 90, -90 )
					},
					{
						Inherit = "@pushbar_tir3_ff_mount",
						Position = Vector( libtir3sfx-libtir3fmofy, libposy, libposz-libtir3sfzof ),
						Angles = Angle( 0, -90, -90 )
					}
				},
				Components = {
					-- STANDARD --
					{
						Inherit = "@standard",
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { 
									Headlight_flashers = "STAGE3",
									Taillight_flashers_mix = "STAGE3",
									Reverse_flashers_mix = "STAGE3"
								}
							}
						}
					},
					-- LIBERTY --
					{
						Component = "photon_whe_liberty_ocso",
						Position = Vector( 0, libposy, libposz-2.841 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.91
					},
					-- LIBERTY TIR3s --
					-- FRONT
					{
						Name = "@lightbar_tir3",
						Component = "anemolis_whelen_tir3",
						Position = Vector( -libtir3fx, libposy+libtir3fyof, libposz-libtir3fzof ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 0.78, -- Realistic scale btw
						States = { "R" },
						Segments = {
							whelen_tir3 = {
								Sequences = {
									["STAGE2"] = sequence():Alternate(1,0,8),
									["STAGE3"] = sequence():FlashHold(1,2,4):AppendPhaseGap()
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = { whelen_tir3 = "STAGE2:180" },
								["MODE3"] = { whelen_tir3 = "STAGE3" }
							}
						}
					},
					{
						Inherit = "@lightbar_tir3",
						Position = Vector( libtir3fx, libposy+libtir3fyof, libposz-libtir3fzof ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE2"] = { whelen_tir3 = "STAGE2" },
								["MODE3"] = { whelen_tir3 = "STAGE3:180" }
							}
						}
					},
					-- SIDES
					{
						Inherit = "@lightbar_tir3",
						Position = Vector( -libtir3sfx, libposy, libposz-libtir3sfzof ),
						Angles = Angle( 180, 90, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE2"] = {},
								["MODE3"] = { whelen_tir3 = "STAGE3:180" }
							}
						}
					},
					{
						Inherit = "@lightbar_tir3",
						Position = Vector( libtir3sfx, libposy, libposz-libtir3sfzof ),
						Angles = Angle( 180, -90, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE2"] = {},
								["MODE3"] = { whelen_tir3 = "STAGE3" }
							}
						}
					},
					-- GRILLE LIGHTS --
					{
						Name = "@grille_tir6",
						Component = "ocso_photon_whe_tir6",
						Position = Vector( 10.1, 107.3, 31.9 ),
						Angles = Angle( 180, -3, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = { All = "FLASHHOLD" }
							}
						}
					},
					{
						Inherit = "@grille_tir6",
						Position = Vector( -10.1, 107.3, 31.9 ),
						Angles = Angle( 180, 3, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { All = "FLASHHOLD" }
							}
						}
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
							["wire"] = 1,
							["mount"] = 0
						},
						States = { "R", "R" },
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = { All = "ALTERNATE" },
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE
					},
					{
						Inherit = "@siren_speaker",
						Siren = "whelen_295hfsa6"
					}
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
				Option = "Pillar Spotlight Single (Chrome)",
				Components = {
					{
						Name = "@spotlight",
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
			{
				Option = "Pillar Spotlight Single (Black)",
				Components = {
					{
						Inherit = "@spotlight",
						SubMaterials = {
							[5] = "sentry/props/spotlight/black_lamp"
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