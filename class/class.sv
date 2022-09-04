class home;   //define class  

//declare class properties  
  
    bit light;  
    int fan;  
    logic door;    
   
//define class method(task/function)  
  
  task open_electricity();  
     light=1;  
     fan=1;
     $display("electricity is open");
    endtask  
   endclass  

  module check_electricity;  
   initial begin  
     home home_1;   //creating handle  
     home_1=new();   //Creating Object for the Handle  
     home_1.open_electricity;
   end  
  endmodule
