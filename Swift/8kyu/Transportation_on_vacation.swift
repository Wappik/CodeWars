func RentalCarCost(_ days: Int) -> Int {

        let rentCostPerDay = 40
        var total = days * rentCostPerDay

        if days >= 7 {
            total -= 50
        } else if days >= 3 {
            total -= 20
        }

        return total
}