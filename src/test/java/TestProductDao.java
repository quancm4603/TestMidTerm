import com.quancm.testmidterm.daos.ProductDao;
import com.quancm.testmidterm.models.Product;
import org.junit.jupiter.api.Test;

import java.util.List;

public class TestProductDao {

    private ProductDao productDao = new ProductDao();


    @Test
    public void testAddNew(){
        Product product = new Product();
        product.setName("Iphone 15");
        product.setDescription("from apple");
        product.setImage("/images/iphone15.jpg");
        product.setCategory("Loai1");
        productDao.addProduct(product);

    }


    @Test
    public void testListAll(){
        List<Product> products = productDao.listAllProducts();
        for(Product product : products){
            System.out.println(product.getName() + " " + product.getDescription() + " " + product.getImage() + " " + product.getCategory() + " " + product.getCreated_at());

        }
    }


}
