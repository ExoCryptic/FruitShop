package business;

import java.io.Serializable;
import java.util.*;
import jakarta.persistence.*;

@Entity
public class Description implements Serializable
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long descId;
	private String fruitName;
	private String origin;
	private String provider;
	private String detail;
	private String type;
	private Date releaseDate;
	
	public Description()
	{
		fruitName = "";
		origin = "";
		provider = "";
		detail = "";
		type = "";
		releaseDate = new Date();
	}

	public Description(String fruitName, String origin, String provider, String detail, String type, Date releaseDate)
	{
		this.fruitName = fruitName;
		this.origin = origin;
		this.provider = provider;
		this.detail = detail;
		this.type = type;
		this.releaseDate = releaseDate;
	}

	public long getDescId() 
	{
		return descId;
	}

	public void setDescId(long descId) 
	{
		this.descId = descId;
	}

	public String getfruitName() 
	{
		return fruitName;
	}

	public void setfruitName(String fruitName) 
	{
		this.fruitName = fruitName;
	}

	public String getorigin() 
	{
		return origin;
	}

	public void setorigin(String origin) 
	{
		this.origin = origin;
	}

	public String getprovider() 
	{
		return provider;
	}

	public void setprovider(String provider) 
	{
		this.provider = provider;
	}

	public String getDetail() 
	{
		return detail;
	}

	public void setDetail(String detail) 
	{
		this.detail = detail;
	}
	
	public String gettype() 
	{
		return type;
	}

	public void settype(String type) 
	{
		this.type = type;
	}

	public Date getReleaseDate() 
	{
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) 
	{
		this.releaseDate = releaseDate;
	}
}
