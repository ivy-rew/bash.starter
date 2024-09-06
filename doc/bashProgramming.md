# Programmieren/Scripten mit BASH

BASH = Bourne Again Shell ... dein standard Terminal unter Linux.

## Erstes Script

Scripts helfen uns dabei Terminal Befehle zu automatisieren. Wir erstellen unser erstes "Hallo Welt" Script.

1. Erstelle eine neue Datei `hello.sh`
2. Auf der ersten Zeile legst du fest, wie das Programm ausgeführt werden muss. `#!/bin/bash`
3. Füge eine Ausgabe ein mit dem Text "Hallo Welt" `echo "Hallo Welt"`
4. Mache die Datei ausführbar `chmod +x hello.sh`
5. Führe die Datei im Terminal aus. `./hello.sh`

```bash
#!/bin/bash

echo "Hallo Welt"
```

## Erweiterungen

### Variablen

1. Erstellen eine Variable mit dem Namen "user", in welchem wir den Namen des Benutzers speichern. `user=Fritz`
2. Verwende die `user` Variable in deinem Gruss damit das Programm "Hallo Fritz" ausgibt. Variablen kannst du mit. `echo "Hallo $user"`

### Benutzer Eingaben

1. Fragen den Benutzer nach seinem Namen: `echo "Wie heisst du?"`
2. Ermöglich dem Benutzer eine Eingabe seines Benutzers und weise den eingegebenen Wert der Variable $user zu.  `read user`

```bash
#!/bin/bash

echo "Wie heisst du?"
read user
echo "Hallo $user"
```

### Bedingungen

1. Teile dem Benutzer eine speziellen Gruss mit, wenn er den Namen "Fritz" hat. 

```bash
#!/bin/bash

echo "Wie heisst du?"
read user
echo "Hallo $user"
if [[ "$user" == "Fritz" ]]; then
 echo "Schön, dass du da bist!"
fi
```

### Funktionen

Funktionen helfen uns zusammengehörende Befehle zu vereinfachen.

1. Erstelle eine Funktion mit namen "sayHello" und rufe sie auf.

```bash
#!/bin/bash

sayHello(){
  echo "Wie heisst du?"
  read user
  echo "Hallo $user"
  if [[ "$user" == "Fritz" ]]; then
   echo "Schön, dass du da bist!"
  fi
}

sayHello
```

Funktionen machen Programmteile wiederverwendbar. Rufe zweimal 'sayHello' auf. Was passiert?

### Programme aufrufen

Scripts können andere Programme aufrufen. Du hast bereits `echo` und `read` so verwendet. 

1. Lade das Programm 'espeak' auf deinen Rechner. `sudo apt install espeak`
2. Probiere das Programm im Terminal aus. Es kann deinen Text in Sprache verwanden. Also drehe den Lautsprecher auf. `espeak "Hello computer"`
3. Du musst dem Programm beibringen, dass es Deutsch sprechen soll mit dem '-v' Parameter. `espeak -v german "Hallo mein lieber Rechner"`
4. Binde das Programm in deinem Script ein, damit es den Benutzer auf den Lautsprechern begrüsst.

```bash
#!/bin/bash

sayHello(){
  echo "Wie heisst du?"
  read user
  welcome="Hallo $user"
  echo "$welcome"
  espeak "$welcome"
  if [[ "$user" == "Fritz" ]]; then
   echo "Schön, dass du da bist!"
  fi
}

sayHello
```
