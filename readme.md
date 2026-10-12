# Windows Volume Max + Video Launcher

Prosty skrypt PowerShell dla systemu Windows, który po uruchomieniu zwiększa głośność systemową do maksimum i otwiera wybrany film z Internetu w domyślnej przeglądarce.

## Funkcje

- 🔊 Zwiększa głośność systemową do maksimum.
- 🎬 Otwiera wybrany film na YouTube.
- 🪟 Nie wymaga instalowania dodatkowych programów.
- ⚙️ Umożliwia zmianę linku do filmu bezpośrednio w skrypcie.

## Wymagania

- Windows 10 lub Windows 11.
- Windows PowerShell.
- Połączenie z Internetem.
- Git — jeśli chcesz sklonować repozytorium.

## Instalacja

### 1. Sklonuj repozytorium

Otwórz PowerShell lub Windows Terminal i wykonaj polecenie:

```powershell
git clone https://github.com/USERNAME/REPOSITORY.git
```

Zamień `USERNAME` na swoją nazwę użytkownika GitHub, a `REPOSITORY` na nazwę repozytorium.

Przejdź do katalogu projektu:

```powershell
cd REPOSITORY
```

Jeśli repozytorium jest już pobrane, otwórz jego folder w terminalu.

### 2. Uruchom skrypt

Wykonaj następujące polecenie:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File ".\activate.ps1"
```

Skrypt spróbuje zwiększyć głośność systemową i otworzy wskazany film w domyślnej przeglądarce.

### 3. Alternatywna metoda uruchomienia

Możesz również otworzyć PowerShell w folderze projektu i wpisać:

```powershell
.\activate.ps1
```

Jeśli system zablokuje uruchomienie skryptu, użyj polecenia z poprzedniego punktu.

## Konfiguracja filmu

Aby zmienić otwierany film, otwórz plik `activate.ps1` w edytorze tekstu.

Znajdź następującą linię:

```powershell
Start-Process "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
```

Zamień adres URL na link do wybranego filmu, na przykład:

```powershell
Start-Process "https://www.youtube.com/watch?v=TWÓJ_LINK"
```

Zapisz plik i uruchom skrypt ponownie.

## Automatyczne uruchamianie przy logowaniu do Windows

Jeśli chcesz, aby skrypt uruchamiał się automatycznie po zalogowaniu do systemu:

1. Naciśnij `Win + R`.
2. Wpisz `shell:startup`.
3. Naciśnij Enter.
4. Utwórz skrót do skryptu lub skrót uruchamiający PowerShell.
5. W polu lokalizacji skrótu wpisz:

   ```text
   powershell.exe -NoProfile -ExecutionPolicy Bypass -File "C:\SCIEZKA\DO\activate.ps1"
   ```

6. Zastąp `C:\SCIEZKA\DO\activate.ps1` rzeczywistą ścieżką do pliku.

Od tej chwili skrypt będzie uruchamiany przy logowaniu do Windows.

## Struktura projektu

```text
project/
├── activate.ps1
└── README.md
```

## Ważne informacje

- Skrypt wykorzystuje symulację naciśnięć klawisza zwiększania głośności. Nie gwarantuje to ustawienia dokładnie 100% w każdym środowisku.
- Odtwarzanie filmu może wymagać ręcznego kliknięcia przycisku odtwarzania. Zależy to od ustawień przeglądarki i serwisu.
- Opcja `-ExecutionPolicy Bypass` dotyczy uruchomienia tego polecenia i nie zmienia na stałe globalnej polityki wykonywania skryptów.
- Uruchamiaj wyłącznie skrypty, których kod znasz i którym ufasz.

## Licencja

Możesz dodać plik `LICENSE` i wybrać licencję dla projektu, np. MIT, jeśli chcesz zezwolić innym na korzystanie z kodu, jego modyfikowanie i rozpowszechnianie.
