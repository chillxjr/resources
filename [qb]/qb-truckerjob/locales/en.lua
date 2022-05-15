local Translations = {
    error = {
        no_deposit = "$%{value} Deposit Required",
        cancelled = "Cancelled",
        vehicle_not_correct = "This is not a commercial vehicle!",
        no_driver = "You must be the driver to do this..",
        no_work_done = "You haven't done any work yet..",
    },
    success = {
        paid_with_cash = "$%{value} Deposit Paid With Cash",
        paid_with_bank = "$%{value} Deposit Paid From Bank",
        refund_to_cash = "$%{value} Deposit Paid With Cash",
        you_earned = "You Earned $%{value}",
        payslip_time = "You are out of deliveries. Return to the depot.",
    },
    menu = {
        header = "Available Trucks",
        close_menu = "⬅ Close Menu",
    },
    mission = {
        store_reached = "Delivery reached, get the package in the trunk with [E] and deliver to marker",
        take_box = "Take A package",
        deliver_box = "Deliver package",
        another_box = "Get another package",
        goto_next_point = "You have delivered all packages, On to the next point",
    },
    info = {
        deliver_e = "~g~E~w~ - Deliver Package",
        deliver = "Deliver Package",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})