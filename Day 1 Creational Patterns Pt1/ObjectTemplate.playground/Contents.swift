import UIKit

var products = [
    ("Kayak", 275.0, 10),
    ("Lifejacket", 48.95, 14),
    ("Soccer Ball", 19.5, 32)]

func calculateTax(product:(String, Double, Int)) -> Double {
    return product.1 * 0.2;
}

func calculateStockValue(tuples:[(String, Double, Int)]) -> Double {
    return tuples.reduce(0, {
        (total, product) -> Double in
        return total + (product.1 * Double(product.2))
    });
}

print("Sales tax for Kayak: $\(calculateTax(product: products[0]))")
print("Total value of stock: $\(calculateStockValue(tuples: products))")
