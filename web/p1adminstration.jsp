<%-- 
    Document   : p1adminstration
    Created on : 12 mars 2023, 19:51:40
    Author     : USER
--%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>



<!DOCTYPE html>
<html lang="en">
     <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>PA1</title>
    <style>
        

        
        @import url("https://fonts.googleapis.com/css?family=Poppins&display=swap");

* {
  margin: 0;
  padding: 0;
}

html {
  box-sizing: border-box;
  font-size: 62.5%;
}

body {
  background-color: white;
  font-family: "Poppins", sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}

.grid {
  display: grid;
  width: 114em;
  grid-gap: 6rem;
  grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
  align-items: start;
  margin-top: 70px;
}

.grid-item {
  background-color: #fff;
  border-radius: 0.4rem;
  overflow: hidden;
  height: 600px;
  box-shadow: 0 3rem 6rem rgba(0, 0, 0, 0.1);
  cursor: pointer;
  transition: 0.2s;
}
.grid-item1 {
    background-color: #fff;
    border-radius: 0.4rem;
    overflow: hidden;
    height: 300px;
    box-shadow: 0 3rem 6rem rgba(0, 0, 0, 0.1);
    cursor: pointer;
    transition: 0.2s;
    margin-bottom: 20px;
}
 

.grid-item:hover {
  transform: translateY(-0.5%);
  box-shadow: 0 4rem 8rem rgba(0, 0, 0, 0.5);
}

.card-img {
  display: block;
  width: 100%;
  height: 20rem;
  object-fit: cover;
  height: 300px;
}

.card-content {
  padding: 3rem;
}

.card-header {
  font-size: 3rem;
  font-weight: 500;
  color: #0d0d0d;
  margin-bottom: 1.5rem;
  text-align: center;
}

.card-text {
  font-size: 1.6rem;
  letter-spacing: 0.1rem;
  line-height: 1.7;
  color: #3d3d3d;
  margin-bottom: 2.5rem;
  
}

.card-btn {
  display: block;
  width: 100%;
  padding: 1.5rem;
  font-size: 2rem;
  text-align: center;
  color: white;
  background-color: gray;
  border: none;
  border-radius: 0.4rem;
  transition: 0.2s;
  cursor: pointer;
  letter-spacing: 0.1rem;
  padding-right: 0;
  padding-left: 0;
  text-decoration-line: none;
  margin-top: 50px

 
}

.card-btn span {
  margin-left: 1rem;
  transition: 0.2s;
}

.card-btn:hover,
.card-btn:active {
  background-color: gray;
}

.card-btn:hover span,
.card-btn:active span {
  margin-left: 1.5rem;
}

@media only screen and (max-width: 60em) {
  body {
    padding: 3rem;
  }

  .grid {
    grid-gap: 3rem;
  }
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
                <li><a href="p1adminstration.jsp" >Accueil</a></li>
          <li><a href="ajouter" >Ajouter Etudiants</a></li>
          <li><a href="supprimer" >Supprimer Etudiants</a></li>
          <li><a href="Afficher" >Afficher Reclamations</a></li>
          <li><a href="demande" >Changer Chambre</a></li>
          <li><a href="p1.jsp" >Se deconnecter</a></li>
            </ul>
        </div>
        
    </div>
      
      
      
    <div class="grid">
      <div class="grid-item1">
        <div class="card">
          
          <div class="card-content">
            <h1 class="card-header">AJOUTER  ÉTUDIANTS</h1>
            <p class="card-text">
              
            </p>
            <a href="ajouter" class="card-btn"> CONTINUER <span>&rarr;</span></a>
          </div>
        </div>
      </div>
      <div class="grid-item1">
        <div class="card">
          
          <div class="card-content">
            <h1 class="card-header">SUPPRIMER ÉTUDIANTS</h1>
            <p class="card-text">
              
              
            </p>
            <a href="supprimer" class="card-btn"> 
              CONTINUER
              <span>&rarr;</span></a>
          </div>
        </div>
      </div>
      <div class="grid-item1">
        <div class="card">
          
          <div class="card-content">
            <h1 class="card-header">AFFICHER RÉCLAMATIONS</h1>
            <p class="card-text">
              

            </p>
            <a href="Afficher" class="card-btn" >CONTINUER<span>&rarr;</span></a>
          </div>
        </div>
      </div>
        <div class="grid-item1">
        <div class="card">
          
          <div class="card-content">
            <h1 class="card-header">CHANGER CHAMBRE</h1>
            <p class="card-text">
              

            </p>
            <a href="demande" class="card-btn" >CONTINUER<span>&rarr;</span></a>
          </div>
        </div>
      </div>
</div>

    

  </body>
</html>
