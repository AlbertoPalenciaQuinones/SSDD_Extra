"""Calculator implementation."""

import RemoteCalculator  # Esto ya se carga en __init__.py, pero asegúrate
import Ice

class Calculator(RemoteCalculator.Calculator):  # Hereda de la interfaz Slice
    def sum(self, op1: float, op2: float, current: Ice.Current = None) -> float:
        return op1 + op2

    def sub(self, op1: float, op2: float, current: Ice.Current = None) -> float:
        return op1 - op2

    def mult(self, op1: float, op2: float, current: Ice.Current = None) -> float:
        return op1 * op2

    def div(self, op1: float, op2: float, current: Ice.Current = None) -> float:
        if op2 == 0:
            raise RemoteCalculator.DivisionByZero("Division by zero error")
        return op1 / op2
