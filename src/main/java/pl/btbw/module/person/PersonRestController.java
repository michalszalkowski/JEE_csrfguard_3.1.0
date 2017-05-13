package pl.btbw.module.person;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import java.util.Map;

@Path("/person")
public class PersonRestController {

	@POST
	@Path("/name1")
	public String name1(@FormParam("name") String name) {
		return "name1: " + name;
	}

	@POST
	@Path("/name2")
	@Consumes(MediaType.APPLICATION_JSON)
	public String shit(Map<String, String> listItem) {
		return "name2: " + listItem;
	}
}