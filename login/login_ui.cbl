       IDENTIFICATION DIVISION.
       PROGRAM-ID. LoginUI.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-USERNAME    PIC X(20).
       01 WS-PASSWORD    PIC X(20).

       SCREEN SECTION.
       01 LOGIN-SCREEN.
          05 BLANK SCREEN.
          05 LINE 3 COLUMN 10 VALUE "Login Screen" FOREGROUND-COLOR 1.
          05 LINE 5 COLUMN 10 VALUE "Username: ".
          05 LINE 5 COLUMN 20 PIC X(20) TO WS-USERNAME.
          05 LINE 7 COLUMN 10 VALUE "Password: ".
          05 LINE 7 COLUMN 20 PIC X(20) TO WS-PASSWORD USING LOW-VIDEO.

       PROCEDURE DIVISION.
       DISPLAY-SCREEN.
           DISPLAY LOGIN-SCREEN.
           ACCEPT LOGIN-SCREEN.
           IF WS-USERNAME = "admin" AND WS-PASSWORD = "password"
               DISPLAY "Login Successful!"
           ELSE
               DISPLAY "Invalid Credentials!".
           STOP RUN.
