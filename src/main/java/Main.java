
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;
import org.kevingutierrez.webapp.model.Producto;
import org.kevingutierrez.webapp.util.JpaUtil;

/**
 *
 * @author informatica
 */
public class Main {
    
    private static EntityManager em = JpaUtil.getEntityManager();
    
    public static void main (String [] args){
        TypedQuery<Producto> query = em.createQuery("SELECT p FROM Producto p", Producto.class);
        
        List<Producto> productos = query.getResultList();
        
        for(Producto producto:productos){
            System.out.println(producto);
        }
    }
}
