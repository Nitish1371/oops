class home;
  bit light;
  int fan;

  function new (bit light, int fan);
   this.fan = fan;
   this.light =light;
  endfunction
 endclass
 
 module class_example;
  initial begin
   home home_1 = new(1,1);
   $display("Value of light = %0h, fan = %0h",home_1.light,home_1.fan);
  end
 endmodule  
