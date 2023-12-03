try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword

    ROBOT = False
except Exception:
    ROBOT = False


@keyword("CUSTOM KEYWORD TO ADD")
def add_one_to_integer(n):
    return n + 1
