<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Scheduler.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litTaskRuns" runat="server" meta:resourcekey="litTasks" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" meta:resourceKey="hlViewTaskRuns" SkinID="Major" NavigateUrl="TaskRuns.aspx" />
        </li>
        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
            <asp:HyperLink ID="hlNew" runat="server" Text='<%$ resources:global, AddNew %>' SkinID="Major" NavigateUrl="Edit.aspx" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field inline">
            <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
            <asp:TextBox runat="server" ID="tbxCode" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text="<%$ Resources:Global, Reset %>" SkinID="Minor" OnClick="lbtnReset_Click" meta:resourcekey="lbnReset" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text="<%$ Resources:Global, Search %>" SkinID="Major" VOnClick="lbtnSearch_Click" meta:resourcekey="lbtnSearch" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview runat="server" ID="mgvTasks" DataKeyNames="TaskId" OnCommand="mgvTasks_Command">
        <columns>
                <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                    <celltemplate>
                        <asp:label runat="server" Text='<%# Eval("Code") %>' tooltip='<%# Eval("Description") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="Description" meta:resourceKey="mgvcDescription">
                    <cellTemplate>
                        <asp:label runat="server" Text='<%# Eval("Description") %>' />
                    </cellTemplate>
                </mag:gridviewcolumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="IsActive" meta:resourceKey="mgvcIsActive">
                    <cellTemplate>
                        <asp:checkbox runat="server" Checked='<%#Eval("IsActive") %>' enabled="false" />
                    </cellTemplate>
                </mag:gridviewcolumn>
                <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                    <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton runat="server" SkinID="View" CommandName="ViewTaskRuns" meta:resourceKey="imgbtnViewTaskRuns" />
                            </li>
                            <li>
                                <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditTask"  />
                            </li>
                            <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
                                <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeleteTask" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
                            </mag:FeaturePanel>
                        </ul>
                    </celltemplate>
                </mag:GridViewColumn>
            </columns>
    </mag:Gridview>
</asp:Content>
