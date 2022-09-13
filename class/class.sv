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
     home home_1;             //creating handle  
     home_1=new();            //Creating Object for the Handle 
     home_1.fan=1;            // access the properties
     home_1.light=1;
     home_1.open_electricity;          // access the method
      $display("light=%0d fan=%0d",home_1.light,home_1.fan);
   end  
  endmodule
