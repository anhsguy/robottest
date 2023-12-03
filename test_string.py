try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword

    ROBOT = False
except Exception:
    ROBOT = False


@keyword("STRING MATCH")
def string(string1, string2):
    if string1 == string2:
        result = True
    else:
        result = False
    return result

# launch RIDE from desktop shortcut
