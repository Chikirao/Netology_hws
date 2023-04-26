class Stack:
    def __init__(self):
        self.stack = []

    def is_empty(self):
        if len(self.stack) == 0:
            return True
        else:
            return False

    def push(self, elem):
        self.stack.append(elem)

    def pop(self):
        return self.stack.pop(-1)

    def peek(self):
        return self.stack[-1]

    def size(self):
        return len(self.stack)


# Test code

# import unittest
#
# class TestStack(unittest.TestCase):
#     def setUp(self):
#         self.stack = Stack()
#
#     def test_push_and_pop(self):
#         self.stack.push(1)
#         self.stack.push(2)
#         self.stack.push(3)
#         self.assertEqual(self.stack.pop(), 3)
#         self.assertEqual(self.stack.pop(), 2)
#         self.assertEqual(self.stack.pop(), 1)
#
#     def test_peek(self):
#         self.stack.push(1)
#         self.stack.push(2)
#         self.assertEqual(self.stack.peek(), 2)
#
#     def test_is_empty(self):
#         self.assertTrue(self.stack.is_empty())
#         self.stack.push(1)
#         self.assertFalse(self.stack.is_empty())
#
#     def test_size(self):
#         self.assertEqual(self.stack.size(), 0)
#         self.stack.push(1)
#         self.stack.push(2)
#         self.assertEqual(self.stack.size(), 2)
#
# if __name__ == '__main__':
#     unittest.main()