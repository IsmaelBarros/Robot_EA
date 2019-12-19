void OnTick()
  {
  
  double ask,bid,last;
  double smaArray[];
  int smaHandle;
  
  ask = SymbolInfoDouble(_Symbol,SYMBOL_ASK);
  bid = SymbolInfoDouble(_Symbol,SYMBOL_BID);
  last = SymbolInfoDouble(_Symbol,SYMBOL_LAST);
  
  smaHandle = iMA(_Symbol,_Period,21,0,MODE_EMA,PRICE_CLOSE);
  ArraySetAsSeries(smaArray, true);
  CopyBuffer(smaHandle,0,0,2,smaArray);
  
  if(last > smaArray[0]){
      Comment("Compra");
  
  }else if(last < smaArray[1]){
      Comment("venda");
  }
    
  }
