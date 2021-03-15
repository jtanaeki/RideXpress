﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/RideXpress.Master" AutoEventWireup="true" CodeBehind="AddReport.aspx.cs" Inherits="RideXpress_StarterKit.AddReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="first">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h1>Add Incident Report</h1>
                </div>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="CarListLabel" runat="server" Text="Car"
                        AssociatedControlID="CarList" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:DropDownList ID="CarList" runat="server" CssClass="form-control">
                        </asp:DropDownList>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="CarListRequired" runat="server" ErrorMessage="Please Select A Vehicle" 
                                    InitialValue="0" ControlToValidate="CarList" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="DateOfIncidentLabel" runat="server" Text="Date of Incident"
                        AssociatedControlID="DateOfIncident" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="DateOfIncident" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="DateOfIncidentRequired" runat="server" ErrorMessage="Date is Required"
                                    ControlToValidate="DateOfIncident" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="ReportNameLabel" runat="server" Text="Name of Report"
                        AssociatedControlID="ReportName" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="ReportName" runat="server" CssClass="form-control" MaxLength="100" TextMode="SingleLine"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="ReportNameRequired" runat="server" ErrorMessage="Name is Required"
                                    ControlToValidate="ReportName" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="ReportDescriptionLabel" runat="server" Text="Description"
                        AssociatedControlID="ReportDescription" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="ReportDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" MaxLength="200"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="ReportDescriptionRequired" runat="server" ErrorMessage="Description is Required"
                                    ControlToValidate="ReportDescription" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-4 col-xs-offset-4">
                        <asp:Button ID="ReportAddButton" runat="server" Text="Submit" CssClass="btn btn-success"
                            OnClick="ReportAddButton_Click" ValidationGroup="AllValidators" />
                        <asp:HyperLink CssClass="btn btn-default" NavigateUrl="~/Reports.aspx" runat="server" Text="Back" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>