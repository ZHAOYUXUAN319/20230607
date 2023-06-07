        IDENTIFICATION DIVISION.
        PROGRAM-ID. BANK-ACCOUNTING.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 CUSTOMER-NAME PIC X(30) VALUE 'John Doe'.
        01 ACCOUNT-NUMBER PIC X(10) VALUE '1234567890'.
        01 BALANCE PIC 9(7)V99 VALUE 1000.00.
        01 REPORT-AMOUNT PIC 9(7)V99 VALUE ZERO.
        01 RECONCILIATION-RESULT PIC 9(7)V99 VALUE ZERO.

        PROCEDURE DIVISION.
        MAIN-LOGIC.
            DISPLAY 'Bank Account Statement'.
            DISPLAY '----------------------'.
            DISPLAY 'Customer Name: ' CUSTOMER-NAME.
            DISPLAY 'Account Number: ' ACCOUNT-NUMBER.
            DISPLAY 'Balance: ' BALANCE.
            DISPLAY '----------------------'.

            PERFORM GENERATE-REPORT.

            DISPLAY 'Bank Reconciliation Report'.
            DISPLAY '---------------------------'.
            DISPLAY 'Generated Report: ' REPORT-AMOUNT.
            DISPLAY 'Account Balance: ' BALANCE.
            DISPLAY 'Reconciliation Result: ' RECONCILIATION-RESULT.

            STOP RUN.

        GENERATE-REPORT.
            MOVE BALANCE TO REPORT-AMOUNT.

            COMPUTE RECONCILIATION-RESULT = BALANCE - REPORT-AMOUNT.
