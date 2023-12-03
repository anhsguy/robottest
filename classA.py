try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword

    ROBOT = False
except Exception:
    ROBOT = False


class classA:
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    def __init__(self, a, b):
        BuiltIn().log_to_console(f"values assigned {a} and {b}")
        self.a = a
        self.b = b

    @keyword("SUM OF VALUE")
    def sum_of_value(self):
        return self.a + self.b

    @keyword("DIFF OF VALUE")
    def sub_of_value(self):
        return self.a - self.b
