if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2013 Ford Explorer OCSO"
VEHICLE.Vehicle		= "13fpiu_sgm"
VEHICLE.Category 	= "Photon 2: Oshiumi County Sheriff"
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 8, Material = "rin/oshiumi_sheriff/explorer13/patrol" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 118, 27),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 1.1, 1.2),
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 121, 23.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.04,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
				}
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 8, Material = "rin/oshiumi_sheriff/explorer13/supervisor" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 118, 28),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 121, 23.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.04,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit",
						},
					},
				}
			},
			{
				Option = "Command",
				SubMaterials = {
					{ Id = 8, Material = "rin/oshiumi_sheriff/explorer13/command" }
				},
				Props = {
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 118, 28),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(255, 255, 255),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 121, 23.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.04,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_credit_white",
						},
					},
				}
			},
		}
	},
	{
		Category = "Grille",
		Options = {
            {
				Option = "Whelen TIR6",
				Components = {
					{
						Name = "@grille_tir6",
						Component = "ocso_photon_whe_tir6",
						Position = Vector( 10.5, 113, 35.3 ),
						Angles = Angle( 180, -3, 0 ),
						Scale = 1
					},
					{
						Inherit = "@grille_tir6",
						Position = Vector( -10.5, 113, 35.3 ),
						Angles = Angle( 180, 3, 0 ),
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
						Position = Vector( 28, 12, 81.6),
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
						Position = Vector( -28, 12, 81.6),
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
						Position = Vector( 25.7, -82, 82.6),
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
						Position = Vector( -25.7, -82, 82.6),
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
					{ BodyGroup = "hubcaps", Value = 0 },
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
						Position = Vector( -39, 38, 60 ),
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
					{ BodyGroup = "Badge_flex", Value = 1 },
					{ BodyGroup = "Grille", Value = 2 },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 7.8, 19.5, 45 ),
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
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.7, 45 ),
						Angles = Angle( -8, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plates/plate_sheriff",
						},
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 28.5, 69.6),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/tdmcars/emergency/equipment/whelen_295slsa6.mdl",
						Position = Vector( -0.2, 8.2, 28.2 ),
						Angles = Angle( 33, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( -0.2, 11.6, 31 ),
						Angles = Angle( 212, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 0, -35, 81.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -4.6, -45, 81.7 ),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 4.6, -45, 81.7 ),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -80, 80.5 ),
						Angles = Angle( -3, 90, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0),
					},
				}
			}
		}
	},
}