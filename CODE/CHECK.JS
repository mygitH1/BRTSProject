function ff_uname(input)
{
   if((input.name=="uname") && (input.value.length==0))
   {
     alert("Invalid Username:");
     input.value =" ";
     input.focus();
   }
   else
   {
        var str = input.value;
        len = input.value.length;
        for(i=0;i<len;i++)
        {
            var k = parseInt(str.charAt(i));
            if(!isNaN(k))
            {
             alert("Invalid Username:");
             input.value="";
             input.focus();
             break;
            }
        }
   }
}

function f1_pwd(input)
{
  if((input.name =="pwd")&&(input.value.length==0))
  {
     alert("Password Field can't Be Empty:");
     input.value="";
     input.focus();
   }
 }

function f_fname(input)
{
  if((input.name == "fname")&&(input.value.length==0))
   {
     alert("Invalid Firstname:");
     input.value="";
     input.focus();
   }
    else
    {
        var str = input.value;
        len = input.value.length;
        for(i=0;i<len;i++)
        {
            var k = parseInt(str.charAt(i));
            if(!isNaN(k))
            {
             alert("Invalid Firstname:");
             input.value="";
             input.focus();
             break;
             }
        }
     }
}

function f_lname(input)
{

    if((input.name=="lname") && (input.value.length==0))
    {
     alert("Invalid Lastname:");
     input.value="";
     input.focus();
    }
    else
    {
        var str = input.value;
        len = input.value.length;
        for(i=0;i<len;i++)
        {
            var k = parseInt(str.charAt(i));
            if(!isNaN(k))
            {
             alert("Invalid Lastname:");
             input.value="";
             input.focus();
             break;
             }
        }
     }
}

 function f_add1(input)
 {
    if((input.name == "add1")&&(input.value.length==0))
    {
     alert("Address field should Not be Empty:");
     input.value =" ";
     input.focus();
    }
 }                                                            
 function f_add2(input)
 {
    if((input.name == "add2")&&(input.value.length==0))
    {
     alert("Address field should Not be Empty:");
     input.value =" ";
     input.focus();
    }
 }
 function f_pcode(input)
 {
   if((input.name == "pcode")&&(input.value.length==0))
   {
     alert("Invalid PinCode:");
     input.value =" ";
     input.focus();
    }
    else
    {
        var str = input.value;
        len = input.value.length;
        for(i=0;i<len;i++)
        {
            var k = parseInt(str.charAt(i));
            if(isNaN(k))
            {
             alert("Invalid PinCode:");
             input.value="";
             input.focus();
             break;
             }
        }
     }
}
     
 function f_phone(input)
 {
   if((input.name == "phone")&&(input.value.length==0))
   {
     alert("Invalid PhoneNo:");
     input.value =" ";
     input.focus();
    }
    else
    {
        var str = input.value;
        len = input.value.length;
        for(i=0;i<len;i++)
        {
            var k = parseInt(str.charAt(i));
            if(isNaN(k))
            {
             alert("Invalid PhoneNo:");
             input.value="";
             input.focus();
             break;
             }
        }
     }
}

function f_mail(input)
{
  var str = input.value;
  var cnt = 0;
  var spc = 0;
  var dot = 0;
  var len=input.value.length;
  for(i=0;i<len;i++)
  {
      if(str.charAt(i)=="@")
         cnt++;
      if(str.charAt(i)==" ")
        spc++;
      if(str.charAt(i)==".")
        dot++;
   }
         if(cnt==0||cnt>1||spc!=0||dot==0)
         {
            alert("Invalid mail address. Your Mail id should have an @,no space and a '.'");
            input.value="";
            input.focus();
         }
}
