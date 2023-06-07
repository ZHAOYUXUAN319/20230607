        IDENTIFICATION DIVISION.
        PROGRAM-ID. AVERAGE_CALCULATION.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
            01 NUMBERS.
               05 NUMBER-ARRAY OCCURS 10 TIMES.
                  10 NUM PIC 9(2).
            01 SUM PIC 9(4).
            01 AVG PIC 9(3)V9(2).

        PROCEDURE DIVISION.
            PERFORM INITIALIZE-ARRAY.
            PERFORM CALCULATE-SUM.
            PERFORM CALCULATE-AVERAGE.
            DISPLAY "Average: " AVG.
            STOP RUN.

        INITIALIZE-ARRAY.
            PERFORM VARYING NUM FROM 1 BY 1 UNTIL NUM > 10
                MOVE NUM TO NUMBER-ARRAY(NUM)
            END-PERFORM.

        CALCULATE-SUM.
            SET SUM TO ZERO.
            PERFORM VARYING NUM FROM 1 BY 1 UNTIL NUM > 10
                ADD NUMBER-ARRAY(NUM) TO SUM
            END-PERFORM.

        CALCULATE-AVERAGE.
            DIVIDE SUM BY 10 GIVING AVG.
