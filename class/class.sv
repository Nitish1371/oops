class home;   //define class  

 //declare class properties  
  bit light;  
  int fan;  
  string switch;

 //define class method(task/function)  
 task open_electricity();  
   switch = "ON";
   $display("switch is %s so electricity is open",switch);  
 endtask  
endclass  

module check_electricity;  
 initial begin  
  home h1;   //creating handle  
  h1=new();   //Creating Object for the Handle  
  h1.light=1;
  h1.fan=1;
  h1.open_electricity;
  $display("light is %0d(ON) and fan is also %0d(ON)",h1.light,h1.fan);
end  
endmodule 
