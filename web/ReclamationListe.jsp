<%@page import="Reclamation.Reclamation"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="Reclamation.Reclamationafficher" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<html>
<head>
<title>lise de réclamations</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
    /* Appliquer le style de base à l'interrupteur basculant */
input[type="checkbox"] {
  position: relative;
  width: 80px;
  height: 40px;
  background: brown;
  -webkit-appearance: none;
  border-radius: 20px;
  outline: none;
  transition: .4s;
  box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
  cursor: pointer;
}

input:checked[type="checkbox"] {
  background:green;
}

input[type="checkbox"]::before {
  z-index: 2;
  position: absolute;
  content: "";
  left: 0;
  width: 40px;
  height: 40px;
  background: #fff;
  border-radius: 50%;
  transform: scale(1.1);
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
  transition: .4s;
}

input:checked[type="checkbox"]::before {
  left: 40px;
}

.toggle {
  position: relative;
  display: inline;
}

label {
  position: absolute;
  color: #fff;
  font-weight: 600;
  font-size: 20px;
  pointer-events: none;
}

.onbtn {
  bottom: 1Opx;
  left: 15px;
  
}

.ofbtn {
  bottom: 1Opx;
  right: 14px;
  
}
.row{
    margin-top: 60px;
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
    z-index: 10;
   
  }
  
  .nav > .nav-header {
    display: inline;
  }
  
  .nav > .nav-header > .nav-title {
    display: inline-block;
    font-size: 22px;
    color:white;
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
<body >
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

	
	

	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Liste de reclamations</h3>
			<hr>
			<div class="container text-left"></div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>NumChambre</th>
						<th>Type</th>
						<th>Commentaire</th>
						<th>Actions</th>
						<th>Etat</th>
                                                <th>Avis</th>
					</tr>
				</thead>
				<tbody>
					<%
					List<Reclamationafficher> dataList = (List<Reclamationafficher>) request.getAttribute("dataList");
                                            
                                        
					int i = 0;
					for (Reclamationafficher v : dataList) {
						i++;
						String ch = String.valueOf(i);
                                                
					%>
						<tr>
							<td><%= v.getNUMERO_CHAMBRE() %></td>
							<td><%= v.getTYPE() %></td>
							<td><%= v.getCOMMENTAIRE() %></td>
                                                        <td><form method="POST" action="SupprimerRec" >
                                                                        <input type="submit" value="Supprimer" class="btn btn-outline-info">	
                                                                      
                                                                       
                                                                        <input type="hidden" name="NUMERO_CHAMBRE" value="<%=v.getNUMERO_CHAMBRE()%>">
                                                                                    <input type="hidden" name="TYPE" value="<%=v.getTYPE()%>">
                                                                                    <input type="hidden" name="COMMENTAIRE" value="<%=v.getCOMMENTAIRE()%>">
                                                                                    <input type="hidden" name="ETAT" value="<%=v.getETAT()%>">
                                                                        </form></td> 
							<td>
								<div class="toggleBox">
									<div class="toggle">
                                                                            
                                                                            
                                                                                    
                                                                                    
                                                                                    
										<form id="toggle-switch<%=ch%>" action="Afficher" method="POST">
                                                                                    <input type="hidden" name="ch" value="<%=ch%>">
                                                                                    <input type="hidden" name="NUMERO_CHAMBRE" value="<%=v.getNUMERO_CHAMBRE()%>">
                                                                                    <input type="hidden" name="TYPE" value="<%=v.getTYPE()%>">
                                                                                    <input type="hidden" name="COMMENTAIRE" value="<%=v.getCOMMENTAIRE()%>">
                                                                                    <input type="hidden" name="ETAT" value="<%=v.getETAT()%>">
                                                                                   
											<input type="checkbox" id="toggle-switch-checkbox<%=ch%>"  name="toggleSwitch<%=ch%>"
												onchange="submitForm('<%=ch%>')"
												<% if ((v.getETAT()).equals("1")) { %>checked<% } %> >
											
											<label for="toggle-switch-checkbox<%=ch%>" class="ofbtn"></label>
										</form>
									</div>
								</div>
							</td>
                                                        <td><%= v.getAVIS() %></td>
                                                        
						</tr>
					<% } %>
				</tbody>
			</table>
		</div>
	</div>

	<script>
		function submitForm(ch) {
			document.getElementById("toggle-switch"+ch).submit();       
		}
	</script>




                                            
                                </body>
    
</html>



