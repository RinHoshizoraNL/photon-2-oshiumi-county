if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2018 Ford F150 OCSO"
VEHICLE.Vehicle		= "smfordresponder"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 29, Material = "rin/oshiumi_sheriff/f150/patrol" }
				},
				BodyGroups = {
					{ BodyGroup = "bed", Value = 0 },
				},
				Props = {
				    {
						Model = "models/schmal/f150xl_bedcover_generic.mdl",
						Position = Vector( 0, -86.5, 66.3 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
				},
			},
			{
				Option = "Marine Unit",
				SubMaterials = {
					{ Id = 29, Material = "rin/oshiumi_sheriff/f150/marine" }
				},
				BodyGroups = {
					{ BodyGroup = "bed", Value = 2 },
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 29, Material = "rin/oshiumi_sheriff/f150/supervisor" }
				},
				BodyGroups = {
					{ BodyGroup = "bed", Value = 0 },
				},
				Props = {
				    {
						Model = "models/schmal/f150xl_bedcover_generic.mdl",
						Position = Vector( 0, -86.5, 66.3 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
				},
			},
			{
				Option = "Command",
				SubMaterials = {
					{ Id = 29, Material = "rin/oshiumi_sheriff/f150/command" }
				},
				BodyGroups = {
					{ BodyGroup = "bed", Value = 2 },
				},
			},
		}
	},
	{
		Category = "Trim Package",
		Options = {
			{
				Option = "Police Responder",
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "front bumper", Value = 1 },
					{ BodyGroup = "rear bumper", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "responder badge", Value = 1 },
					{ BodyGroup = "partition", Value = 0 },
					{ BodyGroup = "center console", Value = 0 },
					{ BodyGroup = "towbar", Value = 1 },
					{ BodyGroup = "pushbar", Value = 0 },
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
								Position = Vector( 0, 10, 95 ),
								Angles = Angle( 1.5, 90, 0 ),
								Scale = 1.02,
							},
						}
					},
				},
			},
		},
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Components = {
					{
						Component = "photon_sos_mpf4_ocso",
						Angles = Angle( 0, 90, 0 ),
						Position = Vector( -13, 136.5, 55.4 ),
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
						Position = Vector( 13, 136.5, 55.4 ),
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
						Component = "photon_sos_mpf3_ocso",
						Angles = Angle( 180, -0.5, 1 ),
						Position = Vector( -45.4, 92, 47.3 ),
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
						Angles = Angle( 0, 0.5, -1 ),
						Position = Vector( 45.4, 92, 47.3 ),
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
						Angles = Angle( 180, 1, 1 ),
						Position = Vector( -46.3, -78, 49.9 ),
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
						Angles = Angle( 0, -1, -1 ),
						Position = Vector( 46.3, -78, 49.9 ),
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
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlight",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -37, 57, 71 ),
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
		Category = "Siren",
		Options = {
			{
				Option = "Soundoff nErgy 400",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/100j.mdl",
						Position = Vector( 0, 124, 38.4 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				SubMaterials = {
					{ Id = 23, Material = "photon/common/blank" },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 8.5, 38, 60 ),
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
						Model = "models/anemolis/props/f150_brushguard/anemolis_f150_brushguard.mdl",
						Position = Vector( 0, 133, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -131.2, 34 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 134, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 134.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 10.5, 47, 80.8),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sosnergy.mdl",
						Position = Vector( 0, 27.9, 46.2 ),
						Angles = Angle( 33, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 32, 48.5 ),
						Angles = Angle( 212, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -4.2, -10, 91.8 ),
						Angles = Angle( -1, 0, -0.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 4.2, -10, 91.8 ),
						Angles = Angle( 1, 0, -0.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 0, -22, 92.25 ),
						Angles = Angle( 0, 0, -0.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/smf15018_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					}
				}
			}
		}
	},
}