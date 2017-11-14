//Name: Craig Blakeney
//Student Number: C16428772
void setup()
{
  size(800,600);
  background(125,125,125);
  loadData();
  printProducts();
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void draw()
{
  displayProducts();
}


void loadData()
{
 Table table = loadTable("cafe.csv", "header");
 
 for(TableRow r:table.rows())
 {
   Product product = new Product(r);
   products.add(product);
 }
 
}


void printProducts()
{
  for(Product p:products)
  {
    println(p.toString());
  }
}


void displayProducts()
{
  float border = height/products.size();
  stroke(255);
  textAlign(LEFT,LEFT);
  for(int i=0;i<products.size();i++)
  {
    float position =map(i,0,products.size(),border,width-border);
    Product p =products.get(i);
    println(p.name + p.price);
  }
    
}

void displayBill()
{
  
}

void mousePressed()
{
  
  
}