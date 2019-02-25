<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="E3job_add.aspx.cs" Inherits="RP.E3job_add"
MasterPageFile="~/admin.Master" %>
<%@ register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
    
 <asp:Content ID="Content2" ContentPlaceHolderID="Nav_Content" Runat="Server">
        <div id="Exec_Nav" runat="server" class="menu_nav_admin" style="overflow:hidden; margin:0px; margin-left:auto; margin-right:auto;" >
                        <ul>
                            <li><a id="a5" href="Exec_add.aspx">Home</a></li>
                            <li><a id="a6" href="E3job_add.aspx">Edit Job</a></li>
                            <li><a id="a7" href="Job_assign.aspx">Add New Job</a></li>
                            <li><a id="a8" href="Exec_Report.aspx">Feedback And Backup Report</a></li>
                            <li><a id="a9" href="Changepw.aspx">Change Password</a></li>
                        </ul>
                        <div class="clr">
                            <a href="admin_add.aspx">admin_add.aspx</a>
                        </div>
                    </div>
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="Content_real" runat="Server">
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <link href="div_css.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            .txtb_css
            {
                width: 95%;
            }
        </style>
        <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
        <%-- <script src="Scripts/jquery-1.7.1.min.js"></script>--%>
        <script type="text/javascript">
//            function ShowHideDiv(CheckBox1) {
//                var invisible = document.getElementById("invisible");
//                invisible.style.display = CheckBox1.checked ? "block" : "none";
//                if (invisible.style.display = CheckBox1.checked) {
//                    document.getElementById("txtsupnm").value = "NA";
//                    //document.getElementById("ddlsupbill").value = "NA";
//                }
//            }

            //        $(document).ready(function () {
            //            $(":text").css("border-color", "Blue");
            //        });
            /*function EnterEvent(e) {
            
            alert(document.getElementbyId("Unmtxt"));
            }*/


        </script>
        <style type="text/css">
            .searchcontentCombobox .ajax__combobox_itemlist
            {
                position: fixed !important;
            }
        </style>
    </head>
    <body>
        <form id="form1">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div id="maindiv1" style="padding:0;">
