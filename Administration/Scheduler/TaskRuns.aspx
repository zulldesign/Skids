<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="TaskRuns.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Scheduler.TaskRuns" %>

<%@ Import Namespace="Magelia.WebStore.Data.Entities" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litTaskRuns" runat="server" meta:resourcekey="litTaskRuns" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink ID="hlBackToTasks" runat="server" SkinID="Minor" NavigateUrl="~/Administration/Scheduler/List.aspx" meta:resourcekey="hlBackToTasks" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblTask" runat="server" AssociatedControlID="ddlTask" meta:resourcekey="lblTask" />
            <asp:DropDownList ID="ddlTask" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="TaskId">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblStatus" runat="server" AssociatedControlID="ddlStatus" meta:resourcekey="lblStatus" />
            <asp:DropDownList ID="ddlStatus" runat="server">
                <asp:ListItem />
                <asp:ListItem Text="Running" Value="0" />
                <asp:ListItem Text="Completed" Value="1" />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblSubStatus" runat="server" AssociatedControlID="ddlSubStatus" meta:resourcekey="lblSubStatus" />
            <asp:DropDownList ID="ddlSubStatus" runat="server">
                <asp:ListItem />
                <asp:ListItem Text="Success" Value="0" />
                <asp:ListItem Text="Error" Value="1" />
                <asp:ListItem Text="Canceled" Value="2" />
            </asp:DropDownList>
        </div>
        <div class="field break">
            <asp:Label ID="lblStartDate" runat="server" meta:resourcekey="lblStartDate" AssociatedControlID="ddlStartDateOperator" />
            <asp:DropDownList ID="ddlStartDateOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" Selected="True" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <mag:DateTimePicker ID="mdtpStartDate" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblEndDate" runat="server" meta:resourcekey="lblEndDate" AssociatedControlID="ddlEndDateOperator" />
            <asp:DropDownList ID="ddlEndDateOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" Selected="True" />
            </asp:DropDownList>
            <mag:DateTimePicker ID="mdtpEndDate" runat="server" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text="<%$ Resources:Global, Reset %>" SkinID="Minor" OnClick="lbtnReset_Click" meta:resourcekey="lbnReset" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text="<%$ Resources:Global, Search %>" SkinID="Major" ValidationGroup="vgSearch" OnClick="lbtnSearch_Click" meta:resourcekey="lbnSearch" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview runat="server" ID="mgvTaskRuns" DataKeyNames="TaskRunId" OnItemDataBound="mgvTaskRuns_ItemDataBound" OnCommand="mgvTaskRuns_Command">
        <columns>
                <mag:GridViewColumn AllowSorting="true" SortExpression="TaskCode" meta:resourcekey="mgvcTaskCode">
                    <celltemplate>
                        <asp:label runat="server" Text='<%# Eval("TaskCode") %>' tooltip='<%# Eval("TaskDescription") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="StartDate" meta:resourcekey="mgvcStartDate">
                    <celltemplate>
                        <asp:label runat="server" Text='<%# ((Nullable<DateTimeOffset>)Eval("StartDate")).ToUserTimeZoneString() %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="EndDate" meta:resourcekey="mgvcEndDate">
                    <celltemplate>
                        <asp:label runat="server" Text='<%# ((Nullable<DateTimeOffset>)Eval("EndDate")).ToUserTimeZoneString()%>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="Status" meta:resourcekey="mgvcStatus">
                    <celltemplate>
                        <asp:label runat="server" Text='<%# Eval("Status") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="SubStatus.Value" meta:resourcekey="mgvcSubStatus" id="mgvcSubStatus">
                    <celltemplate>
                        <asp:label runat="server" Text='<%# Eval("SubStatus") %>' />
                        <asp:panel runat="server" visible='<%# ((TaskRunStatus)Eval("Status")) == TaskRunStatus.Running %>'>
                            <div class="progressbar" runat="server" id="progress"></div>
                            <asp:label id="lblProgressMessage" runat="server" text='<%# Eval("LastProgressMessage.Message") %>' />
                        </asp:panel>
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                    <celltemplate>
                        <ul>
                            <li runat="server" visible='<%# ((TaskRunStatus)Eval("Status")) == TaskRunStatus.Running %>'>
                                <asp:ImageButton runat="server" skinid="Cancel" meta:resourceKey="imgbtnCancel" CommandName="CancelJob" />
                            </li>
                            <li>
                                <asp:ImageButton runat="server" skinid="View" meta:resourceKey="imgbtnViewDetails" CommandName="ViewDetails" />
                            </li>
                        </ul>
                    </celltemplate>
                </mag:GridViewColumn>
            </columns>
    </mag:Gridview>

    <asp:Panel ID="pnlTaskRunDetails" runat="server" SkinID="Popin">
        <header>
            <h4>
                <asp:Literal runat="server" meta:resourcekey="litTaskRunDetails" />
            </h4>
        </header>
        <div class="content">
            <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <mag:Gridview runat="server" ID="mgvTaskRunLogs" DataKeyNames="LoggingEventId" oncommand="mgvTaskRunLogs_Command">
                        <columns>
                            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Date" meta:resourcekey="mgvcLogDate">
                                <celltemplate>
                                    <asp:Literal runat="server" Text='<%# ((TaskRunLogListItemViewModel)Container.DataItem).Date.ToUserTimeZoneString() %>' />
                                </celltemplate>
                            </mag:GridViewColumn>
                            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Message" meta:resourcekey="mgvcLogMessage">
                                <celltemplate>
                                    <asp:Literal runat="server" Text='<%# Eval("Message") %>' />
                                </celltemplate>
                            </mag:GridViewColumn>
                            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="LogLevel" meta:resourcekey="mgvcLogLevel">
                                <celltemplate>
                                    <asp:Literal runat="server" Text='<%# Eval("Level") %>' />
                                </celltemplate>
                            </mag:GridViewColumn>
                            <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                                <celltemplate>
                                    <ul>
                                        <li>
                                            <asp:ImageButton runat="server" skinid="View" meta:resourceKey="imgbtnViewDetails" CommandName="ViewDetails" />
                                        </li>
                                    </ul>
                                </celltemplate>
                            </mag:GridViewColumn>
                        </columns>
                    </mag:Gridview>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </asp:Panel>
</asp:Content>
