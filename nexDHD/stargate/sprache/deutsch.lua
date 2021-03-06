-- pastebin run -f YVqKFnsP
-- nexDHD von Nex4rius
-- https://github.com/Nex4rius/Nex4rius-Programme/tree/master/nexDHD

local sprachen = {
  dezimalkomma              = true,
  pruefeKomponenten         = "Prüfe Komponenten" .. "\n",
  redstoneOK                = "- Redstonekarte        ok - optional",
  redstoneFehlt             = "- Redstonekarte        fehlt - optional",
  modemOK                   = "- WLAN-Karte           ok - optional",
  modemFehlt                = "- WLAN-Karte           fehlt - optional",
  InternetOK                = "- Internet             ok - optional",
  InternetFehlt             = "- Internet             fehlt - optional",
  SensorOK                  = "- World Sensor         ok - optional",
  SensorFehlt               = "- World Sensor         fehlt - optional",
  LampeOK                   = "- Colorful Lamp        ok - optional",
  LampeFehlt                = "- Colorful Lamp        fehlt - optional",
  gpuOK2T                   = "- GPU Tier II          ok",
  gpuOK3T                   = "- GPU Tier III         ok - Tier II ist ausreichend",
  gpuFehlt                  = "- GPU Tier II          fehlt",
  BildschirmOK              = "- Bildschirm           ok",
  BildschirmT1              = "- Bildschirm Tier II   fehlt",
  BildschirmFalsch          = function(x, y) return string.format("- Bildschirm           Bildschirmformat %s:%s - optimal 4:3", x, y) end,
  BildschirmFalschT1        = function(x, y) return string.format("- Bildschirm           Bildschirmformat %s:%s - optimal 4:3" .. "\n" .. "- Bildschirm           <FEHLER> Tier II benötigt", x, y) end,
  StargateOK                = "- Stargate             ok",
  StargateFehlt             = "- Stargate             fehlt",
  inventory_controllerOK    = "- Inventory Controller ok" .. "\n",
  inventory_controllerFehlt = "- Inventory Controller fehlt" .. "\n",
  derzeitigeVersion         = "\n" .. "Derzeitige Version:    ",
  verfuegbareVersion        = "\n" .. "Verfügbare Version:    ",
  betaVersion               = "Beta-Version:          ",
  aktualisierenBeta         = "\n" .. "Aktualisieren: Beta-Version" .. "\n",
  aktualisierenFrage        = "\n" .. "Aktualisieren? ja/nein",
  aktualisierenJa           = "\n" .. "Aktualisieren: Ja" .. "\n",
  aktualisierenNein         = "\n" .. "Antwort: ",
  aktualisierenJetzt        = "\n" .. "\n" .. "\n" .. "Aktualisieren..." .. "\n",
  aktualisierenGleich       = "nexDHD wird automatisch aktualisiert, sobald es untätig ist.",
  laden                     = "\n" .. "Laden...",
  ja                        = "ja",
  nein                      = "nein",
  hilfe                     = "hilfe",
  Adressseite               = "Adressseite #",
  Unbekannt                 = "Unbekannt",
  waehlen                   = "Wähle ",
  energie1                  = "Energie ",
  energie2                  = ":       ",
  keineVerbindung           = "Stargate nicht verbunden",
  Steuerung                 = "Steuerung",
  IrisSteuerung             = "Iris Steuerung ",
  an_aus                    = "An/Aus",
  AdressenBearbeiten        = "Bearbeite Adressen",
  beenden                   = "Beenden",
  nachrichtAngekommen       = "Nachricht: ",
  RedstoneSignale           = "Redstonesignale",
  RedstoneWeiss             = "weiß: Status nicht Inaktiv",
  RedstoneRot               = "rot: eingehende Verbindung",
  RedstoneGelb              = "gelb: Iris geschlossen",
  RedstoneSchwarz           = "schwarz: IDC akzeptiert",
  RedstoneGruen             = "grün: verbunden",
  versionName               = "Version: ",
  fehlerName                = "<FEHLER>",
  SteuerungName             = "zeige Infos",
  lokaleAdresse             = "Lokale Adresse:   ",
  zielAdresseName           = "Zieladresse:      ",
  zielName                  = "Zielname:         ",
  statusName                = "Status:           ",
  IrisName                  = "Iris:             ",
  IrisSteuerung             = "Iris Steuerung:   ",
  IDCakzeptiert             = "IDC:              Akzeptiert",
  IDCname                   = "IDC:              ",
  chevronName               = "Chevron:          ",
  richtung                  = "Richtung:         ",
  autoSchliessungAus        = "Autoschließung:   Aus",
  autoSchliessungAn         = "Autoschließung:   ",
  zeit1                     = "Zeit:             ",
  zeit2                     = "Zeit:",
  atmosphere                = "Atmosphäre:       ",
  atmosphere2               = "Atmosphäre: ",
  atmosphereJA              = "gut",
  atmosphereNEIN            = "gefährlich",
  abschalten                = "Abschalten",
  oeffneIris                = "Öffne Iris",
  schliesseIris             = "Schließe Iris",
  IDCeingabe                = "IDC eingeben",
  naechsteSeite             = "Nächste Seite",
  vorherigeSeite            = "Vorherige Seite",
  senden                    = "Sende: ",
  aufforderung              = "Aufforderung",
  manueller                 = "manueller",
  Eingriff                  = "Eingriff",
  stargateName              = "abschalten",
  stargateAbschalten        = "Stargate",
  aktiviert                 = "aktiviert",
  zeigeAdressen             = "zeige Adressen",
  EinstellungenAendern      = "Einstellungen ändern",
  irisNameOffen             = "Offen",
  irisNameOeffnend          = "Offen",
  irisNameGeschlossen       = "Geschlossen",
  irisNameSchliessend       = "Schließend",
  irisNameOffline           = "Offline",
  irisKontrolleNameAn       = "An",
  irisKontrolleNameAus      = "Aus",
  RichtungNameEin           = "Eingehend",
  RichtungNameAus           = "Ausgehend",
  StatusNameUntaetig        = "Untätig",
  StatusNameWaehlend        = "Wählend",
  StatusNameVerbunden       = "Verbunden",
  StatusNameSchliessend     = "Schließend",
  Neustart                  = "Neustart",
  IrisSteuerungName         = "Steuerung",
  ausschaltenName           = "Herunterfahren...",
  redstoneAusschalten       = "Redstone ausschalten: ",
  colorfulLampAusschalten   = "ColorfulLamp ausschalten: ",
  verarbeiteAdressen        = "Verarbeite Adressen: ",
  Hilfetext                 = "Verwendung: stargate [...]" .. "\n" .. "ja" .. "\t" .. "-> Aktualisierung zur stabilen Version" .. "\n" .. "nein" .. "\t" .. "-> keine Aktualisierung" .. "\n" .. "beta" .. "\t" .. "-> Aktualisierung zur Beta-Version" .. "\n" .. "hilfe" .. "\t" .. "-> zeige diese Nachricht nochmal",
  Sprachaenderung           = "Sprachänderung ab nächstem Neustart",
  entwicklerName            = "Entwickler:",
  IDCgesendet               = "sende IDC",
  DateienFehlen             = "Dateien fehlen" .. "\n" .. "Alles neu herunterladen?",
  speichern                 = 'zum Speichern drücke "Strg + S"',
  schliessen                = 'zum Schließen drücke "Strg + W"',
  IDC                       = "Iris Deaktivierungscode",
  autoclosetime             = "in Sekunden -- false für keine automatische Schließung",
  RF                        = "zeige Energie in RF anstatt in EU",
  autoUpdate                = "aktiviere automatische Aktualisierungen",
  iris                      = "Trage deine eigenen Stargate Adressen hier ein",
  keinIDC                   = "für keinen Iris Code",
  nichtsAendern             = "verändere nichts ab hier",
  Update                    = "Aktualisierung?",
  UpdateBeta                = "Aktualisierung Beta?",
  TastaturFehlt             = "Tastatur wird benötigt",
  bereitsNeusteVersion      = "keine Aktualisierungen gefunden",
  autoUpdate                = "automatische Aktualisierungen sind aktiviert",
  akzeptiert                = "akzeptiert",
  StargateName              = "der Name dieses Stargates",
  FrageStargateName         = "Gib dem Stargate einen Namen",
  debug                     = "zum debuggen",
  keineEnergie              = "<keine Energie>",
  StargateNichtKomplett     = "Stargate ist funktionsunfähig",
  logbuch                   = "zeige Logbuch",
  logbuchTitel              = "Logbuch",
  zeigeLog                  = "zeige Fehlerlog",
  Legende                   = "Legende",
  neueAdresse               = "neue Adresse",
  zuvielEnergie             = "<Energie zu groß>",
  LegendeUpdate             = "Update",
  neuerName                 = "neuer Name",
  keinInternet              = "keine Internetkarte vorhanden",
  Adresseingabe             = "Adresse eingeben",
  Eingeben_Adresse          = "neue Adresse",
  Eingeben_Name             = "Name für ",
  Eingeben_idc              = "IDC für ",
  richtige_Adresse          = "neue Adresse wurde hinzugefügt",
  falsche_Adresse           = "die Adresse ist ungültig",
  unten                     = "unten",
  oben                      = "oben",
  hinten                    = "hinten",
  vorne                     = "vorne",
  rechts                    = "rechts",
  oder                      = "oder",
  links                     = "links",
  Theme                     = "normal, dunkel, schwarz_weiss",
  kein_senden               = "true -> keine Adressen senden",
  IDC_blockiert             = "Zu viele Versuche - IDC blockiert",
  Port                      = "Standard 645",
  Reichweite                = "Stärke des WLAN-Signals",
  anwahl_fehler             = "Unbekannter Fehler beim Anwahlvorgang",
  cloud                     = "Adressen in die Cloud hoch- und runterladen",
  cloud_arbeit              = "Die Adressen werden mit der Cloud synchronisiert.",
  cloud_fertig              = "Synchronisation abgeschlossen",
  stargate_beschaeftigt     = "Das Stargate ist bereits aktiv",
  AUNIS_adressen_eingeben   = "Die Symbole der Adresse müssen mit einem '-' getrennt sein.",
}

sprachen.side               = string.format("%s, %s, %s, %s, %s %s %s", sprachen.unten, sprachen.oben, sprachen.hinten, sprachen.vorne, sprachen.rechts, sprachen.oder, sprachen.links)

return sprachen