<%--            <div class="subdiv1" style="padding: 0px; margin-left: 1%;">
                <div class="sidebar" align="center">
                    <div class="gadget">
                        <h2 class="star">
                            <span>User</span> Management</h2>
                        <div class="clr">
                        </div>
                        <ul class="sb_menu">
                            <li><a href="E3job_add.aspx">Edit Job</a></li>
                        </ul>
                    </div>
                </div>
            </div>--%>
            <div class="subdiv2" style="float: none; margin-top: 0%; border:none;">
                <asp:Panel ID="Panel1" runat="server">
                    <br />
                    <%--New - search by job number--%>
                    <div id="Div11" style="overflow: hidden; height: 41px;">
                        <div id="Div15" style="width: 30%; float: left; text-align: right;">
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Search by Job Name" GroupName="Job_Edit"
                                Checked="True" AutoPostBack="True" 
                                oncheckedchanged="RadioButton1_CheckedChanged"/>
                        </div>
                        <div id="Div16" style="width: 30%; float: left; text-align: right;">
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="    Search by Job Number"
                                GroupName="Job_Edit" AutoPostBack="True" 
                                oncheckedchanged="RadioButton2_CheckedChanged" />
                        </div>
                        <%--<div id="Div12" style="width: 30%; float: left; text-align: right;">
                            <asp:Label ID="Label28" runat="server" Text="Job Number :" Style="position: relative"></asp:Label>
                        </div>
                        <div id="Div13" style="width: 30%; float: left; margin-left: 4%;">
                            <asp:TextBox ID="TextBox_jbnum" runat="server" Width="210px" AutoPostBack="true"
                                CssClass="txtb_css" onkeypress="return EnterEvent(event)" Style="float: left"
                                TabIndex="1"></asp:TextBox>
                            <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="TextBox_jbnum"
                                MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000"
                                ServiceMethod="GetUser">
                            </asp:AutoCompleteExtender>
                            <asp:Label ID="Jobname" runat="server" AutoPostBack="true" visibility="Hidden" Width="0%"></asp:Label>
                        </div>
                        <div id="Div14" style="width: 30%; float: left">
                            <asp:Button ID="btnsearchjbnum" CssClass="roundCorner" runat="server" Text="Search"
                                OnClick="btnsearchjbnum_Click" TabIndex="2" />
                        </div>--%>
                    </div>
                    <%-- End Search by job number --%>
                    <div id="Div21" style="overflow: hidden; height: 41px;">
                        <div id="lab" style="width: 30%; float: left; text-align: right;">
                            <asp:Label ID="Label26" runat="server" Text="Job Name :" Style="position: relative"></asp:Label>
                        </div>
                        <div id="lab1" style="width: 30%; float: left; margin-left: 4%;">
                            <asp:TextBox ID="Unmtxt" runat="server" Width="210px" AutoPostBack="true" CssClass="txtb_css" Style="float: left" TabIndex="1"></asp:TextBox>
                            <asp:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" TargetControlID="Unmtxt"
                                MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000"
                                ServiceMethod="GetUser">
                            </asp:AutoCompleteExtender>
                            <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="Unmtxt"
                                MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000"
                                ServiceMethod="Getjob">
                            </asp:AutoCompleteExtender>
                            <asp:Label ID="JobnumberStr1" runat="server" AutoPostBack="true" visibility="Hidden"
                                Width="0%"></asp:Label>
                        </div>
                        <div id="lab2" style="width: 30%; float: left">
                            <asp:Button ID="btnsearch" CssClass="roundCorner" runat="server" Text="Search" OnClick="btnsearch_Click"
                                TabIndex="2" />
                        </div>
                    </div>
                    <div id="maindiv1">
                        <div class="maindiv_sub1" style="overflow: hidden;">
                            <div class="subdiv11" style="overflow: hidden;">
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label1" runat="server" Text="Job Name :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtjobnm" runat="server" CssClass="txtb_css" TabIndex="3"></asp:TextBox>
                                        <asp:DropDownList ID="ddljobnm" runat="server" Width="80%" EnableViewState="true"
                                            AutoPostBack="true" OnSelectedIndexChanged="ddljobnm_SelectedIndexChanged" Visible="False"
                                            CssClass="txtb_css">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label2" runat="server" Text="Job Number:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtjobno" runat="server" CssClass="txtb_css"></asp:TextBox>
                                        <asp:DropDownList ID="ddljobno" runat="server" Width="80%" Visible="False" CssClass="txtb_css">
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div id="Div12" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label28" runat="server" Text="Maconomy Number:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtmacno" runat="server" CssClass="txtb_css" Text="00000000" 
                                            EnableTheming="True"></asp:TextBox>
                                    </div>
                                </div>

                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="lbldoa" runat="server" Text="Date Of Arrival :" Style="position: relative;
                                            margin-bottom: 2px"></asp:Label>
                                    </div>
                                    <div class="childdiv12" style="overflow: hidden;">
                                        <asp:TextBox ID="txtDoa" runat="server" Style="position: relative; z-index: 1; top: 0px;
                                            left: 0px;" placeholder="yyyy-MM-dd" CssClass="txtb_css" Enabled="False"></asp:TextBox>&nbsp;
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999"
                                            CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                            ForeColor="Black" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px"
                                            Visible="False" Style="z-index: 9991; position: absolute; top: 428px; left: 417px;
                                            height: 232px;" FirstDayOfWeek="Monday" 
                                            onvisiblemonthchanged="Calendar1_VisibleMonthChanged">
                                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                            <NextPrevStyle VerticalAlign="Bottom" />
                                            <OtherMonthDayStyle ForeColor="#808080" />
                                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                            <SelectorStyle BackColor="#CCCCCC" />
                                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                            <WeekendDayStyle BackColor="#FFFFCC" />
                                        </asp:Calendar>
                                        <a href="#">
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Top" ImageUrl="~/images/calendar (1).png"
                                                OnClick="ImageButton1_Click" Style="width: 22px; height: 22px" />
                                        </a>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label3" runat="server" Text="Office :"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtoffice" runat="server" Enabled="False" CssClass="txtb_css"></asp:TextBox>
                                        <asp:DropDownList ID="ddloffice" runat="server" Width="80%" AutoPostBack="True" OnSelectedIndexChanged="ddloffice_SelectedIndexChanged"
                                            CssClass="txtb_css">
                                            <asp:ListItem>Select Office</asp:ListItem>
                                            <asp:ListItem>LSRSG</asp:ListItem>
                                            <asp:ListItem>MB CHINA</asp:ListItem>
                                            <asp:ListItem>MB Indonesia</asp:ListItem>
                                            <asp:ListItem>MB Philippines</asp:ListItem>
                                            <asp:ListItem>MB South Africa</asp:ListItem>
                                            <asp:ListItem>MBAU</asp:ListItem>
                                            <asp:ListItem>MBGH</asp:ListItem>
                                            <asp:ListItem>MBPH</asp:ListItem>
                                            <asp:ListItem>NA</asp:ListItem>
                                            <asp:ListItem>TNS Indonesia</asp:ListItem>
                                            <asp:ListItem>TNSUK</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div class="subdiv12">
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label4" runat="server" Text="Type Of Job:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txttypjob" runat="server" Enabled="False" CssClass="txtb_css"></asp:TextBox>
                                        <asp:DropDownList ID="ddltypjob" runat="server" Style="position: relative" Width="80%"
                                            AutoPostBack="True" OnSelectedIndexChanged="ddltypjob_SelectedIndexChanged" CssClass="txtb_css">
                                            <asp:ListItem>Select Job</asp:ListItem>
                                            <asp:ListItem>Admin</asp:ListItem>
                                            <asp:ListItem>Link</asp:ListItem>
                                            <asp:ListItem>Preview</asp:ListItem>
                                            <asp:ListItem>Adhoc</asp:ListItem>
                                            <asp:ListItem>Dip</asp:ListItem>
                                            <asp:ListItem>MB Billing</asp:ListItem>
                                            <asp:ListItem>MB Quotes</asp:ListItem>
                                            <asp:ListItem>Track</asp:ListItem>
                                            <asp:ListItem>Dashboard</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label5" runat="server" Text="Year :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtyear" runat="server" Style="position: relative; top: 0px; left: 0px;"
                                            CssClass="txtb_css"></asp:TextBox>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label6" runat="server" Text="Month Of Processing :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtmonthofpro" runat="server" Enabled="False" CssClass="txtb_css"></asp:TextBox>
                                        <asp:DropDownList ID="ddlmonthofpro" runat="server" Width="80%" AutoPostBack="True"
                                            OnSelectedIndexChanged="ddlmonthofpro_SelectedIndexChanged" CssClass="txtb_css">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label7" runat="server" Text="Machine :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtmachine" runat="server" Enabled="False" CssClass="txtb_css"></asp:TextBox>
                                        <asp:DropDownList ID="ddlmachine" runat="server" Style="position: relative; top: 0px;
                                            left: 0px;" Width="80%" AutoPostBack="True" OnSelectedIndexChanged="ddlmachine_SelectedIndexChanged"
                                            CssClass="txtb_css">
                                            <asp:ListItem>Server</asp:ListItem>
                                            <asp:ListItem>Machine</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="maindiv_sub1">
                            <div class="subdiv11">
                                <div id="Div3" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label18" runat="server" Text="No. Of Centers:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtNocen" runat="server" Style="position: relative; top: 0px; left: 0px;"
                                            CssClass="txtb_css"></asp:TextBox>
                                    </div>
                                </div>
                                <div id="Div4" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label21" runat="server" Text="Type Of Approval:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtTypApp" runat="server" Enabled="False" CssClass="txtb_css"></asp:TextBox>
                                        <asp:DropDownList ID="ddlTypApp" runat="server" Width="80%" AutoPostBack="True" OnSelectedIndexChanged="ddlTypApp_SelectedIndexChanged"
                                            CssClass="txtb_css">
                                            <asp:ListItem>DP</asp:ListItem>
                                            <asp:ListItem>SP+DP</asp:ListItem>
                                            <asp:ListItem>DP+DE</asp:ListItem>
                                            <asp:ListItem>DP+DE+SP</asp:ListItem>
                                            <asp:ListItem>CAPI+DP</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Div5" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label22" runat="server" Text="No. Of Dp Uploaded CSV:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtNocsv" runat="server" Style="position: relative; top: 0px; left: 0px;"
                                            CssClass="txtb_css"></asp:TextBox>
                                    </div>
                                </div>
                                <div id="Div6" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label24" runat="server" Text="Feedback :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtfeedbk" runat="server" Enabled="False"></asp:TextBox>
                                        <asp:DropDownList ID="ddlfeedbk" runat="server" Width="80%" AutoPostBack="True" OnSelectedIndexChanged="ddlfeedbk_SelectedIndexChanged"
                                            CssClass="txtb_css">
                                            <%--<asp:ListItem>Select Feedback Status</asp:ListItem>--%>
                                            <asp:ListItem>No</asp:ListItem>
                                            <asp:ListItem>Yes</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div class="subdiv12">
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label12" runat="server" Text="CS Exec :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtcs1" runat="server" Style="position: relative; top: 0px; left: 0px;"
                                            CssClass="txtb_css"></asp:TextBox>
                                        <asp:AutoCompleteExtender ID="CS1E" runat="server" TargetControlID="txtcs1" MinimumPrefixLength="1"
                                            EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000" ServiceMethod="GetCS1">
                                        </asp:AutoCompleteExtender>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label13" runat="server" Text="PM Exec :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtcs2" runat="server" CssClass="txtb_css"></asp:TextBox>
                                        <asp:AutoCompleteExtender ID="CS2E" runat="server" TargetControlID="txtcs2" MinimumPrefixLength="1"
                                            EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000" ServiceMethod="GetCS2">
                                        </asp:AutoCompleteExtender>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label25" runat="server" Text="Primary Contact : " Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtDpexec1" runat="server" Style="position: relative; top: 0px;
                                            left: 0px;" Enabled="False" CssClass="txtb_css"></asp:TextBox>
                                        <asp:DropDownList ID="ddlDpexec1" runat="server" Width="80%" AutoPostBack="True"
                                            OnSelectedIndexChanged="ddlDpexec1_SelectedIndexChanged" CssClass="txtb_css">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label15" runat="server" Text="Secondary Contact : " Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtDpexec2" runat="server" Style="position: relative; top: 0px;
                                            left: 0px;" Enabled="False" CssClass="txtb_css"></asp:TextBox>
                                        <asp:DropDownList ID="ddlDpexec2" runat="server" Width="80%" AutoPostBack="True"
                                            OnSelectedIndexChanged="ddlDpexec2_SelectedIndexChanged" CssClass="txtb_css">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label16" runat="server" Text="LOI (Min) :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtreclen" runat="server" Style="position: relative; top: 0px; left: 0px;"
                                            CssClass="txtb_css"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                        <div class="maindiv_sub1">
                            <div class="subdiv11">
                                <div id="Div9" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label9" runat="server" Text="Sample Size:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtSmpsiz" runat="server" Style="position: relative; top: 0px; left: 0px;"
                                            CssClass="txtb_css"></asp:TextBox>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label17" runat="server" Text="No. Of Ads:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtNoads" runat="server" Style="position: relative; top: 0px; left: 0px;"
                                            CssClass="txtb_css"></asp:TextBox>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label19" runat="server" Text="No. Of OE's:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtNooe" runat="server" Style="position: relative; top: 0px; left: 0px;"
                                            CssClass="txtb_css"></asp:TextBox>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label20" runat="server" Text="No. of O/P Delivered:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtOpdeli" runat="server" Style="position: relative; top: 0px; left: 0px;"
                                            CssClass="txtb_css"></asp:TextBox>
                                    </div>
                                </div>
                                <div id="content_div" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label23" runat="server" Text="Final Back-Up :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtfnlbkup" runat="server" Enabled="False" CssClass="txtb_css"></asp:TextBox>
                                        <asp:DropDownList ID="ddlfnlbkup" runat="server" Width="80%" AutoPostBack="True"
                                            OnSelectedIndexChanged="ddlfnlbkup_SelectedIndexChanged" CssClass="txtb_css">
                                            <%--<asp:ListItem>Select Backup Status</asp:ListItem>--%>
                                            <asp:ListItem>No</asp:ListItem>
                                            <asp:ListItem>Yes</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div id="Div10" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                <div class="childdiv11">
                                    <asp:Label ID="Label27" runat="server" Text="Supplier:" Style="position: relative"
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </div>
                                <div class="childdiv12">
                                    <asp:CheckBox ID="CheckBox1" runat="server" EnableViewState="False"
                                        OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true"/>
                                </div>
                            </div>
                            <div id="invisible" class="subdiv12"  runat="server">
                                <div id="Div1" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label8" runat="server" Text="Supplier Name :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtsupnm" runat="server" CssClass="txtb_css"></asp:TextBox>
                                    </div>
                                </div>
                                <div id="Div2" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label10" runat="server" Text="Supplier Bill :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtsupbill" runat="server" Enabled="False" CssClass="txtb_css">NA</asp:TextBox>
                                        <asp:DropDownList ID="ddlsupbill" runat="server" Width="80%" AutoPostBack="True"
                                            OnSelectedIndexChanged="ddlsupbill_SelectedIndexChanged" CssClass="txtb_css">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Yes</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                            <asp:ListItem>NA</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Div7" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label14" runat="server" Text="QC Report :" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtQC" runat="server" Enabled="False" CssClass="txtb_css">NA</asp:TextBox>
                                        <asp:DropDownList ID="ddlQC" runat="server" Width="80%" AutoPostBack="True" OnSelectedIndexChanged="ddlQC_SelectedIndexChanged"
                                            CssClass="txtb_css">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>TBD</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                            <asp:ListItem>NA</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Div8" style="margin: auto; margin-bottom: 5px; overflow: hidden;">
                                    <div class="childdiv11">
                                        <asp:Label ID="Label11" runat="server" Text="Status:" Style="position: relative"></asp:Label>
                                    </div>
                                    <div class="childdiv12">
                                        <asp:TextBox ID="txtSts" runat="server" Enabled="False" CssClass="txtb_css">NA</asp:TextBox>
                                        <asp:DropDownList ID="ddlSts" runat="server" Width="80%" AutoPostBack="True" OnSelectedIndexChanged="ddlSts_SelectedIndexChanged"
                                            CssClass="txtb_css">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Done</asp:ListItem>
                                            <asp:ListItem>WIP</asp:ListItem>
                                            <asp:ListItem>Cancelled</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="maindiv_sub1">
                        <div class="subdiv11">
                            <asp:Button ID="Button1" runat="server" Text="SAVE" Style="position: relative; top: 3px;
                                left: 152px;" OnClick="Button1_Click" CssClass="roundCorner" />
                        </div>
                        <div class="subdiv11">
                            <center>
                                <asp:Button ID="btncancel" runat="server" Text="CANCEL" Style="position: relative;
                                    top: 3px;" OnClick="Button3_Click" CssClass="roundCorner" /></center>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
        </form>
    </body>
    </html>
</asp:Content>
