//
//  RecipeModel.swift
//  foody
//
//  Created by pavan naik on 12/01/23.
//

import Foundation

enum Category : String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case drink = "Drink"
    case snak = "Snak"
    case main = "Main"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Herbed Paneer Bowl", image: "https://media.istockphoto.com/id/175197961/photo/salad-plate.jpg?s=612x612&w=0&k=20&c=9lxiIPsTBH7ytCXWuC__FvWyxkPxtkJ2evoNLrwhOVA=", description: "Lightly spiced, soft pieces of paneer, marinated in a garlic and herb blend. As they begin to take interest in salads, you can experiment by adding other ingredients to determine what they like. In the beginning, don't be too concerned with the nutritional value of the salads", ingredients: "A typical salad starts with raw greens, such as lettuce, spinach, kale, mixed greens or arugula. However, you can also add several other raw vegetables. Some popular raw veggie toppings include chopped carrots, onions, cucumbers, celery, mushrooms and broccoli", directions: "In a jar with a tight-fitting lid, combine the oil, lemon juice, garlic, salt and pepper; cover and shake well. Chill. In a large serving bowl, toss the romaine, tomatoes, Swiss cheese, almonds if desired, Parmesan cheese and bacon. Shake dressing; pour over salad and toss. Add croutons and serve immediately.", category: "Salad", datePublished: "2019", url: "https://t3.ftcdn.net/jpg/02/45/00/72/360_F_245007231_vDwC9ceDNtjUCA5YDuq6mPDRG5ocPg0B.jpg"),
        Recipe(name: "Creamy Carrot Soup", image: "https://t3.ftcdn.net/jpg/02/45/00/72/360_F_245007231_vDwC9ceDNtjUCA5YDuq6mPDRG5ocPg0B.jpg", description: "This classic carrot soup is a wonderful soup to serve with your favorite winter salads, sandwiches, and even holiday entrées. Since carrots go well with so many other flavors, it’s a versatile soup to keep in your repertoire.", ingredients: "¼ cup butter, cubed 2 ½ cups sliced carrots large potato, peeled and cubed cup chopped onion stalk celery, chopped 3 1 teaspoon ground ginger ½ cup heavy whipping cream 1 teaspoon curry powder", directions: "Combine carrots, chicken broth, and onion in a large pot. Pour enough water into the pot to assure the ingredients are covered; add garlic, thyme, and tarragon. Bring the liquid to a boil, reduce heat to medium-low, place a cover on the pot, and simmer the mixture until the carrots are very tender, 40 to 50 minutes.", category: "Soup", datePublished: "2019", url: "https://t3.ftcdn.net/jpg/02/45/00/72/360_F_245007231_vDwC9ceDNtjUCA5YDuq6mPDRG5ocPg0B.jpg"),
        Recipe(name: "Chilly Chicken Dry", image: "https://static.toiimg.com/thumb/53094926.cms?width=1200&height=900", description: "Chilli Chicken is a sweet, spicy and crispy appetizer, most popular in Indo-chinese cuisine. Crispy marinated chicken is sautéed in a spicy sweet sauce along with onions and bell peppers. This Chilli Chicken can be made as a dry appetizer or as a gravy to enjoy with rice", ingredients: "The key to a great chili recipe is to find the right balance of spices and flavors. Ground cinnamon and chili powder, diced carrots and sweet potatoes, and ground cinnamon and chili powder all add depth, warmth, and flavor", directions: "Start by frying some chicken. Take chicken in a bowl, add in flour, cornflour, salt, pepper, soy sauce, ginger garlic paste and water. mix well. Set aside for 10 mins. Heat some oil for deep frying, drop the chicken in and fry till golden, drain and set aside. Now make the sauce, heat some butter in a pan, add in ginger garlic and fry till golden. Add in onions. green chillies, salt and sugar. Toss well. capsicum goes in and mix well. Add in red chilli powder, soy sauce, green chilli sauce, vinegar, ketchup adn mix well. Add in water and cook till oil separates. fried chicken goes in and toss well. Add in pepper and spring onion. Mix well. Serve hot", category: "Snak", datePublished: "2019", url: "https://t3.ftcdn.net/jpg/02/45/00/72/360_F_245007231_vDwC9ceDNtjUCA5YDuq6mPDRG5ocPg0B.jpg"),
        Recipe(name: "Cake Zone", image: "https://www.cakezone.com/themes/organie1/img/general-img/fusion/rasmalai-cake-2.webp", description: "So how would you describe a good cake? A good cake, as our experts put it, must look beautiful and taste divine. It must have a perfect balance of appearance, texture, and flavour. It must have nothing but the best and freshest ingredients, meticulously mixed in the right proportions and baked to flawless perfection", ingredients: "Flour is perhaps the most important ingredient in a cake mix, as it creates the basic structure of the entire cake. A major component of flour is gluten, which is a protein that provides a way for the cake to bind to itself. The gluten creates a web that traps and seals air bubbles into the cake mix", directions: "Most cakes are best served at room temperature, unless they have a custard or whipped cream component. For all other cakes, be sure to remove the cake from the refrigerator at least 20 minutes before serving", category: "Snak", datePublished: "2019", url: "https://t3.ftcdn.net/jpg/02/45/00/72/360_F_245007231_vDwC9ceDNtjUCA5YDuq6mPDRG5ocPg0B.jpg"),
        Recipe(name: "Spice Biryani", image: "https://b.zmtcdn.com/data/pictures/3/19494963/09e7e40ef2591f14cf7649dfe2a4fddf_o2_featured_v2.jpg", description: "Chicken Biryani is a savory chicken and rice dish that includes layers of chicken, rice, and aromatics that are steamed together. The bottom layer of rice absorbs all the chicken juices as it cooks, giving it a tender texture and rich flavor, while the top layer of rice turns out white and fluffy", ingredients: "And use garam masala powder or chat masala or just extra green chillies. Although, some spices like black cumin and saffron really change the aroma and taste of biryani. But, if you have just few basic spices, like cumin, turmeric, pepper and cinnamon etc you can begin Indian cooking with these", directions: "Here in this recipe we have used 1 cup of raw rice to 4 cups of water. Remember that little extra water can be drained, but less water might give undercooked rice. Tips for basmati rice for biryani", category: "Main", datePublished: "2019", url: "https://t3.ftcdn.net/jpg/02/45/00/72/360_F_245007231_vDwC9ceDNtjUCA5YDuq6mPDRG5ocPg0B.jpg"),
        Recipe(name: "Lassi Corner", image: "https://i1.wp.com/www.bharatzkitchen.com/wp-content/uploads/2020/08/Flavoured-Lassi.jpg?fit=480%2C270&ssl=1", description: "Sweet lassi tastes like a creamy, sweet yogurt drink with notes of cardamom, saffron and/or rose water which are optionally added. Yogurt is mixed with water, sugar and a few other ingredients to become a refreshing, easy drink. The top of the lassi is usually frothy", ingredients: "lassi, a creamy, frothy yogurt-based drink, blended with water and various fruits or seasonings (such as salt or sugar), that originated in Punjab, India", directions: "Lassi is usually consumed during or after a meal and is claimed to offer a range of health benefits, such as aiding digestion and boosting immunity. It can provide your body with calcium, vitamin D and many essential vitamins. Take a look at how this refreshing drink can benefit your health in numerous ways", category: "Drink", datePublished: "2019", url: "https://t3.ftcdn.net/jpg/02/45/00/72/360_F_245007231_vDwC9ceDNtjUCA5YDuq6mPDRG5ocPg0B.jpg")
    ]
}
