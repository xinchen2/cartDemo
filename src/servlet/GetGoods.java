package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ItemsDAO;
import entity.Items;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@WebServlet("/GetGoods")
public class GetGoods extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetGoods() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ItemsDAO itemsDao = new ItemsDAO(); 
        ArrayList<Items> list = itemsDao.getAllItems();
		
			JSONArray array = new JSONArray();
			JSONObject object = new JSONObject();
			for(int i=0;i<list.size();i++) {
				Items item = list.get(i);
				object.put("id", item.getId());
				object.put("picture", item.getPicture());
				object.put("name", item.getName());
				object.put("city", item.getCity());
				object.put("price", item.getPrice());
				array.add(object);
			}	
			
			System.out.println(array);
			response.setContentType("json/html");
			response.getWriter().print(array);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
