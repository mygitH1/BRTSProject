function f_uid(input)
{
   if((input.name=="uid")&&(input.value.length==0))
   {
         alert("INVALID USERID:");
         input.value=" ";
         input.focus();
   }
    else
    {
      var str = input.value;
      var len = input.value.length;
      for(i=0;i<len;i++)
      {
          var k = parseInt(str.charAt(i));
          if(!isNaN(k))
          {
             alert ("INVALID USERID:");
             input.value= " " ;
             input.focus();
             break;
           }
       }

     }
 }

 function f_pwd(input)
 {
    if((input.name=="pwd")&&(input.value.length==0))
    {
       alert ("PassWord Field Cannot Be Empty:");
       input.value=" ";
       input.focus();
     }
 }
