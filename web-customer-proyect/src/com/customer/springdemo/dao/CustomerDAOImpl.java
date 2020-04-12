package com.customer.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.customer.springdemo.entity.Customer;


@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	// inyectar session factory 
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override		//sacamos @Transactional ya que de eso se encarga el service CustomerServiceImpl
	public List<Customer> getCustomers() {
		
		// obtener la sesi�n actual de hibernate 
		Session currentSession = sessionFactory.getCurrentSession();
		
		// crear query ordenada por apellido
		Query<Customer> theQuery = 
				currentSession.createQuery("from Customer order by lastName"
									, Customer.class);
		
		// ejecutar query y objeter la lista de resultados
		List<Customer> customers = theQuery.getResultList();
		
		// retornar los resultados
		return customers;
	}

	@Override
	public void saveCustomer(Customer theCustomer) {
		
		// obtener la sesion actual de hibernate 
		Session currentSession = sessionFactory.getCurrentSession();
		
		// guardar el cliente
		currentSession.saveOrUpdate(theCustomer);
		
	}

	@Override		//obtiene el cliente de la DB seg�n su ID 
	public Customer getCustomer(int theId) {
			
		// obtener la sesion de hibernate
		Session currentSession = sessionFactory.getCurrentSession();
		
		// obtener/leer de la DB usando la key
		Customer theCustomer = currentSession.get(Customer.class, theId);
		
		return theCustomer;
	}

	@Override
	public void deleteCustomer(int theId) {
		
		// obtener la sesion de hibernate
		Session currentSession = sessionFactory.getCurrentSession();
		
		// obtener/leer de la DB usando la key
		Query theQuery = 
				currentSession.createQuery("delete from Customer where id=:customerId");
		
		theQuery.setParameter("customerId", theId); //setea la variable id=:customerId en la query
		
		theQuery.executeUpdate();
		
	}
	
}