//Name: Craig Blakeney
//Student Number: C16428772
void setup()
{
  size(800,600);
  
  loadData();
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void draw()
{
  
}

void loadData()
{
 Table table = loadTable("cafe.csv", "header");
 
 for(TableRow r:table.rows())
 {
   Product product = new Product(r);
   products.add(product);
 }
 
 //Iterate over the product ArrayList
 //Prints the price after the corresponding product
 for(Product p:products)
 {
   println(p.name);
   println(p.price);
 }
  

}