<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="Reclamation.Reclamationafficher" %>
<html>
<head>
<title>lise de réclamations</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
    .etatFixée{
        
        color: green;
        
    }
    .etatAttente{
        color: brown;
        
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
  .row{
      margin-top: 80px;
  }
  .changer{
      background-color: gray;
      border: none;
      color: white;
      font-weight: 550;
  }
  .changer:hover{
     cursor: pointer;
     
      
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
          <li>
              <form method="GET" action="transmisse" >
                
                 <input type="hidden" name="adresse_email" value="<%=request.getAttribute("adresse_email")%>"> 
                 <input class="changer" type="submit" value="Changer Chambre" >
              
              </form>
          </li>
          <li><a href="p1.jsp" >Se déconnecter</a></li>
            </ul>
        </div>
        
    </div>
	<br>

	<div class="row">
            <div class="container">
		
			<h3 class="text-center">Liste de reclamations</h3>
			<hr>
			<div class="container text-left">
                                <form method="POST" action="Etudient" >
                                    <input type="submit" value="Ajouter Reclamation" class="btn btn-outline-info">	
                                    </form>
			</div>
			<br>
			<table  class="table table-bordered" >
                            
				<thead class="thead">
                                                        
					<tr>
						
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
                                    for (Reclamationafficher v : dataList) {
                                        String ch;
                                        if("1".equals(v.getETAT())){
                                            ch="Fixée";   
                                        }else {
                                            ch="Attente";   
                                        }    
                                %>
                                                               <tr>
                                                                    <td><%= v.getTYPE() %></td>
                                                                    <td><%= v.getCOMMENTAIRE() %></td>
                                                                    <td><form method="POST" action="SupprimerRecEtudent" >
                                                                        <input type="submit" value="Supprimer" class="btn btn-outline-info">	
                                                                      
                                                                       
                                                                        <input type="hidden" name="NUMERO_CHAMBRE" value="<%=v.getNUMERO_CHAMBRE()%>">
                                                                                    <input type="hidden" name="TYPE" value="<%=v.getTYPE()%>">
                                                                                    <input type="hidden" name="COMMENTAIRE" value="<%=v.getCOMMENTAIRE()%>">
                                                                                    <input type="hidden" name="ETAT" value="<%=v.getETAT()%>">
                                                                        </form></td>
                                                                    <td class="etat<%=ch%>"><%=ch%></td>
                                                                    <td>
                                                                        <form method="GET" action="AjouterAvis" >
                                                                        <input type="submit" value="Ajouter Avis" class="btn btn-outline-info">	
                                                                      
                                                                       
                                                                        <input type="hidden" name="NUMERO_CHAMBRE" value="<%=v.getNUMERO_CHAMBRE()%>">
                                                                                    <input type="hidden" name="TYPE" value="<%=v.getTYPE()%>">
                                                                                    <input type="hidden" name="COMMENTAIRE" value="<%=v.getCOMMENTAIRE()%>">
                                                                                    <input type="hidden" name="ETAT" value="<%=v.getETAT()%>">
                                                                        </form>
                                                                    
                                                                    </td>
                                                                 </tr>
                                <% } %>
              
				
                                </tbody>
			
		</table>
	</div>
       

</div>
                                
                                
                                

</body>
</html>



