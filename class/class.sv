class parent_class;   //define class  


 //declare class properties  
  
    bit a;
    bit b;
    int c;


 //define class method(task/function)  
  
   task process_ex;    
    fork
     #2 $display("thread-1 is executed at %0t time",$time);
     #4 $display("thread-2 is executed at %0t time",$time);
   join
    #1 $display("thread -3 is executed at %0t time",$time);
   endtask  

   function int Add (int a,int b);
      int sum;
      sum = a+b;
      return sum;

   endfunction

endclass

  parent_class p1;             //creating handle
  
  module class_ex;  
      int x;
     initial begin

      p1=new() ;           //Creating Object for the Handle 
      p1.c = 4;            // access the properties
      p1.process_ex;       // access the method
      x = p1.Add(2,3);
      $display("after using the access method the value of c =%0d",p1.c); 
      $display("sum=%0d",x);
   end  
  endmodule
