package lee;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String username;
    private String password;

    public String getUsername()
	{
        return username;
    }
    public void setUsername(String username)
	{
        this.username = username;
    }

    public String getPassword()
	{
        return password;
    }
    public void setPassword(String password)
	{
        this.password = password;
    }

	public String execute() throws Exception
	{
		ActionContext ctx = ActionContext.getContext();
        if (getUsername().equals("mr")
			&& getPassword().equals("mrsoft") )
		{			
			ctx.getSession().put("user" , getUsername());
			ctx.put("tip" , getText("succTip"));
            return SUCCESS;
        }
		else
		{
			ctx.put("tip" , getText("failTip"));
            return ERROR;
        }
    }
}
