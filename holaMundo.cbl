      ******************************************************************
      * Author: Ceferino Mulet
      *
      * Date: 04/11/2022
      * Purpose: Usando Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTOY_PROBANDO.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUMERO PIC 99 VALUE 70.
       01  SALUDO2 PIC X(18) VALUE "ESTOY USANDO COBOL".
       01  NUM1 PIC 9(4).
       01  NUM2 PIC 9(4).
       01  RESUL PIC 9(5).
       01  WSV-PERSONA.
       05  WSV-NOMBRE PIC X(10).
       05  WSV-APELLIDO PIC X(10).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            Display "otra forma".
            DISPLAY "Hello world"
            DISPLAY NUMERO.
            DISPLAY SALUDO2.
            DISPLAY "ESTOY PROBANDO"
            DISPLAY "INTRODUCE UN NUMERO:".
            ACCEPT NUM1.
            DISPLAY "INTRODUCE OTRO NUMERO:".
            ACCEPT NUM2.
            ADD NUM1 TO NUM2 GIVING RESUL.
            DISPLAY "EL RESULTADO ES:"
            DISPLAY RESUL
            IF RESUL > 50
                DISPLAY "EL RESULTADO ES MAYOR DE 50".
      *VIENDO RUTINAS
            RUTINA01.
                DISPLAY "ESTA ES LA RUTINA01".
                PERFORM RUTINA03.
            RUTINA02.
                DISPLAY "ESTA ES LA RUTINA02".
                PERFORM RUTINA04.
            RUTINA03.
                DISPLAY "ESTA ES LA RUTINA03".
                PERFORM RUTINA02.
            RUTINA04.
                DISPLAY "ESTA ES LA RUTINA04".
                DISPLAY "FINALIZA EL PROGRAMA".
            STOP RUN.
       END PROGRAM ESTOY_PROBANDO.
