<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutContent1" ContentPlaceHolderID="TitleContent" runat="server">
    About Us
</asp:Content>

<asp:Content ID="aboutContent2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="aboutParagraph">
        <h2><%: ViewData["Message"] %></h2>
    
        <p>
            Our team, Team2OIES, has developed a web based system with a large database backend that will allow for uploading of patient preoperative and postoperative long term follow-up EVAR data. Our goal
            is to provide a convienient and cutting-edge website for surgeons, medical technicians, computational scientists, and software engineers to access an electronic EVAR record system. We ensure
            good software engineering practices that will establish extendibility of new functionality. We hope for this project to benefit the medical staff in enhancing EVAR construction analsyis to improve surgery 
            diagnosis.  
        </p>
    </div>

    <div class="centerAboutIMG">
        <div class="aboutIMG">
            
            <div class="imgTM1">
                <asp:Image id="tl1" runat="server"
                           AlternateText="Picture of Ryan Dickey"
                           ImageUrl="../../Images/about/ryan_01.jpg"
                           Width="100%"
                           Height="100%" 
                           onmouseover="this.src='../Images/about/ryan_02.jpg'"
                           onmouseout="this.src='../Images/about/ryan_01.jpg'" />
                           <span ><strong>Ryan Dickey</strong></span><br />
                           <span >Team Leader</span>
            </div>
            <div class="imgTM1">
                <asp:Image id="sqa2" runat="server"
                           AlternateText="Picture of Parvez Sayani"
                           ImageUrl="../../Images/about/parvez_01.jpg"
                           Width="100%"
                           Height="100%"
                           onmouseover="this.src='../Images/about/parvez_02.jpg'"
                           onmouseout="this.src='../Images/about/parvez_01.jpg'" />
                           <span ><strong>Parvez Sayani</strong></span><br />
                           <span >Software Quality Assurance</span>
            </div>
            <div class="imgTM1">
                <asp:Image id="sqa1" runat="server"
                           AlternateText="Picture of Michael Graham"
                           ImageUrl="../../Images/about/michael_01.jpg"
                           Width="100%"
                           Height="100%"
                           onmouseover="this.src='../Images/about/michael_02.jpg'"
                           onmouseout="this.src='../Images/about/michael_01.jpg'" />
                           <span ><strong>Michael Graham</strong></span><br />
                           <span >Software Quality Assurance</span>
            </div>
            <div class="imgTM1">
                <asp:Image id="dba1" runat="server"
                           AlternateText="Picture of Marcus Washington"
                           ImageUrl="../../Images/about/marcus_01.jpg"
                           Width="100%"
                           Height="100%" 
                           onmouseover="this.src='../Images/about/marcus_02.jpg'"
                           onmouseout="this.src='../Images/about/marcus_01.jpg'" />
                           <span ><strong>Marcus Washington</strong></span><br />
                           <span >Database Administrator</span>
            </div>
            <div class="imgTM1">
                <asp:Image id="dba2" runat="server"
                           AlternateText="Picture of Trung Nguyen"
                           ImageUrl="../../Images/about/trung_01.jpg"
                           Width="100%"
                           Height="100%" 
                           onmouseover="this.src='../Images/about/trung_02.jpg'"
                           onmouseout="this.src='../Images/about/trung_01.jpg'" />
                           <span ><strong>Trung Nguyen</strong></span><br />
                           <span >Database Administrator</span>
            </div>
        </div>
    </div>


    <div class="centerAboutIMG">
        <div class="aboutIMG">
            <div class="bufferPadding">
                <!-- Nothing goes here -->
            </div>
            <div class="imgTM2">
                <asp:Image id="tm1" runat="server"
                           AlternateText="Picture of Andrew Nguyen"
                           ImageUrl="../../Images/about/andrew_01.jpg"
                           Width="100%"
                           Height="100%"
                           onmouseover='this.src="../Images/about/andrew_02.jpg"'
                           onmouseout='this.src="../Images/about/andrew_01.jpg"' />
                           <span ><strong>Andrew Nguyen</strong></span><br />
                           <span >Team Member</span>
            </div>
            <div class="imgTM2">
                <asp:Image id="tm2" runat="server"
                           AlternateText="Picture of Avinaash Kala"
                           ImageUrl="../../Images/about/avi_01.jpg"
                           Width="100%"
                           Height="100%"
                           onmouseover="this.src='../Images/about/avi_02.jpg'"
                           onmouseout="this.src='../Images/about/avi_01.jpg'" />
                           <span ><strong>Avinaash Kala</strong></span><br />
                           <span >Team Member</span>
            </div>
            <div class="imgTM2">
                <asp:Image id="tm3" runat="server"
                           AlternateText="Picture of Reuben Mondesir"
                           ImageUrl="../../Images/about/reuben_01.jpg"
                           Width="100%"
                           Height="100%" 
                           onmouseover="this.src='../Images/about/reuben_02.jpg'"
                           onmouseout="this.src='../Images/about/reuben_01.jpg'" />
                           <span ><strong>Reuben Mondesir</strong></span><br />
                           <span >Team Member</span>
            </div>
             <div class="imgTM2">
                <asp:Image id="tm4" runat="server"
                           AlternateText="Picture of Syed Haque"
                           ImageUrl="../../Images/about/syed_01.jpg"
                           Width="100%"
                           Height="100%" 
                           onmouseover="this.src='../Images/about/syed_02.jpg'"
                           onmouseout="this.src='../Images/about/syed_01.jpg'" />
                           <span ><strong>Syed Haque</strong></span><br />
                           <span >Team Member</span>
            </div>
            
            <div class="bufferPadding">
                <!-- Nothing goes here -->
            </div>
        </div>
    </div>

    <div class="buildingLocation">
        <h2>Location</h2>
        <asp:Image id="pghBuilding" runat="server"
                               AlternateText="PGH Building at University of Houston"
                               ImageUrl="../../Images/about/pghBuilding.jpg"
                               Width="40%"
                               Height="40%" />
        <p>
            University of Houston <br />
            4800 Calhoun Rd <br />
            Houston, TX 77004<br />
            713-743-2255 <br />
            email@website.com
        </p>
    </div>

    <div class="hidden">
	<script type="text/javascript">
		<!--	    //--><![CDATA[//><!--

	    if (document.images) {
	        img1 = new Image();
	        img2 = new Image();
	        img3 = new Image();
	        img4 = new Image();
	        img5 = new Image();
	        img6 = new Image();
	        img7 = new Image();
	        img8 = new Image();
	        img9 = new Image();

	        img1.src = "../Images/about/ryan_02.jpg";
	        img2.src = "../Images/about/parvez_02.jpg";
	        img3.src = "../Images/about/michael_02.jpg";
	        img4.src = "../Images/about/marcus_02.jpg";
	        img5.src = "../Images/about/trung_02.jpg";
	        img6.src = "../Images/about/andrew_02.jpg";
	        img7.src = "../Images/about/avi_02.jpg";
	        img8.src = "../Images/about/reuben_02.jpg";
	        img9.src = "../Images/about/syed_02.jpg";
	    }

	    //--><!]]>
	</script>
</div>
    


</asp:Content>

<asp:Content ID="aboutContent3" ContentPlaceHolderID="Info1" runat="server">
    <asp:Image id="worldandmedicine" runat="server"
                           AlternateText="World and Medicine"
                           ImageUrl="../../Images/doctors/worldandmedicine1.jpg"
                           Width="100%"
                           Height="100%" />
</asp:Content>

<asp:Content ID="aboutContent4" ContentPlaceHolderID="Info2" runat="server">
    <a href="https://www.youtube.com/watch?v=qUpXJBoAoWI" title="Video of EVAR" target="_blank"><asp:Image id="evarImg" runat="server"
                           AlternateText="World and Medicine"
                           ImageUrl="../../Images/doctors/evarVid1_1.jpg"
                           Width="100%"
                           Height="100%" /></a>
</asp:Content>
