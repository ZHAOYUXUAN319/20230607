       IDENTIFICATION DIVISION.
       PROGRAM-ID. SAMPLE-PROGRAM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNT-NUMBER PIC 9(2) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
       PERFORM VARYING COUNT-NUMBER FROM 1 BY 1 UNTIL COUNT-NUMBER > 10
       DISPLAY "Current count: " COUNT-NUMBER
       END-PERFORM.

       STOP RUN.

       IDENTIFICATION DIVISION.



       PROGRAM-ID. BANK-ACCOUNTING.