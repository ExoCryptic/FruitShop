package data;

import java.util.*;
import jakarta.persistence.*;
import util.DBUtil;
import business.Description;

public class DescriptionDB 
{
	public static void insert(Description description) 
	{
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		trans.begin();
		try
		{
			em.persist(description);
			trans.commit();
		}
		catch (Exception e)
		{
			System.out.println(e);
			trans.rollback();
		}
		finally 
		{
			em.close();
		}
	}
	
	public static void update(Description description) 
	{
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		trans.begin();
		try
		{
			em.merge(description);
			trans.commit();
		}
		catch (Exception e)
		{
			System.out.println(e);
			trans.rollback();
		}
		finally 
		{
			em.close();
		}
	}
	
	public static void delete(Description description) 
	{
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		trans.begin();
		try
		{
			em.remove(em.merge(description));
			trans.commit();
		}
		catch (Exception e)
		{
			System.out.println(e);
			trans.rollback();
		}
		finally 
		{
			em.close();
		}
	}
	
	public static boolean fruitNameExists(String fruitName)
	{
		Description u = selectDescription(fruitName);
		return u != null;
	}
	
	public static Description selectDescription(String fruitName)
	{
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		String qString = "SELECT u FROM Description u "
				+ "WHERE u.fruitName = :fruitName";
		TypedQuery<Description> q = em.createQuery(qString, Description.class);
		q.setParameter("fruitName", fruitName);
		try 
		{
			Description description = q.getSingleResult();
			return description;
		} 
		catch (NoResultException e) 
		{
			System.out.println(e);
			return null;
		} 
		finally 
		{
			em.close();
		} 
	}

	public static List<Description> selectDescriptions()
	{
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		String qString = "SELECT u FROM Description u ";
		TypedQuery<Description> q = em.createQuery(qString, Description.class);
		List<Description> descriptions;
		try 
		{
			descriptions = q.getResultList();
			if (descriptions == null || descriptions.isEmpty())
				descriptions = null;
		} 
		finally 
		{
			em.close();
		} 
		return descriptions;
	}
}