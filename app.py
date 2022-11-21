from peewee import *

db = PostgresqlDatabase('contacts',user='',password='',host='localhost',port=5432)

class BaseModel(Model):
  class Meta:
    database=db

class Contacts(BaseModel):
  first_name= CharField()
  last_name = CharField()
  phone_number= IntegerField()

  db.connect()

  def app_logic():
    print("Contacts list!")
    answer = input("What would you like to do? Add contact(a), List contact(l)")

    if answer =="a":
      first_name=input("First Name of contact")
      last_name=input("Last name of contact")
      phone_number=int(input("Phone Number of contact"))
      contact=Contacts(first_name=first_name,last_name=last_name,phone_number=phone_number)
      contact.save()
      print(f'Contact {first_name} has been saved!')
    elif answer == "l":
      list_of_contacts = Contacts.select()
      for contact in list_of_contacts:
        print(contact.first_name)

  app_logic()

    
      

