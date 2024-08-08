"""
classes and objects are fundamental concepts of Object-Oriented Programming (OOP). They help in structuring and organizing code in a way that models real-world entities and their interactions.

Class: A class is a blueprint for creating objects (instances). It defines the attributes (variables) and behaviors (methods) that objects of that class have.

Object: An object is an instance of a class. It represents a specific entity with its own state and behavior. Objects can have attributes and methods defined in their class.

Syntax:

class ClassName:
    # data member [attributes and properties]
    # methods [functions and behaviors]

syntax:
object_name = ClassName()
"""

# class Maths:
#     # data member [attributes and properties]
#     num1 = 10
#     num2 = 20
#     # methods [functions and behaviors]
#     def add(yoyo):
#         print(yoyo.num1 + yoyo.num2)

#     def mul(yoyo):
#         print(yoyo.num1 * yoyo.num2)

# o1 = Maths()
# o1.add()
# o1.mul()
# print(o1.num1)
# print(o1.num2)


class Auth:
    class Register:
        def __init__(self, username, email, password, confirm_password):
            self.username = username
            self.email = email
            self.password = password
            self.confirm_password = confirm_password

        def validate_username(self):
            if len(self.username) < 8:
                return False
            if not self.username.isalnum():
                return False
            return True
        
        def validate_email(self):
            if "@" not in self.email or "." not in self.email:
                return False
            return True
        
        def validate_password(self):
            if len(self.password) < 8:
                return False
            if not self.password.isalnum():
                return False
            if self.password != self.confirm_password:
                return False
            return True
        
        def register(self):
            if self.validate_username() and self.validate_email() and self.validate_password():
                print("Registration successful!")
            else:
                print("Registration failed!")

    class Login:
        def __init__(self, username, password):
            self.username = username
            self.password = password

        def login_authentication(self):
            if self.username == "admin123" and self.password == "password":
                print("Login successful!")
            else:
                print("Login failed!")

auth = Auth()

# register_obj = auth.Register("admin123", "admin@gmail.com", "password", "password")
# register_obj.register()

# register_user_1 = auth.Register("admin1234", "admin1234@gmail.com", "password", "password")
# register_user_1.register()

# login_obj = auth.Login("admin123", "password")
# login_obj.login_authentication()

# while(1):
#     username = input("Enter a username: ")
#     password = input("Enter a password: ")
#     login_user_1 = auth.Login(username, password)
#     login_user_1.login_authentication()