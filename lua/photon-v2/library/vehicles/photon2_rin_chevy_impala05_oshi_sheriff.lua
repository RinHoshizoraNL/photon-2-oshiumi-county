if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2005 Chevrolet Impala OCSO"
VEHICLE.Vehicle		= "ctv_impala_2000"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[7] = "sentry/13caprice/black",
	[11] = "sentry/shared/env_cubemap_model",
	[18] = "rin/oshiumi_sheriff/impala05/leather_seats",--leather_seats
	[19] = "rin/oshiumi_sheriff/impala05/seats_stuff",--seats_stuff
	[20] = "rin/oshiumi_sheriff/impala05/dashboard",
	[21] = "rin/oshiumi_sheriff/impala05/plastic_leather",--plastic_leather
	[24] = "rin/oshiumi_sheriff/impala05/interior",
	[27] = "sentry/shared/glass",
	[28] = "sentry/shared/glass",
}

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 16, Material = "rin/oshiumi_sheriff/impala05/patrol" }
				},
				Props = {
					{
						Name = "@front_plate",
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 128.5, 20 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.98,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
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
				Option = "Code3 MX7000",
				Components = {
					{
						Component = "photon_c3_mx7000_oshi",
						Position = Vector( 0, -4.5, 67.5 ),
						Angles = Angle( 0, 180, 1 ),
						Scale = 1.15,
					},
                }
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
						Name = "@deck_par46",
						Component = "photon_par46_flasher_oshi",
						Position = Vector( -13, -63, 52 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						Segments = {
							["Light"] = {
								Sequences = {
									STAGE05 = sequence():Alternate(0,1,8),
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { 
									Light = "STAGE05",
								}
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Inherit = "@deck_par46",
						Position = Vector( 13, -63, 52 ),
						Angles = Angle( 0, 180, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { 
									Light = "STAGE05",
								}
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -13, -63, 49 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 13, -63, 49 ),
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
				Option = "Pillar Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -36, 40.5, 52 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
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
				Option = "Code3 Z3",
				Components = {
					{
						Component = "siren_prototype",
						Model = "models/gandhi/props/c3100.mdl",
						Position = Vector( 0, 90, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "code3_z3",
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
					{ BodyGroup = "rim options", Value = 1 },
				},
			},
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
						Position = Vector( 5, 28.5, 35 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
                Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 9, 29.5, 60),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 15, 2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 0, -20, 68.6 ),
						Angles = Angle( 0, 0, 1.2 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -5, -30, 68.25 ),
						Angles = Angle( -1, 0, 5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 5, -30, 68.25 ),
						Angles = Angle( 1, 0, 5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -91, 51.1 ),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1,
					},
                    {
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -113.8, 26.8 ),
						Angles = Angle( -5.8, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff_old",
						},
					},
                    {
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 127.7, 20 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1
					},
				}
			}
		}
	},
}