<html>  
 <head>  
 <script language="javascript">  
  function print(){  
   var a=myform.name.value;  
   alert(a);  
  }  
 </script>  
 </head>  
 <body>  
  <form name="myform">  
   <input type="text" name="name" id="nn" />  
   <input type="button" name="button" value="获取" onclick="print()" />  
  </form>    
 </body>  
</html>  