"""
Exception handling in Python is a way to manage errors and other exceptional conditions that can occur during the execution of a program. Python provides a mechanism to handle these situations using the try, except, else, and finally blocks.

Basic Structure
try block: The code that might raise an exception is placed inside the try block.

except block: The code to handle the exception is placed inside the except block.

else block: The code inside the else block will execute if no exception occurs in the try block.

finally block: The code inside the finally block will always execute, regardless of whether an exception occurred or not.

Link : https://docs.python.org/3/tutorial/errors.html

Common Built-in Exceptions
ArithmeticError: Base class for arithmetic errors.

OverflowError: Raised when a numerical result is too large to be expressed.
ZeroDivisionError: Raised when division or modulo by zero takes place.
FloatingPointError: Raised when a floating-point operation fails.
AttributeError: Raised when an attribute reference or assignment fails.

EOFError: Raised when the input() function hits an end-of-file condition (EOF).

ImportError: Raised when an import statement fails to find the module definition or when a from ... import fails.

ModuleNotFoundError: A subclass of ImportError that is raised by the import statement when a module cannot be located.
IndexError: Raised when a sequence subscript is out of range.

KeyError: Raised when a dictionary key is not found.

KeyboardInterrupt: Raised when the user hits the interrupt key (usually Control-C or Delete).

MemoryError: Raised when an operation runs out of memory.

NameError: Raised when a local or global name is not found.

UnboundLocalError: A subclass of NameError that is raised when a local variable is referenced before it has been assigned.
OSError: Raised when a system-related error occurs.

FileNotFoundError: Raised when a file or directory is requested but doesn’t exist.
PermissionError: Raised when trying to run an operation without the adequate access rights.
TimeoutError: Raised when a system function timed out at the system level.
RuntimeError: Raised when an error does not fall under any other category.

NotImplementedError: Raised when an abstract method that needs to be implemented in an inherited class is not actually implemented.
SyntaxError: Raised when the parser encounters a syntax error.

IndentationError: A subclass of SyntaxError for errors related to incorrect indentation.
TabError: Raised when inconsistent use of tabs and spaces in indentation.
SystemError: Raised when the interpreter finds an internal problem, but when this error is encountered, the Python interpreter does not exit.

TypeError: Raised when an operation or function is applied to an object of inappropriate type.

ValueError: Raised when an operation or function receives an argument that has the right type but an inappropriate value.

UnicodeError: Raised when a Unicode-related encoding or decoding error occurs.

UnicodeEncodeError: Raised when a Unicode-related error occurs during encoding.
UnicodeDecodeError: Raised when a Unicode-related error occurs during decoding.
UnicodeTranslateError: Raised when a Unicode-related error occurs during translation.
StopIteration: Raised to signal the end of an iterator.

AssertionError: Raised when an assert statement fails.
"""

# print("start")
# try:
#     b = int(input("Enter a number : "))
#     a = 10/b + c
#     print(a)
# except ZeroDivisionError:
#     print("Error: Division by zero is not allowed.")
# except ValueError:
#     print("Invalid input. Please enter a number.")
# except TypeError:
#     print("Invalid input. Please enter a number.")
# except NameError:
#     print("Oops, something went wrong.")
# except Exception as err:
#     print("An error occurred:", err)
# else:
#     print(a + 20)
# finally:
#     print("This block will always execute.")
# print("end")

# bal = 2000
# with_balance = 20000

# if with_balance > bal:
#     raise ValueError("Insufficient balance")

# assert (with_balance < bal), "insufficient balance"

