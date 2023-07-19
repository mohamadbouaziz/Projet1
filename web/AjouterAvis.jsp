<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <title>Sample HTML Code - NewsLetter Form</title>
  <style>
	@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap");

body {
      
      padding: 5rem 0;
      font-family: "Poppins", sans-serif;
      font-size: 1rem;
      color: black;
      background-color: white;
      align-items:center;
}

.maine{
    text-align: center;
    
}
.intro {
      text-align: center;
      width: 700px;
      margin-bottom: 3rem;
      display: block;
   
}


.title {
      padding: 1rem;
      font-size: 1.75rem;
      text-align: center;
}

.sign-up {
      width: 700px;
       box-shadow: 0 3rem 6rem rgba(0, 0, 0, 0.1);
      height: 400px;
      margin-left: 415px;
}

.sign-up-para {
      padding: 1rem 5rem;
      margin-bottom: 1.75rem;
      border-radius: 0.8rem;
      box-shadow: 0 8px 0px rgba(0 0 0/0.15);
      background-color: #ffffff;
      text-align: center;
}

.sign-up-form {
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 1.2rem;
      border-radius: 0.8rem;
      box-shadow: 0 8px 0px rgba(255, 255, 255, 0.15);
      color: #ffffff;
      background-color: white;
      margin-right: 20px;
}

.form-input {
      width: 100%;
      margin-bottom: 1em;
      position: relative;
      margin-bottom:6px;
      
           
}

.form-input1 {
      width: calc(100% - 20px);
      position: relative;
      border: 2px solid #b9b6d3;
      height:40px;
      border-radius: 0.5em;
      color: gray;
      padding: 10px;
      resize: none;
}
.form-input2 {
      width: calc(100% - 20px);
      position: relative;
      border: 2px solid #b9b6d3;
      height:20px;
      border-radius: 0.5em;
      color: gray;
      padding: 10px;
      resize: none;
}

.form-input span {
      position: absolute;
      top: 10%;
      right: 0;
      padding: 0 0.65em;
      border-radius: 50%;
      background-color: #ff7a7a;
      color: white;
      display: none;
      
}

.form-input.warning span {
      display: inline-block;
}

.form-input input {
      width: 100%;
      padding: 10px;
      border: 2px solid rgba(185, 182, 211, 0.25);
      border-radius: 0.5em;
      font-weight: 600;
      color: #3e3c49;
      font-style: italic;
}

.form-input select {
      width: 100%;
      padding: 10px;
      border: 2px solid rgba(185, 182, 211, 0.25);
      border-radius: 0.5em;
      font-weight: 400;
      color: gray;
      border: 2px solid #b9b6d3;
      margin-bottom:6px;
      font-style: italic;
}


.form-input input:focus {
      outline: none;
      border: 2px solid #b9b6d3;
}

.form-input.warning input {
      border: 2px solid #ff7a7a;
}

.form-input p {
      margin: 0.2em 0.75em 0 0;
      display: none;
      font-size: 0.75rem;
      text-align: right;
      font-style: italic;
      color: #ff7a7a;
}

.form-input.warning p {
      display: block;
}

.submit-btn {
      cursor: pointer;
      width: 100%;
      padding: 1em;
      margin-bottom: 1em;
      border: none;
      border-bottom: 5px solid white;
      border-radius: 0.5em;
      background-color: grey;
      color: white;
      font-weight: 600;
      text-transform: uppercase;
}



.form-term {
      margin-bottom: 0.75em;
      font-size: 0.8rem;
      text-align: center;
}
.in{
    height: 140Px;
    padding-top: 0;
    width: 300px;
    border-radius: 0.5em;
    color: #3e3c49;
    border: 2px solid #b9b6d3;
    width: 569px;
    resize: none;
}
    
