<%-- 
    Document   : p1
    Created on : 12 mars 2023, 18:56:18
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>P1</title>
 

<style>
*{
  margin: 0;
  padding: 0;
}

html{
  box-sizing: border-box;
  font-size: 62.5%;
}

body {
  background-color: whitesmoke;
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
    height: 500px;
    box-shadow: 0 3rem 6rem rgba(0, 0, 0, 0.1);
    cursor: pointer;
    transition: 0.2s;
    margin-bottom: 10px;
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
  margin-top: 40px;

 
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
          <img class="card-img" src="https://images.prismic.io/onatera-shop-intl-prod/153d3322-71a7-48c6-bc59-0c6cbf6f8feb_5-soutiens-naturels-a-la-reussite-de-vos-examens-et-concours.jpg?auto=compress%2Cformat&amp%3Brect=0%2C0%2C784%2C526&amp%3Bw=392&amp%3Bh=263&fbclid=IwAR0Tp10PiDMYy9pi2GnEy50d-WDsxmVPwMKELiYX2oIYKNtZbS5JxZv7zVc"  />
          <div class="card-content">
            <h1 class="card-header">ESPACE ETUDIANT </h1>
            
            <a href="login.jsp" class="card-btn"> CONTINUER <span>&rarr;</span></a>
          </div>
        </div>
      </div>
      <div class="grid-item1">
        <div class="card">
          <img
            class="card-img"
            src="https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80" />
          <div class="card-content">
            <h1 class="card-header">ESPACE ADMINISTRATION</h1>
            
            <a href="espaceadmin.jsp" class="card-btn">CONTINUER <span>&rarr;</span></a>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
