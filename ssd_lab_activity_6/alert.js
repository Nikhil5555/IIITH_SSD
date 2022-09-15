function msg(){  
    let inputName = document.getElementById("mname");
    let inputMail = document.getElementById("femail");
    let inputusername = document.getElementById("seruser");
    let inputserpas = document.getElementById("serpass");
    let inputsercon = document.getElementById("serpassc");
    let inputteamlead = document.getElementById("teamlead");

    //remaining 
    let total = ('Name:'+inputName.value + '\n' + 'Email:'+inputMail.value + '\n' + 'Username:'+inputusername.value+ '\n'+'Team Lead:'+ inputteamlead.value);
    alert(total);  
   }  

   function uservalid()
   {
    let inputusername = document.getElementById("seruser").value;
    let pattern="(?=.*\d)(?=.*[A-Z]).*";
    if(/(?=.*\d)(?=.*[A-Z]).*/.test(inputusername))
    document.getElementById("lol").innerHTML="Valid Username";
    else{
        document.getElementById("lol").innerHTML="Invalid Username";
    }
   }
   function passcheck()
   {
    var userpass = document.getElementById("serpass").value;
    var conpass = document.getElementById("serpassc").value;
    if(userpass!=conpass)
    document.getElementById("lol2").innerHTML="Password doesn't match";
    else{
        document.getElementById("lol2").innerHTML="Valid Password";

   }
}
function dark() {
    var element = document.body;
    element.classList.toggle("dark-mode");
  }
  function detect()
  {
  $(document).keypress("m",function(e) {
    if(e.ctrlKey)
      dark();
  });}