@media (min-width: 768px) {
    body {
        align-items: center;
        
    }

    main {
        max-width: 100vw;
        flex-direction: row;
        justify-content: center;
    }

    .intro {
        align-items: flex-start;
        text-align: left;
        width: 45%;
        margin-right: 1rem;
    }
    
    .title {
        padding: 0;
        margin-bottom: 2rem;
        font-size: 3rem;
        line-height: 1.25em;
        
    }

    .sign-up {
        width: 45%;
    }

    .sign-up-form {
        padding: 1.75rem;
    }

    .sign-up-form input {
        padding-left: 1.5em;
    }
     .nav {
    height: 50px;
    width: 100%;
      background-color: grey;
    box-shadow: 0 .8rem .8rem #0005;
    height: 55px;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    margin-bottom: 100px;
  }
  
  .nav > .nav-header {
    display: inline;
  }
  
  .nav > .nav-header > .nav-title {
    display: inline-block;
    font-size: 22px;
    color: white;
    font-weight: 550;
    font-family: Arial, Helvetica, sans-serif;
    padding: 15px 10px 10px 10px;
  }
  
  .nav > .nav-btn {
    display: none;
  }
  
  .nav > .nav-links {
    display: inline;
    float: right;
    font-size: 18px;
  }
  .nav > .nav-links > ul li a{
    display: block;
    padding: 0 8px;
    color:white;
    font-weight: 550;
    line-height: 40px;
    font-size: 18px;
    text-decoration: none;

  }
  .nav > .nav-links > ul{
    padding: 0;
    margin-top: 5px;
    list-style: none;
    position: relative;
    
  }
  .nav > .nav-links > ul li{
    display: inline-block;
    
    
    
  }
  .form-input textarea{
      width: 594px;
      
  }
  .nav > .nav-links > ul li:hover{
      background-color: grey;
      border-radius: 5px;
  }
  
  .nav > #nav-check {
    display: none;
  }

 .nav .nav-links ul a.icon{
 margin-left: 80px;
 margin-right: 10px;
 }

 .nav .nav-links ul a i{
    background-color: #fff;
    border-radius: 50px;
    padding: 7px;
    margin-left: 5px;
 }

  
  @media (max-width:750px) {
    .nav > .nav-btn {
      display: inline-block;
      position: absolute;
      right: 0px;
      top: 0px;
    }
    .nav > .nav-btn > label {
      display: inline-block;
      width: 50px;
      height: 50px;
      padding: 13px;
    }
    .nav > .nav-btn > label:hover,.nav  #nav-check:checked ~ .nav-btn > label {
      background-color: rgba(0, 0, 0, 0.3);
    }
    .nav > .nav-btn > label > span {
      display: block;
      width: 25px;
      height: 10px;
      border-top: 2px solid #eee;
    }
    .nav > .nav-links {
      position: absolute;
      display: block;
      width: 100%;
      background-color: #333;
      height: 0px;
      transition: all 0.3s ease-in;
      overflow-y: hidden;
      top: 50px;
      left: 0px;
    }
    .nav > .nav-links > ul li a {
      display: block;
      width: 100%;
    }

    /*   */


    
      .nav > .nav-links > ul li{
        display: block;
        margin-bottom:15px;
        padding: 0;
        background-color: #333;
         
      }
      .nav > .nav-links > ul li a{
          margin-left: 40%;
      }
      .nav .nav-links ul a.icon{
        margin-left: 33%;
      }

    /*   */
    .nav > #nav-check:not(:checked) ~ .nav-links {
      height: 0px;
    }
    .nav > #nav-check:checked ~ .nav-links {
      height: calc(100vh - 50px);
      overflow-y: auto;
    }   
  }
}
  </style>
</head> 
<body>
    <div class="nav">
        <input type="checkbox" id="nav-check">
        <div class="nav-header">
          <div class="nav-title">
            EPT Reclamations
          </div>
        </div>
        <div class="nav-btn">
          <label for="nav-check">
            <span></span>
            <span></span>
            <span></span>
          </label>
        </div>
        
        <div class="nav-links">
          <ul class="">
          
          <li><a href="p1.jsp" >Se déconnecter</a></li>
          </ul>
            
            
            
            
            
        </div>
        
    </div>
    
      <div class="sign-up">
      <h1 class="title">AJOUTER AVIS </h1>
          <form class="sign-up-form" method="POST" action="AjouterAvis" >
              
        
		<div class="form-input">
                   
			<textarea class="in"   placeholder="Avis" name="Avis"></textarea>
		  </div>

        

        <input class="submit-btn" type="submit" value="ENVOYER">
      </form>
    </div>
  </div>
</body>

</html>