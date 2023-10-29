ALTER TABLE "schedule" DROP CONSTRAINT IF EXISTS "schedule_fk0";

ALTER TABLE "schedule" DROP CONSTRAINT IF EXISTS "schedule_fk1";

ALTER TABLE "healthHistory" DROP CONSTRAINT IF EXISTS "healthHistory_fk0";

ALTER TABLE "healthHistory" DROP CONSTRAINT IF EXISTS "healthHistory_fk1";

ALTER TABLE "healthHistory" DROP CONSTRAINT IF EXISTS "healthHistory_fk2";

ALTER TABLE "patient" DROP CONSTRAINT IF EXISTS "patient_fk0";

ALTER TABLE "patient" DROP CONSTRAINT IF EXISTS "patient_fk1";

ALTER TABLE "test" DROP CONSTRAINT IF EXISTS "test_fk0";

ALTER TABLE "test" DROP CONSTRAINT IF EXISTS "test_fk1";

ALTER TABLE "test" DROP CONSTRAINT IF EXISTS "test_fk2";

ALTER TABLE "diagnos" DROP CONSTRAINT IF EXISTS "diagnos_fk0";

ALTER TABLE "diagnos" DROP CONSTRAINT IF EXISTS "diagnos_fk1";

ALTER TABLE "diagnos" DROP CONSTRAINT IF EXISTS "diagnos_fk2";

ALTER TABLE "purpose_of_treatment" DROP CONSTRAINT IF EXISTS "purpose_of_treatment_fk0";

ALTER TABLE "purpose_of_treatment" DROP CONSTRAINT IF EXISTS "purpose_of_treatment_fk1";

ALTER TABLE "purpose_of_treatment" DROP CONSTRAINT IF EXISTS "purpose_of_treatment_fk2";

ALTER TABLE "purpose_of_treatment" DROP CONSTRAINT IF EXISTS "purpose_of_treatment_fk3";

ALTER TABLE "purpose_of_treatment" DROP CONSTRAINT IF EXISTS "purpose_of_treatment_fk4";

ALTER TABLE "medical_treatment" DROP CONSTRAINT IF EXISTS "medical_treatment_fk0";

ALTER TABLE "medical_card" DROP CONSTRAINT IF EXISTS "medical_card_fk0";

ALTER TABLE "medical_card" DROP CONSTRAINT IF EXISTS "medical_card_fk1";

ALTER TABLE "medical_card" DROP CONSTRAINT IF EXISTS "medical_card_fk2";

ALTER TABLE "medical_card" DROP CONSTRAINT IF EXISTS "medical_card_fk3";

ALTER TABLE "scheduledoctor" DROP CONSTRAINT IF EXISTS "scheduledoctor_fk0";

