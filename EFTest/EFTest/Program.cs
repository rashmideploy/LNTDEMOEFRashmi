using EFTest.EntityModel;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFTest
{
    class Program
    {
static void Main(string[] args)
{
    //Configure One to One Relationship in Entity Framework Using Code First Approach
    Employee employee;
    Customer c;
    //People people;
    //Student student;
    using (var context = new EntityModel.EFTestModel())
    {
        // one to one relation example
        employee = context.Employees.FirstOrDefault();

        Console.WriteLine("Employee Details");
        Console.WriteLine("Employee Name:" + string.Join(" ", new object[] { employee.FirstName, employee.LastName }));
        Console.WriteLine("Employee Email Address:" + employee.EmployeeDetail.EmailAddress);
        Console.WriteLine("");
        Console.WriteLine("");

        //c = context.Customers.FirstOrDefault();
        //Console.WriteLine("Customer Details");
        //Console.WriteLine("Customer Name:" + string.Join(" ", new object[] { c.FirstName, c.LastName }));
        //Console.WriteLine("Customer Email Address:" + c.CustomerDetail.EmailAddress);

        //Console.WriteLine("");
        //Console.WriteLine("");

        //// one to many relation example
        //people = context.People.FirstOrDefault();
        //int index = 1;
        //Console.WriteLine("People Details");
        //Console.WriteLine("Name:" + string.Join(" ", new object[] { people.FirstName, people.LastName }));
        //Console.WriteLine("Addresses");
        //Console.WriteLine("---------");
        //foreach (var address in people.PeopleAddress)
        //{
        //    Console.WriteLine(index + string.Join(", ", new object[] { address.AddressLine1, address.AddressLine2, address.City, address.State, address.Country }));
        //    index += 1;
        //}

        //Console.WriteLine("");
        //Console.WriteLine("");

        //student = context.Student.FirstOrDefault();
        //int index1 = 1;
        //Console.WriteLine("Student Details");
        //Console.WriteLine("Name:" + string.Join(" ", new object[] { student.FirstName, student.LastName }));
        //Console.WriteLine("Addresses");
        //Console.WriteLine("---------");
        //foreach (var address in student.StudentAddress)
        //{
        //    Console.WriteLine(index1 + " " + string.Join(", ", new object[] { address.AddressLine1, address.AddressLine2, address.City, address.State, address.Country }));
        //    index1 += 1;
        //}

    }
    Console.ReadLine();
}
    }
}
