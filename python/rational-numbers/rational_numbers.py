from __future__ import division
import math

class Rational(object):

    def _reduce(numer, denom):
        # reduce
        if numer==denom:
            numer = denom = 1
        elif numer == 0:
            numer = 0
            denom = 1
        else:
            gcd = math.gcd(numer, denom)
            numer = numer // gcd
            denom = denom // gcd
        return numer, denom

    def reduce(fn):
        def wrapped(*args):
            self =  fn(*args)
            self.numer, self.denom = Rational._reduce(self.numer, self.denom)
            return self

        return wrapped

    def __init__(self, numer, denom):
        if denom==0:
            raise ZeroDivisionError()
        if denom < 0:
            denom = abs(denom)
            numer = -1 * numer

        self.numer, self.denom = Rational._reduce(numer, denom)

    def __eq__(self, other):
        return self.numer == other.numer and self.denom == other.denom

    def __repr__(self):
        try:
            return '{}/{}'.format(self.numer, self.denom)
        except:
            return "--__repr__ failed--"

    @reduce
    def __add__(self, other):
        numer = self.numer * other.denom + self.denom * other.numer
        denom = self.denom * other.denom
        return Rational(numer, denom)

    @reduce
    def __sub__(self, other):
        numer = self.numer * other.denom - self.denom * other.numer
        denom = self.denom * other.denom
        return Rational(numer, denom)

    @reduce
    def __mul__(self, other):
        numer = self.numer * other.numer
        denom = self.denom * other.denom
        return Rational(numer, denom)

    @reduce
    def __truediv__(self, other):
        denom = self.denom * other.numer
        if denom == 0:
            raise ZeroDivisionError(f"Denominator {self.denom} * {other.numer}\
                cannot equal zero.")
        numer = self.numer * other.denom
        return Rational(numer, denom)

    @reduce
    def __abs__(self):
        denom = abs(self.denom)
        numer = abs(self.numer)
        return Rational(numer, denom)

    @reduce
    def __pow__(self, power):
        denom = self.denom ** power
        numer = self.numer ** power
        return Rational(numer, denom)

    def __rpow__(self, base):
        return base ** (self.numer / self.denom)
