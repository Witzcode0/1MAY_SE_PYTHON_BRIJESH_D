
# Here are the most commonly used regex metacharacters and their meanings:

# Meta Characters:
# . (dot): Matches any character except a newline.

# Example: a.b will match acb, a0b, but not ab.
# ^ (caret): Matches the start of the string.

# Example: ^abc will match abc at the beginning of a string, but not xyzabc.
# $ (dollar): Matches the end of the string.

# Example: abc$ will match xyzabc, but not abcxyz.
# * (asterisk): Matches 0 or more repetitions of the preceding character.

# Example: a*b will match b, ab, aaab.
# + (plus): Matches 1 or more repetitions of the preceding character.

# Example: a+b will match ab, aaab, but not b.
# ? (question mark): Matches 0 or 1 repetition of the preceding character.

# Example: a?b will match b, ab, but not aaab.
# [] (square brackets): Matches any one character inside the brackets.

# Example: [abc] will match a, b, or c.
# | (pipe): Acts as an OR operator between two patterns.

# Example: abc|xyz will match either abc or xyz.
# () (parentheses): Groups patterns and remembers the match.

# Example: (abc)+ will match abc, abcabc.
# {} (curly braces): Specifies the exact number of repetitions.

# Example: a{2,4} will match between 2 and 4 occurrences of a, e.g., aa, aaa, or aaaa.
# \ (backslash): Escapes a metacharacter or introduces a special sequence.
# Example: \. will match a literal dot, not the regex metacharacter.
# \d: Matches any digit, equivalent to [0-9].

# Example: \d+ will match 123, 5678.
# \w: Matches any word character (alphanumeric + underscore), equivalent to [a-zA-Z0-9_].

# Example: \w+ will match hello, 123, _variable.
# \s: Matches any whitespace character (spaces, tabs, etc.).

# Example: \s+ will match any string of spaces or tabs.



import re 

# Find all email addresses and dates in the given text
# text = """
# On 01-8-2024, the project manager, Sarah Jenkins, reached out to the team via email to confirm the final deadline for the delivery of the project. She stated in her email sent to sarah.jenkins@techsolutions.com that all deliverables must be submitted by 21/12/2024. Additionally, she reminded the team to send any project updates to updates@techsolutions.com and to CC her personal email, sarah.j.dev@gmail.com, if there were any issues along the way 8-3/2034.
# """

# Corrected regex pattern for finding dates
# pattern = r"\b(January|February|March|April|May|June|July|August|September|October|November|December) \d{1,2}, \d{4}\b"

# pattern = r"\b\d{1,2}[-/]\d{1,2}[-/]\d{4}\b"

# jenkins@techsolutions.com
# updates@techsolutions.com
# sarah.j.dev@gmail.com

# pattern = r"[a-zA-Z.]+\@[a-zA-Z.]+\.[a-zA-Z.]+"

# Find all dates
# dates = re.findall(pattern, text)
# print(dates)


# txt = "The rain in Spain"
# x = re.findall("ai", txt)
# print(x)

# txt = "The rain in Spain"
# x = re.findall("Portugal", txt)
# print(x)

# txt = "The rain in Spain"
# x = re.search("\s", txt)

# print("The first white-space character is located in position:", x.start())

# txt = "The rain in Spain"
# x = re.split("\s", txt)
# print(x)

# txt = "The rain in Spain"
# x = re.split("\s", txt, 1)
# print(x)

# txt = "The rain in Spain"
# x = re.sub("\s", "9", txt)
# print(x)

# txt = "The rain in Spain"
# x = re.sub("\s", "9", txt, 2)
# print(x)

# txt = "The rain in Spain"
# x = re.search(r"\bS\w+", txt)
# print(x.group())

# mobile = r"\+?\d{1,3}[-.\s]?\(?\d{1,4}\)?[-.\s]?\d{1,4}[-.\s]?\d{1,4}[-.\s]?\d{1,9}"




