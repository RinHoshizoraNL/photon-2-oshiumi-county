if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline OCSO"
VEHICLE.Vehicle		= "econoline_sgm"
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
					{ Id = 21, Material = "rin/oshiumi_sheriff/econoline92/patrol" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				BodyGroups = {
					{ BodyGroup = "Partition", Value = 1 },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Tomar Heliobe",
				Components = {
					{
						Component = "photon_tomar_heliobe_ocso",
						Position = Vector( 0, 5, 89.7 ),
						Angles = Angle( 0.5, 90, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[2] = "rin/oshiumi_sheriff/props/heliobe"
						}
					},
                }
			},
		}
	},
	{
		Category = "Grille",
		Options = {
            {
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( -9.5, 100, 38.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
						Phase = 45,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = {Light = "HALOGEN"},
							},
						},
					},
					{
						Component = "photon_fedsig_gh1_ocso",
						Position = Vector( 9.5, 100, 38.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = {Light = "HALOGEN"},
							},
						},
					},
                }
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Federal Signal PA300",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 100, 23.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "pa300_2",
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
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -42, 47, 69 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
				}
			},
		}
	},
    {
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/supermighty/photon/sidestep.mdl",
						Position = Vector( 0, 75, -11 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector(1.75, 0.92, 1),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_sheriff_old",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 107, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/oshiumi_sheriff/props/plate_sheriff_old",
						},
					},
				}
			}
		}
	},
}