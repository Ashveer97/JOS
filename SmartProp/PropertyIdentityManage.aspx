<%@ Page Title="JOS - Property Identity Manage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PropertyIdentityManage.aspx.cs" Inherits="SmartProp.PropertyIdentityManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
        <div class="container-xl px-4">
            <div class="page-header-content">
                <div class="row align-items-center justify-content-between pt-3">
                    <div class="col-auto mb-3">
                        <h1 class="page-header-title">
                            <div class="page-header-icon"><i data-feather="home"></i></div>
                            Property Identity - Manage
                                        </h1>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main page content-->
    <div class="container-xl px-4 mt-4">
        <div class="row">
            <div class="col-xl-4">
                <!-- Profile picture card-->
                <div class="card mb-4 mb-xl-0">
                    <div class="card-header">Property Picture</div>
                    <div class="card-body text-center">
                        <!-- Profile picture image-->
                        <img class="img-account-profile rounded-circle mb-2" src="assets/img/Properties/Property_1.jpeg" alt="Smart Prop - Property 1" />
                        <!-- Profile picture help block-->
                        <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                        <!-- Profile picture upload button-->
                        <button class="btn btn-primary" type="button">Upload new image</button>
                    </div>
                </div>
            </div>
            <div class="col-xl-8">
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Property Address</div>
                    <div class="card-body">
                        <%--  
                        <asp:UpdatePanel ID="UpdatePanelCourse" runat="server">
                <ContentTemplate>
                    <asp:FormView ID="FormViewInsertUpdate" runat="server" DataKeyNames="id" DefaultMode="Insert" DataSourceID="sdsSelectCourse" DataKey="id">
                        <InsertItemTemplate>
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="DropdownListQualificationId">Qualification:*</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropdownListQualificationId" runat="server" CssClass="js-example-basic-single js-states form-control" Width="100%" DataSourceID="sdsQualification" DataTextField="Qualification" DataValueField="id" AppendDataBoundItems="true" OnSelectedIndexChanged="DropdownListQualificationId_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem Value="0" Text="--Please Select--"></asp:ListItem>
                                        </asp:DropDownList>

                                        <asp:HiddenField ID="HiddenFieldQualificationTypeId" runat="server" Value='<%# Eval("qualification_type_id") %>' />
                                        <asp:HiddenField ID="HiddenFieldProviderId" runat="server" Value='<%# Eval("provider_id") %>' />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="TextBoxDescr">Course Description:*</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBoxDescr" runat="server" Text='<%# Bind("descr") %>' MaxLength="150" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="TextBoxSubDescr">Course Sub Description:</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBoxSubDescr" runat="server" Text='<%# Bind("sub_descr") %>' MaxLength="150" CssClass="form-control" Visible="true" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="TextBoxCredits">Credits:*</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:TextBox runat="server" ID="TextBoxCredits" Text="1" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="DropDownListClient">Client:*</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownListClient" DataValueField="id" DataTextField="client_company_name" DataSourceID="sdsClient" AppendDataBoundItems="true" runat="server" CssClass="select2_new_client form-control" Width="100%">
                                            <asp:ListItem Text="-Please Select-" Value="0" Selected="true"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:HiddenField ID="HiddenFieldNewClient" runat="server" ClientIDMode="Static" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="DropDownListSite">Site:*</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownListSite" DataValueField="id" DataTextField="Name" DataSourceID="sdsSite" AppendDataBoundItems="true" runat="server" CssClass="select2_new_site form-control" Width="100%">
                                            <asp:ListItem Text="-Please Select-" Value="0" Selected="true"></asp:ListItem>
                                        </asp:DropDownList>

                                        <asp:HiddenField ID="HiddenFieldNewSite" runat="server" ClientIDMode="Static" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="TextBoxDateFrom">Date from:*</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">

                                        <asp:TextBox ID="TextBoxDateFrom" runat="server" CssClass="form-control " TextMode="Date" Text='<%# Eval("date_from", "{0:yyyy-MM-dd}") %>' ></asp:TextBox>
                                       
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="TextBoxDateTo">Date to:*</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">

                                        <asp:TextBox ID="TextBoxDateTo" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Eval("date_from", "{0:yyyy-MM-dd}") %>'>
                                        </asp:TextBox>
                                       
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="DropDownList">Certificate Validity Period:*</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownListExpiryMessage" runat="server" CssClass="js-example-basic-single js-states form-control" AppendDataBoundItems="true" Width="100%">
                                            <asp:ListItem Value="" Text="--Please Select--"></asp:ListItem>
                                            <asp:ListItem Value="0" Text="Does not Expire"></asp:ListItem>
                                            <asp:ListItem Value="1" Text="Expires in 1 year"></asp:ListItem>
                                            <asp:ListItem Value="2" Text="Expires in 2 years"></asp:ListItem>
                                            <asp:ListItem Value="3" Text="Expires in 3 years"></asp:ListItem>
                                            <asp:ListItem Value="4" Text="Expires in 4 years"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="DropdownListAssessor">Assessor:</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropdownListAssessor" runat="server" CssClass="js-example-basic-single js-states form-control" DataSourceID="sdsAssessor" DataTextField="Fullname" DataValueField="id" AppendDataBoundItems="true">
                                            <asp:ListItem Value="0" Text="--Please Select--"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                       <label for="DropDownListUser">Course Responsible User:*</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                         <asp:DropDownList CssClass=" form-control js-example-basic-single js-states" ID="DropDownListUser" Width="100%" runat="server" DataSourceID="sdsUser" DataTextField="fullName" DataValueField="id" AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">--Please Select--</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="DropDownListWorkflow">Workflow: </label>
                                    </div>
                                </div>

                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control js-example-basic-single js-states" ID="DropDownListWorkflow" Width="100%" runat="server" DataSourceID="sdsWorkflow" DataTextField="descr" DataValueField="id" AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Workflow</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <asp:DropDownList CssClass=" form-control" ID="DropDownListWorkflowStatus" runat="server" DataSourceID="sdsWorkflowStatus" DataTextField="config_value" DataValueField="id" AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Workflow Status</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="sdsWorkflowStatus" runat="server" ConnectionString="<%$ ConnectionStrings:CoreDBConnectionString %>" SelectCommand="SELECT [id], [config_value] FROM [Global_Config] WHERE [Config_Key]  = 'WORKFLOWINSTANCESTATUS' AND [active_ind] = 1 AND [id] <> 1115 AND [id] <> 1116 ORDER BY [config_value]">
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                            </div>

                             <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="TextBoxSiteManager">Site Manager:</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                         <asp:TextBox ID="TextBoxSiteManager" runat="server" Text='<%# Bind("site_manager") %>' MaxLength="150" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="TextBoxSiteManagerDetails">Site Manager Contact Details:</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBoxSiteManagerDetails" runat="server" Text='<%# Bind("site_manager_contact_details") %>' TextMode="MultiLine" CssClass="form-control" />
                                    </div>
                                </div>

                            </div>
                                 
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="TextBoxCourseDetails">Course Details:</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBoxCourseDetails" runat="server" Text='<%# Bind("details_course") %>' TextMode="MultiLine" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>

                            
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="TextBoxSpecialInstructions">Special Instructions:</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                         <asp:TextBox ID="TextBoxSpecialInstructions" runat="server" Text='<%# Bind("details_special_instructions") %>' TextMode="MultiLine" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="CheckBoxTransport">Travel Arrangements:</label>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <asp:CheckBox ID="CheckBoxTransport" runat="server" Text="Car Hire" />
                                        &nbsp;
                                         <asp:CheckBox ID="CheckBoxFlight" runat="server" Text="Flight" />
                                        &nbsp;
                                         <asp:CheckBox ID="CheckBoxAccomodation" runat="server" Text="Accomodation" />
                                        &nbsp;
                                        <asp:CheckBox ID="CheckBoxPoolVehicle" runat="server" Text="Pool Vehicle" />
                                    </div>
                                </div>
                            </div>

                            
                            <asp:TextBox ID="TextBoxDuration" runat="server" Text='<%# Eval("course_duration") %>' CssClass="form-control" Visible="false" />

                            <asp:DropDownList ID="DropDownListDuration" runat="server" CssClass="js-example-basic-single js-states form-control" Width="100%" DataTextField="config_value" DataValueField="id" AppendDataBoundItems="true" Visible="false">
                            </asp:DropDownList>

                            <asp:TextBox ID="TextBoxDispatchDate" runat="server" CssClass="form-control" TextMode="Date" Text="" Visible="false" />
                          

                            <asp:DropDownList ID="DropdownListDispatchType" runat="server" CssClass="js-example-basic-single js-states form-control" Width="100%" DataSourceID="sdsDispatchType" DataTextField="config_value" DataValueField="id" AppendDataBoundItems="true" Visible="false">
                                <asp:ListItem Value="0" Text="--Please Select--"></asp:ListItem>
                            </asp:DropDownList>

                            <asp:TextBox ID="TextBoxDispatchReference" runat="server" CssClass="form-control" Text='<%# Eval("dispatch_reference ") %>' Visible="false" />

                            <asp:HiddenField ID="HiddenFieldProject" runat="server" Value='<%# Eval("project_id") %>' />
                            <asp:HiddenField ID="HiddenFieldSite" runat="server" Value='<%# Eval("site_id") %>' />

                            <asp:TextBox ID="TextBoxProject" runat="server" type="number" Placeholder="Project" OnClick="clearTextBox(this.id);" CssClass="form-control" Text="" Visible="false"></asp:TextBox>
                            
                        </InsertItemTemplate>

                        <EditItemTemplate>

                        </EditItemTemplate>
                    </asp:FormView>
                </ContentTemplate>
            </asp:UpdatePanel>--%>




                        <!-- Form Group (username)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="inputUsername">Property Name</label>
                            <input class="form-control" id="inputPropertName" type="text" placeholder="Enter Property Name" value="" />
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (Address Line 1)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputFirstName">Address Line 1</label>
                                <input class="form-control" id="inputFirstName" type="text" placeholder="Enter Address Line 1" value="" />
                            </div>
                            <!-- Form Group (Address Line 2)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLastName">Address Line 2</label>
                                <input class="form-control" id="inputLastName" type="text" placeholder="Enter Address Line 2" value="" />
                            </div>
                        </div>
                        <!-- Form Row        -->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (organization name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputOrgName">City</label>
                                <input class="form-control" id="inputOrgName" type="text" placeholder="City" value="" />
                            </div>
                            <!-- Form Group (location)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLocation">State/Province</label>
                                <input class="form-control" id="inputLocation" type="text" placeholder="Enter your State/Province" value="" />
                            </div>
                        </div>
                        <!-- Form Group (email address)-->

                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputEmailAddress">ZIP/Postal Code</label>
                                <input class="form-control" id="inputEmailAddress" type="email" placeholder="Enter your ZIP/Postal Code" value="" />
                            </div>

                            <!-- Form Group (phone number)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputPhone">Country</label>
                                <input class="form-control" id="inputPhone" type="tel" placeholder="Country" value="" />
                            </div>
                        </div>
                        <!-- Save changes button-->
                        <button class="btn btn-primary" type="button">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="container-xl px-4 mt-4">
        <div class="card">
            <div class="card-header">Municipality</div>
            <div class="card-body">
                <div class="mb-3">
                    <label class="small mb-1" for="inputUsername">Stand/ERF Number</label>
                    <input class="form-control" id="inputStandERFNumber" type="text" placeholder="Enter Number" value="" />
                </div>
                <!-- Form Row-->
                <div class="mb-3">
                    <label class="small mb-1" for="inputUtilites">Utilites</label>
                    <input class="form-control" id="inputUtilites" type="text" placeholder="Utilites" value="" />
                </div>

                <div class="row gx-3 mb-3">
                    <!-- Form Group (Address Line 2)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputRates">Rates</label>
                        <input class="form-control" id="inputRates" type="text" placeholder="Enter Rates" value="" />
                    </div>

                    <!-- Form Group (Address Line 1)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputElectricity">Electricity</label>
                        <input class="form-control" id="inputElectricity" type="text" placeholder="Enter Electricity" value="" />
                    </div>

                </div>

                <div class="row gx-3 mb-3">
                    <!-- Form Group (Address Line 1)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputWater">Water</label>
                        <input class="form-control" id="inputWater" type="text" placeholder="Enter Water" value="" />
                    </div>
                    <!-- Form Group (Address Line 2)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputWaterSanitation">Water and Sanitation</label>
                        <input class="form-control" id="inputWaterSanitation" type="text" placeholder="Enter Water and Sanitation" value="" />
                    </div>
                </div>

                <div class="row gx-3 mb-3">
                    <!-- Form Group (Address Line 1)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputGas">Gas</label>
                        <input class="form-control" id="inputGas" type="text" placeholder="Enter Gas" value="" />
                    </div>
                    <!-- Form Group (Address Line 2)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputRefuse">Refuse</label>
                        <input class="form-control" id="inputRefuse" type="text" placeholder="Enter Refuse" value="" />
                    </div>
                </div>

                <!-- Save changes button-->
                <button class="btn btn-primary" type="button">Save changes</button>
            </div>
        </div>
    </div>

    <div class="container-xl px-4 mt-4">
        <div class="card">
            <div class="card-header">Title Deeds</div>
            <div class="card-body">
                <div class="mb-3">
                    <label class="small mb-1" for="inputRegistationNumber">Registation Number</label>
                    <input class="form-control" id="inputRegistationNumber" type="text" placeholder="Enter Registation Number" value="" />
                </div>
                <!-- Form Row-->

                <div class="row gx-3 mb-3">
                    <!-- Form Group (Address Line 2)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputTitleName">Name</label>
                        <input class="form-control" id="inputTitleName" type="text" placeholder="Enter Name" value="" />
                    </div>

                    <!-- Form Group (Address Line 1)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputTitleSurname">Surname</label>
                        <input class="form-control" id="inputTitleSurname" type="text" placeholder="Enter Surname" value="" />
                    </div>

                </div>

                <div class="row gx-3 mb-3">
                    <!-- Form Group (Address Line 1)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputTrust">Trust</label>
                        <input class="form-control" id="inputTrust" type="text" placeholder="Enter Trust" value="" />
                    </div>
                    <!-- Form Group (Address Line 2)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputCompany">Company</label>
                        <input class="form-control" id="inputCompany" type="text" placeholder="Enter Company" value="" />
                    </div>
                </div>

                <!-- Save changes button-->
                <button class="btn btn-primary" type="button">Save changes</button>
            </div>
        </div>
    </div>

    <div class="container-xl px-4 mt-4">
        <div class="card">
            <div class="card-header">Bond Information</div>
            <div class="card-body">

                <div class="row gx-3 mb-3">
                    <!-- Form Group (Address Line 2)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputInstitution">Institution</label>
                        <input class="form-control" id="inputInstitution" type="text" placeholder="Enter Institution" value="" />
                    </div>

                    <!-- Form Group (Address Line 1)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputAccountNumber">Account Number</label>
                        <input class="form-control" id="inputAccountNumber" type="text" placeholder="Enter Name" value="" />
                    </div>

                </div>

                <!-- Form Row-->

                <div class="row gx-3 mb-3">
                    <!-- Form Group (Address Line 2)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputBondName">Name</label>
                        <input class="form-control" id="inputBondName" type="text" placeholder="Enter Name" value="" />
                    </div>

                    <!-- Form Group (Address Line 1)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputBondSurname">Surname</label>
                        <input class="form-control" id="inputBondSurname" type="text" placeholder="Enter Surname" value="" />
                    </div>

                </div>

                <div class="row gx-3 mb-3">
                    <!-- Form Group (Address Line 1)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputBondTrust">Trust</label>
                        <input class="form-control" id="inputBondTrust" type="text" placeholder="Enter Trust" value="" />
                    </div>
                    <!-- Form Group (Address Line 2)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputBondCompany">Company</label>
                        <input class="form-control" id="inputBondCompany" type="text" placeholder="Enter Company" value="" />
                    </div>
                </div>

                <!-- Save changes button-->
                <button class="btn btn-primary" type="button">Save changes</button>
            </div>
        </div>
    </div>

    <div class="container-xl px-4 mt-4">
        <div class="card">
            <div class="card-header">Household Insurance</div>
            <div class="card-body">

                <div class="row gx-3 mb-3">
                    <!-- Form Group (Address Line 2)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputHouseholdInsuranceInstitution">Institution</label>
                        <input class="form-control" id="inputHouseholdInsuranceInstitution" type="text" placeholder="Enter Institution" value="" />
                    </div>

                    <!-- Form Group (Address Line 1)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputPolicyNumber">Policy Number</label>
                        <input class="form-control" id="inputPolicyNumber" type="text" placeholder="Enter Policy Number" value="" />
                    </div>

                </div>

                <!-- Form Row-->

                <div class="row gx-3 mb-3">
                    <!-- Form Group (Address Line 2)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputBondName">Acceptance Date</label>
                        <input class="form-control" id="inputAcceptanceDate" type="date" value="" />
                    </div>

                    <!-- Form Group (Address Line 1)-->
                    <div class="col-md-6">
                        <label class="small mb-1" for="inputValue">Value</label>
                        <input class="form-control" id="inputValue" type="text" placeholder="Enter Value" value="" />
                    </div>

                </div>

                   <!-- Save changes button-->
            <button class="btn btn-primary" type="button">Save changes</button>
            </div>
        </div>
    </div>
</asp:Content>
