from Stack import Stack

def is_balanced(input_string):
    stack = Stack()
    opening_brackets = '([{'
    closing_brackets = ')]}'
    matching_brackets = {')': '(', ']': '[', '}': '{'}

    for char in input_string:
        if char in opening_brackets:
            stack.push(char)
        elif char in closing_brackets:
            if stack.is_empty() or stack.peek() != matching_brackets[char]:
                return ('Несбалансированно')
            stack.pop()

    if stack.is_empty():
        return ('Сбалансированно')


# Проверка сбалансированных последовательностей
print(is_balanced("(((([{}]))))"))  # True
print(is_balanced("[([])((([[[]]])))]{()}"))  # True
print(is_balanced("{{[()]}}"))  # True

# Проверка несбалансированных последовательностей
print(is_balanced("}{"))  # False
print(is_balanced("{{[(])]"))  # False
print(is_balanced("[[{())}]"))  # False