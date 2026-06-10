// metric
MM_PER_CM = 10;
CM_PER_METER = 100;

function mm_to_cm(mm) = mm / MM_PER_CM;

function mm_to_meters(mm) = mm_to_cm(mm) / CM_PER_METER;

function cm_to_mm(cm) = cm * MM_PER_CM;

function cm_to_meters(cm) = cm / CM_PER_METER;

function meters_to_cm(meters) = meters * CM_PER_METER;

function meters_to_mm(meters) = meters_to_cm(meters) * MM_PER_CM;

// imperial
INCHES_PER_FT = 12;

function inches_to_ft(inches) = inches / INCHES_PER_FT;

function ft_to_inches(ft) = ft * INCHES_PER_FT;

// metric to imperial
MM_PER_INCH = 25.4;

function mm_to_inches(mm) = mm / MM_PER_INCH;

function mm_to_ft(mm) = inches_to_ft(mm_to_inches(mm));

function cm_to_inches(cm) = mm_to_inches(cm_to_mm(cm));

function cm_to_ft(cm) = inches_to_ft(cm_to_inches(cm));

function meters_to_inches(meters) = mm_to_inches(meters_to_mm(meters));

function meters_to_ft(meters) = mm_to_ft(meters_to_mm(meters));

// imperial to metric
function inches_to_mm(inches) = inches * MM_PER_INCH;

function inches_to_cm(inches) = mm_to_cm(inches_to_mm(inches));

function inches_to_meters(inches) = mm_to_meters(inches_to_mm(inches));

function ft_to_mm(ft) = inches_to_mm(ft_to_inches(ft));

function ft_to_cm(ft) = inches_to_cm(ft_to_inches(ft));

function ft_to_meters(ft) = mm_to_meters(ft_to_mm(ft));

