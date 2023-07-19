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
  color: #3363ff;
  background-color: #d8e0fd;
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
  background-color: #c2cffc;
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
</style>
 
  </head>

  <body>
    <div class="grid">
      <div class="grid-item1">
        <div class="card">
          
          <div class="card-content">
            <h1 class="card-header">AJOUTER RÉCLAMATIONS</h1>
            <p class="card-text">
              
            </p>
            <a href="ajouter" class="card-btn"> CONTINUER <span>&rarr;</span></a>
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
        
  </body>
</html>
