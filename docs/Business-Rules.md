# Business Rules

Business rules are the set of rules and regulations that define the operations in an  
organization. They help to build a proper database system by deriving logic for every  
important decision made during the operations.  

The business rules that will be used in the system are given below:  

## Student  

- Each Student is admitted in exactly one of the programs.  

## Program  

- Each program contains various students.  
- Each program contains various modules.  

## Module  

- A Module can be included in more than one program.  
- A module can either have a single or multiple assessments.  
- A module contains various resources.  
- Multiple modules can be taught by one teacher.  

## Teacher  

- One teacher can teach various modules.  

## Announcement  

- Each module can have more than one announcement.  

## Assessment  

- Each assessment is assigned to exactly one module.  
- Each assessment has either one or multiple results.  

## Result  

- Multiple results can be related to one assessment.  

## Resources  

- Each module consists of multiple resources.  
- Resources must be completed in sequential order.  
