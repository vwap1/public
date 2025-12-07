
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+

#property strict

void OnStart() {

   int handle = FileOpen(MQLInfoString(MQL_PROGRAM_NAME) + ".log", FILE_TXT | FILE_ANSI | FILE_WRITE);

   int total = SymbolsTotal(false);

   for (int i = 0; total > i; i++) {

      string symbol = SymbolName(i, false);

      // if (-1 == StringFind(symbol, ".a")) {
         string text = symbol + " : " + SymbolInfoString(symbol, SYMBOL_DESCRIPTION);
         FileWrite(handle, text);
      // }
   }

   FileClose(handle);
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
