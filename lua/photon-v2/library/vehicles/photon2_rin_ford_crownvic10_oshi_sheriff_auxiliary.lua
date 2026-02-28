if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria OCSO Auxiliary"
VEHICLE.Vehicle		= "cvpi_hd_sgm"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Auxiliary",
				SubMaterials = {
					{ Id = 3, Material = "rin/oshiumi_sheriff/crownvic10/auxiliary" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 117, 21.4),
						Angles = Angle( 2, 271, 1 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
				}
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
						Position = Vector( 0, 33, 48.3 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						Bones = {
							["suction_mounts"] = { Vector( 0, 0, 0 ), Angle( 0, 0, -52 ), 1 }
						},
						BodyGroups = {
							["lighthead"] = 1,
							["wire"] = 0,
							["mount"] = 0
						},
						States = { "A", "A" },
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {All = "ALTERNATE"},
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
							["lighthead"] = 1,
							["wire"] = 0,
							["mount"] = 0
						},
						States = { "A", "A" },
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {All = "ALTERNATE"},
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
					{ BodyGroup = "hubcaps", Value = 2 },
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
					{ BodyGroup = "trunkemblem", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
				},
				Props = {
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
				}
			}
		}
	},
}