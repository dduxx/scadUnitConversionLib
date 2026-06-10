include <../../lib/conversion.scad>

// this is required for some of the conversions that result in some awkward fp numbers
function aprox_eq(a, b, epsilon=0.0001) = abs(a - b) < epsilon;

// metric
assert(mm_to_cm(10) == 1, "failed to convert mm -> cm");

assert(mm_to_meters(1000) == 1, "failed to convert mm -> meters");

assert(cm_to_mm(1) == 10, "failed to convert cm -> mm");

assert(cm_to_meters(100) == 1, "failed to convert cm to meters");

assert(meters_to_cm(1) == 100, "failed to convert meters to cm");

assert(meters_to_mm(1) == 1000, "failed to convert meters to mm");

// imperial
assert(inches_to_ft(12) == 1, "failed to convert inches -> ft");

assert(ft_to_inches(1) == 12, "failed to convert ft -> inches");

// metric to imperial
assert(mm_to_inches(25.4) == 1, "failed to convert mm -> inches");

assert(aprox_eq(mm_to_ft(304.8), 1), "failed to convert mm -> ft");

assert(cm_to_inches(2.54) == 1, "failed to convert cm -> inches");

assert(aprox_eq(cm_to_ft(30.48), 1), "failed to convert cm -> ft");

assert(aprox_eq(meters_to_inches(1), 39.3701), "failed to convert meters -> inches");

assert(aprox_eq(meters_to_ft(1), 3.28084), "failed to convert meters -> ft");

// imperial to metric
assert(inches_to_mm(1) == 25.4, "failed to convert inches -> mm");

assert(inches_to_cm(1) == 2.54, "failed to convert inches -> cm");

assert(aprox_eq(inches_to_meters(39.3701), 1), "failed to convert inches -> meters");

assert(aprox_eq(ft_to_mm(1), 304.8), "failed to convert ft -> mm");

assert(aprox_eq(ft_to_cm(1), 30.48), "failed to convert ft -> cm");

assert(aprox_eq(ft_to_meters(3.28084), 1), "failed to convert ft -> meters");
