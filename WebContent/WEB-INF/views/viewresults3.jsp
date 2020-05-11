<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.wipro.polling.Dbconnection.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javafx.application.Application,javafx.collections.FXCollections,javafx.collections.ObservableList,
javafx.scene.Scene
,javafx.stage.Stage,
javafx.scene.chart.*,javafx.scene.Group" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Online Voting</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/polling/resources/css/style2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/polling/resources/css/coin-slider.css" />
<script type="text/javascript" src="/polling/resources/js/cufon-yui.js"></script>
<script type="text/javascript" src="/polling/resources/js/cufon-times.js"></script>
<script type="text/javascript" src="/polling/resources/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/polling/resources/js/script.js"></script>
<script type="text/javascript" src="/polling/resources/js/coin-slider.min.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="adminhome">Online<span> College</span>Voting</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
         <ul>
          <li><a href="adminhome"><span>Home Page</span></a></li>
          <li><a href="addpoll"><span>Add Poll</span></a></li>
          
           <li class="active"><a href="viewresults2"><span>View Results</span></a></li>
         <li><a href="admin"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><img src="/polling/resources/images/1.jpg" width="960" height="360" alt="" /><span><br />
       <div class="clr"></div>
      </div>
      
    </div>
  </div>
<div class="clr"></div>
<center>
<%
             
             
         int qid=Integer.parseInt(request.getParameter("qid"));
             double totalrecords=0;
            double[] count= new double[4];
            double increment=0;
             String[] var= new String[4];
             var[0]="A";var[1]="B";var[2]="C";var[3]="D";
            Connection con;
            Statement st;
            ResultSet rs;
            Statement st1;
            ResultSet rs1;
            con = Dbconnection.getConnection();
          

            st = con.createStatement();
           
          
        
            rs = st.executeQuery("select * from answer where qid="+qid+"");
            st1 = con.createStatement();
   
         for( int i=0;i<4;i++) 
         {
             rs1 = st1.executeQuery("select * from answer where ans='"+var[i]+"' and qid="+qid+""); 
             while(rs1.next())
             {
                 increment++;
             }
             count[i] = increment;
             increment=0;
             System.out.println("xxi   yyycount[i]" +i +count[i]);         
         }
         
         
          
            
       %>
     
                  <% 
                       while(rs.next())
                       {
                           
                           totalrecords++;
                    
                             %>
             <% }%>
                   
             
     <%
          String opa=null;
          String opb=null;
          String opc=null;
          String opd=null;
          String question=null;
                  
            Statement st5;
            ResultSet rs5;
       st5 = con.createStatement();
       rs5 = st5.executeQuery("select * from questions,answer where qid="+qid+" and id="+qid);                
      if(rs5.next()){
       question=rs5.getString("question");
       opa=rs5.getString("option1");  
       opb=rs5.getString("option2");
       opc=rs5.getString("option3");
       opd=rs5.getString("option4");
     }                 
                       
double Apercentage =0;

double j=count[0];
double k=count[1];
double l=count[2];
double m=count[3];
System.out.print(opa);
 %>      

<div id="post_content"></div>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['<%=question%>', 'Hours per Day'],
  ['<%=opa%>', <%=j%>],
  ['<%=opb%>', <%=k%>],
  ['<%=opc%>', <%=l%>],
  ['<%=opd%>', <%=m%>]
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Poll results for question "<%=question%>"', 'width':'100px', 'height':400};
  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('post_content'));
  chart.draw(data, options);
}
</script>
</center>

          <div class="clr"></div>
        </div>
     </div>
      
      <div class="clr"></div>
 
  
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</body>

</html>
