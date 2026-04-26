if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2015 Dodge Charger OCSO"
VEHICLE.Vehicle		= "15charger_fm2_sgm"
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
					{ Id = 4, Material = "rin/oshiumi_sheriff/charger15/patrol" }
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.9, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
				},
				Components = {
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 1, 8, 0 ),
						Position = Vector( -12, 115.6, 34.4 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( -1, -8, 0 ),
						Position = Vector( 12, 115.6, 34.4 ),
						Scale = 1,
					},
				}
			},
			{
				Option = "Highway Patrol",
				SubMaterials = {
					{ Id = 4, Material = "rin/oshiumi_sheriff/charger15/highway" }
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.9, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_arrive",
						},
					},
					{
						Model = "models/supermighty/photon/2015_charger_pushbar.mdl",
						Position = Vector( 0, 121.5, 27.8 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
					},
				},
				Components = {
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 0, 0, 0 ),
						Position = Vector( -12, 121.5, 40.32 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 0, 0, 0 ),
						Position = Vector( 12, 121.5, 40.32 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 90, 90, 0 ),
						Position = Vector( -20.3, 122.8, 29 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 90, 270, 0 ),
						Position = Vector( 20.3, 122.8, 29 ),
						Scale = 1,
					},
				}
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 4, Material = "rin/oshiumi_sheriff/charger15/supervisor" }
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.9, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
				},
				Components = {
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 1, 8, 0 ),
						Position = Vector( -12, 115.6, 34.4 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( -1, -8, 0 ),
						Position = Vector( 12, 115.6, 34.4 ),
						Scale = 1,
					},
				}
			},
			{
				Option = "Command",
				SubMaterials = {
					{ Id = 4, Material = "rin/oshiumi_sheriff/charger15/command" }
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.9, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit_white",
						},
					},
				},
				Components = {
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 1, 8, 0 ),
						Position = Vector( -12, 115.6, 34.4 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( -1, -8, 0 ),
						Position = Vector( 12, 115.6, 34.4 ),
						Scale = 1,
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
								Position = Vector( 0, -15, 76.5 ),
								Angles = Angle( 0, 90, 0 ),
								Scale = 1,
							},
						}
					},
				},
			},
		},
	},
	{
		Category = "Rear",
		Options = {
			{
				Option = "Rear",
				Props = {
					{
						Model = "models/sentry/props/soundofffascia_lbracket.mdl",
						Position = Vector( -18, -85, 57),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/soundofffascia_lbracket.mdl",
						Position = Vector( 18, -85, 57),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/soundofffascia_lbracket.mdl",
						Position = Vector( -12, -85, 57),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/soundofffascia_lbracket.mdl",
						Position = Vector( 12, -85, 57),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Components = {
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 0, 180, 0 ),
						Position = Vector( -18, -85.3, 57.1 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 0, 180, 0 ),
						Position = Vector( 18, -85.3, 57.1 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 0, 180, 0 ),
						Position = Vector( -12, -85.3, 57.1 ),
						Scale = 1,
						States = {
							[1] = "B",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_micropulse_ultra",
						Angles = Angle( 0, 180, 0 ),
						Position = Vector( 12, -85.3, 57.1 ),
						Scale = 1,
						States = {
							[1] = "B",
						},
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
				Option = "Federal Signal Pathfinder",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 98, 30 ),
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
						Position = Vector( 29, -105, 58),
						Angles = Angle( -1, 235, -8 ),
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
						Position = Vector( -29, -105, 58),
						Angles = Angle( -1, -55, 8 ),
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
				Option = "AWD Steelies",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 3 },
					{ BodyGroup = "wheels_rear", Value = 3 },
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
						Position = Vector( -34.5, 28, 58 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "badge", Value = 2 },
				},
				SubMaterials = {
					{ Id = 2, Material = "photon/common/blank" }
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 6.5, 12, 45 ),
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
						Position = Vector( 9, 18.9, 65),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 10.8, 32 ),
						Angles = Angle( 200, 270, 0 ),
						Scale = 0.33,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/vision.mdl",
						Position = Vector( 0, 2.1, 29 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, -2, 4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, 4.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 0, -30, 73.8 ),
						Angles = Angle( 0, 0, 3 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -5, -40, 73.1 ),
						Angles = Angle( -1, 0, 5.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 5, -40, 73.1 ),
						Angles = Angle( 1, 0, 5.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 0, -108, 55.8 ),
						Angles = Angle( 0, 0, 4.2 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -126.7, 30 ),
						Angles = Angle( -10, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 118.2, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/schmal/sgm_char15_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						BodyGroups = {
							["cage"] = 1
						}
					}
				}
			}
		}
	},
}