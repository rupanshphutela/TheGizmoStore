/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function f1()
{
    var f=0;
    var s=document.login.getElementsByTagName('input');
    
    for(var i=0;i<s.length;i++)
        {
            if(s[i].type=='text'||s[i].type=='password')
                {
                    var v=document.getElementById(s[i].id).value;
                    if(v=='')
                        {
                            
                            document.getElementById(s[i].id).style.backgroundColor='red';
                            f=1;
                        }
                    
                }
        }
        if(f==1)
                        
    {
          return false;
          }
                    else
                    {
                        return true;
                    }
       
}

function f2()
{
    var f=0;
    var s=document.signup.getElementsByTagName('input');
    
    for(var i=0;i<s.length;i++)
        {
            if(s[i].type=='text'||s[i].type=='password')
                {
                    var v=document.getElementById(s[i].id).value;
                    if(v=='')
                        {
                            
                            document.getElementById(s[i].id).style.backgroundColor='red';
                            f=1;
                        }
                    
                }
        }
        if(f==1)
                        
    {
          return false;
          }
                    else
                    {
                        return true;
                    }
       
}

