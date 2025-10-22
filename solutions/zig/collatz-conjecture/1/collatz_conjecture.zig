const std = @import("std");

pub const ComputationError = error{IllegalArgument};

fn handleStep(number: usize) usize {
    if (number == 2) {
        return 0;
    }
    if (number % 2 == 0) {
        return number / 2;
    } else {
        return number * 3 + 1;
    }
}

pub fn steps(number: usize) ComputationError!usize {
    if (number == 0) return ComputationError.IllegalArgument;
    if (number == 1) return 0;
    var nsteps: usize = 0;
    var n = number;
    while (n > 0 and nsteps < 1000) {
        n = handleStep(n);
        nsteps += 1;
    }
    return nsteps;
}
