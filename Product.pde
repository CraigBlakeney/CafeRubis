class Product
{
 String name;
 Float price;
 
 Product(String name, Float price)
 {
   this.name = name;
   this.price = price;
 }
 
 Product(TableRow row)
 {
  name = row.getString("Name");
  price = row.getFloat("Price");
 }
 
 String toString()
 {
  return name + "  " 
    + price;
 }
 
 
}