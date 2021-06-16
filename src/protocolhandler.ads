package ProtocolHandler is

   Timeout_Exception : Exception;

   function Run return Boolean;

   function Get_Accumulation return Integer;

end ProtocolHandler;
