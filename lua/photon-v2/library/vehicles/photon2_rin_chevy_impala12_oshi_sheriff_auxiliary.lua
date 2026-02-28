if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2012 Chevrolet Impala OCSO Auxiliary"
VEHICLE.Vehicle		= "sm_chev_impalappv"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[0] = "sentry/13caprice/black",
	[2] = "sentry/13caprice/black",
	[3] = "sentry/shared/env_cubemap_model",
    [4] = "sentry/13caprice/black",
    [8] = "sentry/13caprice/int_chrome",
    [17] = "sentry/shared/glass",
    [20] = "sentry/13caprice/rim"
}

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Auxiliary",
				SubMaterials = {
					{ Id = 19, Material = "rin/oshiumi_sheriff/impala/auxiliary" }
				}
			},
        }
	},
	{
		Category = "License Plates",
		Options = {
			{
				Option = "2010-2020",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 124.7, 22.9 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.98,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_civ_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -122.2, 32.5 ),
						Angles = Angle( -9, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_civ_2",
						},
					},
				}
			},
			{
				Option = "2001-2010",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 124.7, 22.9 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.98,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_civ_1",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -122.2, 32.5 ),
						Angles = Angle( -9, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_civ_1",
						},
					},
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
						Component = "photon_c3_mx7000_ocso_aux",
						Position = Vector( 0, -13, 75.5 ),
						Angles = Angle( 0, 180, 1.5 ),
						Scale = 1.025,
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
						Position = Vector( 0, -85, 60.1 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Bones = {
							["suction_mounts"] = { Vector( 0, 0, 0 ), Angle( 0, 0, -45 ), 1 }
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
						Position = Vector( -35.5, 35, 58 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "Trunk Trim", Value = 0 },
					{ BodyGroup = "Front Door Trim", Value = 1 },
					{ BodyGroup = "Rear Door Trim", Value = 1 }
				},
				Props = {
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 8, 4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 20.85, 32 ),
						Angles = Angle( 200, 270, 0 ),
						Scale = 0.35,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 0, -35, 75.3 ),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1,
					},
                    {
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 124, 23 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1
					},
				}
			}
		}
	},
}