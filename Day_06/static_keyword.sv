class packet;
  static byte pkts_id;

  static byte no_of_pkts_crtd;

  function new();
     no_of_pkts_crtd++;
  endfunction

  static function void display_pkts_crtd();
     $display("\tPacket id is %0d",pkts_id);
     $display("\t%0d packets created",no_of_pkts_crtd);
  endfunction

endclass

module static_properties;
packet pkt[3];

 initial begin
    foreach(pkt[i])begin
      pkt[i]=new();
    end
    pkt[0].display_pkts_crtd();
  end
endmodule

/*
OUTPUT

Packet id is 0
# 	3 packets created

*/
