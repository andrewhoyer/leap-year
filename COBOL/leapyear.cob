IDENTIFICATION DIVISION.
PROGRAM-ID. LeapYear.

DATA DIVISION.
WORKING-STORAGE SECTION.
        01  REASON      PIC X(80).
        01  TARGET-YEAR PIC 9(4).
        01  X           PIC 9(4).
        01  Y           PIC 9(4).
        01  QUOT        PIC 9(4).
        01  PRODUCT     PIC 9(4).
        01  MODULO      PIC 9(4).
        01  DIV4        PIC 9(4).
        01  DIV100      PIC 9(4).
        01  DIV400      PIC 9(4).
        01  IS-LEAP     PIC X(1) VALUE 'F'.

PROCEDURE DIVISION.
MAIN-PARAGRAPH.
        MOVE 1900 TO TARGET-YEAR
        PERFORM IS-LEAP-YEAR
        DISPLAY TARGET-YEAR ' Result: ' IS-LEAP ' Reason: ' REASON

        MOVE 2000 TO TARGET-YEAR
        PERFORM IS-LEAP-YEAR
        DISPLAY TARGET-YEAR ' Result: ' IS-LEAP ' Reason: ' REASON

        MOVE 2023 TO TARGET-YEAR
        PERFORM IS-LEAP-YEAR
        DISPLAY TARGET-YEAR ' Result: ' IS-LEAP ' Reason: ' REASON

        MOVE 2024 TO TARGET-YEAR
        PERFORM IS-LEAP-YEAR
        DISPLAY TARGET-YEAR ' Result: ' IS-LEAP ' Reason: ' REASON

        STOP RUN.

CALC-MOD SECTION.
        *> Modulo calculation
        DIVIDE X BY Y GIVING QUOT
        MULTIPLY QUOT BY Y GIVING PRODUCT
        SUBTRACT PRODUCT FROM X GIVING MODULO.

IS-LEAP-YEAR SECTION.
        *> Reset global to false
        MOVE 'F' TO IS-LEAP
        
        *> Div 4 mod
        MOVE TARGET-YEAR TO X
        MOVE 4 TO Y
        PERFORM CALC-MOD
        MOVE MODULO TO DIV4

        *> Div 100 mod
        MOVE TARGET-YEAR TO X
        MOVE 100 TO Y
        PERFORM CALC-MOD
        MOVE MODULO TO DIV100

        *> Div 400 mod
        MOVE TARGET-YEAR TO X
        MOVE 400 TO Y
        PERFORM CALC-MOD
        MOVE MODULO TO DIV400

        *> Main Algorithm
        IF DIV4 = 0
            IF DIV100 = 0
                IF DIV400 = 0
                    MOVE 'T' TO IS-LEAP
                END-IF
            ELSE
                MOVE 'T' TO IS-LEAP
            END-IF
        END-IF

        *> Reason
        IF IS-LEAP = 'T'
            IF DIV4 = 0
                MOVE 'Divisible by 4' TO REASON
            END-IF
            IF DIV400 = 0
                MOVE 'Divisible by 4, 400 year rule exemption to pass'
                TO REASON
            END-IF
        ELSE
            IF DIV4 = 0 AND DIV100 = 0
                MOVE 'Divisible by 4, 100 year rule exemption to fail'
                TO REASON
            ELSE
                MOVE 'Not divisible by 4' TO REASON
            END-IF
        END-IF.
