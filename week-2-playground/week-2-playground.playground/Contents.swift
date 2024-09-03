let team1:Int = 56;
let team2:Int = 23;
var totalTeam = team1 + team2;

totalTeam += 1;

let price = 19.99; // Infers as a Double, not a Float.
let price2:Float = 19.99; // Explicitly typed as Float.

let onSale = true; // Boolean is inferred.

let name = "Summer Tank Top";
let str = """
            This is a multi-line string.
            You can have as many lines...
            As you like!
            """;
// Placement of end """ in relation to string content
// determines indentation.

print(str);

if onSale {
    print("\(name) is on sale for \(price)");
} else {
    print("\(name) is at regular price \(price2)");
}


class TipCalculator {
    let total: Double;
    let taxPct: Double;
    let subtotal: Double;
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        self.subtotal = total / (taxPct + 1.0);
    }
    
    func calcTipWith(tipPct: Double) -> Double {
        // return subtotal * (tipPct + 1.0);
        return subtotal * tipPct;
    }
    
    func printPossibleTips() {
        print("15% - \(calcTipWith(tipPct: 0.15))");
        print("18% - \(calcTipWith(tipPct: 0.18))");
        print("20% - \(calcTipWith(tipPct: 0.20))");
    }
    
    func printTips() {
        let tips = [0.15, 0.18, 0.20]; // Inferred as array of Doubles.
        // let tipExp: [Double] = [0.15, 0.18, 0.20]; // Explicitly typed array as Doubles.
        // let tipExp2: Array<Double> = [0.15, 0.18, 0.20]; // Explicitly typed array as Doubles.
        
        for possibleTip in tips {
            print("\(possibleTip*100)% - \(calcTipWith(tipPct: possibleTip))");
        }
        
        for i in 0..<tips.count {
            print("\(tips[i]*100)% - \(calcTipWith(tipPct: tips[i]))");
        }
    }
    
    func returnTips() -> [Int:Double] {
        let tips = [0.15, 0.18, 0.20];
        
        var retVal = [Int:Double](); // Can also use Dictionary<Int, Double>().
        
        for possibleTip in tips {
            let intPct = Int(possibleTip*100.0);
            retVal[intPct] = calcTipWith(tipPct: possibleTip);
        }
        
        return retVal;
    }
} // TipCalculator

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06);
// tipCalc.printPossibleTips();
tipCalc.printTips();
tipCalc.returnTips();
