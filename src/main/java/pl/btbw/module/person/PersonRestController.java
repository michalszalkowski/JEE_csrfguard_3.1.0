package pl.btbw.module.person;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.*;

@Path("/person")
public class PersonRestController {

	@POST
	@Path("/name1")
	public String name1(@FormParam("name") String name) {
		return "name1: " + name;
	}
}