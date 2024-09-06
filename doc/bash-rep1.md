# BASH Scripting Repetition

1. Erstelle eine neue ausführbare Datei mit Namen "city.sh" `touch city.sh`
2. Mache die Datei ausführbar. `chmod +x city.sh`
3. Öffne Visual Studio Code und darin die city.sh Datei. `code city.sh`
4. Füge die erste "She-Bang" Zeile ein, damit es von BASH ausgeführt wird. `#!/bin/bash`
5. Füge eine Ausgabe hinzu: "Hallo Zug": `echo "Hallo Zug"`
6. Führe die "city.sh" Datei in einem Terminal aus: `./city.sh`

### Erweiterungen

1. Verwende eine Variable namens "city", in der du die Stadt speicherst und verwende sie in der Ausgabe. `city="Zug"` und `echo "Hallo $city"`
2. Entferne die Variablen Definition "citiy=Zug" und ersetze sie mit einer Benutzereingabe: `echo "Wo wohnst du?"`  und `read city`
3. Füge eine Bedingung ein, füge eine besondern Gruss hinz, wenn der Benutzer deine Lieblingsstadt eingibt.

```bash
#!/bin/bash


echo "Wo wohnst du?"
read city
echo "Hallo $city !"

if [[ "$city" == "Sursee" ]]; then
  echo "Best Town Ever!"
fi
```

1. Erstelle eine Funktion mit Namen "myCity" in der du deine Logik einpackst. Und rufe sie auf.

```bash
#!/bin/bash

myCity(){
  echo "Wo wohnst du?"
  read city
  echo "Hallo $city !"
  
  if [[ "$city" == "Sursee" ]]; then
    echo "Best Town Ever!"
  fi
}

myCity

```


