QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = false -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 250
            },
        },
	},
	['police'] = {
		label = 'Sheriff',
		defaultDuty = false,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Rookie',
                payment = 300
            },
			['1'] = {
                name = 'Deputy',
                payment = 500
            },
			['2'] = {
                name = 'Sergeant',
                payment = 1000
            },
			['3'] = {
                name = 'Lieutenant',
                payment = 1500
            },
			['4'] = {
                name = 'Sheriff',
				isboss = true,
                payment = 2000
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 300
            },
			['1'] = {
                name = 'Paramedic',
                payment = 500
            },
			['2'] = {
                name = 'Doctor',
                payment = 750
            },
			['3'] = {
                name = 'Surgeon',
                payment = 1000
            },
			['4'] = {
                name = 'Chief',
				isboss = true,
                payment = 1500
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 250
            },
			['1'] = {
                name = 'House Sales',
                payment = 300
            },
			['2'] = {
                name = 'Business Sales',
                payment = 500
            },
			['3'] = {
                name = 'Broker',
                payment = 700
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 900
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 250
            },
			['1'] = {
                name = 'Driver',
                payment = 300
            },
			['2'] = {
                name = 'Event Driver',
                payment = 400
            },
			['3'] = {
                name = 'Sales',
                payment = 500
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 800
            },
        },
	},
     ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 250
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 250
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 300
            },
			['2'] = {
                name = 'Business Sales',
                payment = 400
            },
			['3'] = {
                name = 'Finance',
                payment = 500
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 800
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 250
            },
			['1'] = {
                name = 'Novice',
                payment = 300
            },
			['2'] = {
                name = 'Experienced',
                payment = 400
            },
			['3'] = {
                name = 'Advanced',
                payment = 500
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 800
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 100
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 50
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 750
            },
        },
	},
	['trucker'] = {
		label = 'Delivery',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 250
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 250
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 250
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 250
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 250
            },
        },
	},
}