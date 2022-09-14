//-------------------------------------------------------
//
//
//-------------------------------------------------------
class home;
  string switch;
  string fan = "ON";
  extern function void display();
endclass
function void home::display();
  string switch="ON";
  $display("Thw switch is %0s that's why fan is %0s",fan,switch);
endfunction

module extern_example;
home h;
initial begin
  h=new();
  h.display;
end
endmodule
