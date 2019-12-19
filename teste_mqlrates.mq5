void OnTick()
  {
 
 double preco; 
 MqlRates rates[];
 
 ArraySetAsSeries(rates,true);
 
 CopyRates(_Symbol,_Period,0,10,rates);
 
 preco = NormalizeDouble(rates[1].close,_Digits);

Comment("valor de feachamento do candle : ",preco);
   
  }
