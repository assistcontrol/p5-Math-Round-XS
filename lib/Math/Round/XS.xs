#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "math.h"

MODULE = Math::Round::XS   PACKAGE = Math::Round::XS
PROTOTYPES: ENABLE

long
round(val)
  double val
  CODE:
    RETVAL = lround(val);
  OUTPUT:
    RETVAL

double
nearest(val, places)
  double val
  int places
  CODE:
    int multiplier = pow(10, places);
    RETVAL = round(val * multiplier) / multiplier;
  OUTPUT:
    RETVAL
