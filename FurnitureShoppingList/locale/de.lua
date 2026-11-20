-- Translated strings only: a string missing here shows in English (copy it from en.lua to translate it)
local strings = {
  SI_SHOPPINGLIST_CLEAR = "Leeren",
  SI_SHOPPINGLIST_OWN = "Bestand abziehen",
  SI_SHOPPINGLIST_PRINT = "Ausgeben",
  SI_SHOPPINGLIST_FULL = "Gesamtbedarf zeigen",
  SI_SHOPPINGLIST_IMPORT = "Liste importieren",
  SI_FSL_WINDOW_TITLE = "Einkaufsliste",
  SI_FSL_HEADER_ITEM = "GEGENSTAND",
  SI_FSL_HEADER_QUANTITY = "ANZ",
  SI_FSL_HEADER_MATERIAL = "NAME",
  SI_FSL_HEADER_NEED = "BEDARF",
  SI_FSL_HEADER_PRICE = "PREIS",
  SI_FSL_IMPORT_TITLE = "Einrichtungsliste importieren",
  SI_FSL_IMPORT_HINT = "Exportierte Zeilen aus FurnitureCatalogue oder Gegenstands-IDs einfügen. Jeder neue herstellbare Gegenstand wird einmal hinzugefügt.",
  SI_FSL_IMPORT_DO = "Importieren",

  SI_BINDING_NAME_SL_ADD = "Zur Einkaufsliste hinzufügen",
  SI_BINDING_NAME_SL_TOGGLE = "Einkaufsliste ein-/ausblenden",

  FSL_REQUIRES_FC = "[FurnitureShoppingList] Dieses Addon benötigt LibFurnitureCatalogue.",
  FSL_DB_NOT_READY = "[FurnitureShoppingList] Die Datenbank des Möbelkatalogs ist noch nicht bereit.",
  FSL_NOT_VALID_ITEM = "[FurnitureShoppingList] Dieser Gegenstand kann nicht hergestellt werden.",
  FSL_OUTPUT_TOO_LONG = "[FurnitureShoppingList] Die Einkaufsliste ist zu lang für eine Chatnachricht. Öffne eine leere Nachricht, um sie dort auszugeben.",
  FSL_ADD_TO_LIST = "Zur Einkaufsliste hinzufügen",
  SI_FSL_QUANTITY_TITLE = "Einkaufsliste",
  SI_FSL_QUANTITY_TEXT = "Wie viele <<1>>?",
  FSL_CHANGE_QUANTITY = "Anzahl ändern",
  FSL_REMOVE_ITEM = "Von der Einkaufsliste entfernen",
  FSL_IMPORT_RESULT = "Hinzugefügt <<1>>, doppelt <<2>>, unbekannt <<3>>, nicht herstellbar <<4>>",
}

for stringId, stringValue in pairs(strings) do
  ZO_CreateStringId(stringId, stringValue)
  SafeAddVersion(stringId, 1)
end
