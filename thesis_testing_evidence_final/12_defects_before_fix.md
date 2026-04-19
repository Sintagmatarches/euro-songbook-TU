# Defects before fix

## Public verified filter returned zero rows due to hardcoded false condition
Severity: Major

Reproduction steps:
1. Start the local application.
2. Execute the affected endpoint or feature path described below.
3. Observe the incorrect result.

Observed defect:
Call GET /api/songs?verified=1 before the patch. The endpoint returned no rows even when verified songs existed because the query used 1=0.

Fixed in this cycle: yes

## Song card endpoint hid verified flag and demo seed metadata used non-canonical filter values
Severity: Major

Reproduction steps:
1. Start the local application.
2. Execute the affected endpoint or feature path described below.
3. Observe the incorrect result.

Observed defect:
GET /api/songs/s_demo_du_nai returned country/period values that did not match catalog filter normalization, and the song detail endpoint exposed verified as false regardless of DB value.

Fixed in this cycle: yes

## Admin songs list returned verified=0 and blocked verified=1 filter
Severity: Major

Reproduction steps:
1. Start the local application.
2. Execute the affected endpoint or feature path described below.
3. Observe the incorrect result.

Observed defect:
GET /api/admin/songs?verified=1 always produced an empty list and item rows showed verified=0.

Fixed in this cycle: yes
