select concat_ws('-', 
			concat_ws('.', 
			substring(natural_person.cpf, 1, 3), 
            substring(natural_person.cpf, 4, 3), 
            substring(natural_person.cpf, 7, 3)), 
		substring(natural_person.cpf, 10, 2)) as CPF
from customers
inner join natural_person
on customers.id = natural_person.id_customers;