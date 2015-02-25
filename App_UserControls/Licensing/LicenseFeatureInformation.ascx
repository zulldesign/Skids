<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LicenseFeatureInformation.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Licensing.LicenseFeatureInformation" %>
<div class="licenseFeature">
    <fieldset>
        <legend>
            <asp:Literal runat="server" meta:resourceKey="litLicenseDetails" />
        </legend>
        <p>
            <asp:Literal runat="server" meta:resourceKey="litFeaturesIntro" />
        </p>
        <table class="gridView">
            <thead>
                <tr>
                    <th>
                        <asp:Literal ID="litFeatures1" runat="server" meta:resourceKey="litFeatures" />
                    </th>
                    <th>
                        <asp:Literal ID="litEdition1" runat="server" />
                        <asp:Literal ID="litEditionSuffix1" runat="server" meta:resourceKey="litEditionSuffix" />
                    </th>
                    <th>
                        <asp:Literal ID="litFeatures2" runat="server" meta:resourceKey="litFeatures" />
                    </th>
                    <th>
                        <asp:Literal ID="litEdition2" runat="server" />
                        <asp:Literal ID="litEditionSuffix2" runat="server" meta:resourceKey="litEditionSuffix" />
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <asp:Literal ID="litMaxNumberOfSellers" runat="server" meta:resourceKey="litMaxNumberOfSellers" />
                    </td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfSellersValue" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfStoresPerSeller" runat="server" meta:resourceKey="litMaxNumberOfStoresPerSeller" />
                    </td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfStoresPerSellerValue" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Literal ID="litMaxNumberOfWarehousesPerSeller" runat="server" meta:resourceKey="litMaxNumberOfWarehousesPerSeller" />
                    </td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfWarehousesPerSellerValue" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfCatalogsPerSeller" runat="server" meta:resourceKey="litMaxNumberOfCatalogsPerSeller" />
                    </td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfCatalogsPerSellerValue" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Literal ID="litMaxNumberOfProductsPerSeller" runat="server" meta:resourceKey="litMaxNumberOfProductsPerSeller" />
                    </td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfProductsPerSellerValue" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litCanUseContentManagement" runat="server" meta:resourceKey="litCanUseContentManagement" />
                    </td>
                    <td>
                        <asp:CheckBox Enabled="false" runat="server" ID="cbxFeaturesCanUseContentManagement" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Literal ID="litCanBulkEditPrices" runat="server" meta:resourceKey="litCanBulkEditPrices" />
                    </td>
                    <td>
                        <asp:CheckBox Enabled="false" runat="server" ID="cbxFeaturesCanBulkEditPrices" />
                    </td>
                    <td>
                        <asp:Literal ID="litCanBulkEditInventory" runat="server" meta:resourceKey="litCanBulkEditInventory" />
                    </td>
                    <td>
                        <asp:CheckBox Enabled="false" runat="server" ID="cbxFeaturesCanBulkEditInventory" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Literal ID="litCanManageRoles" runat="server" meta:resourceKey="litCanManageRoles" />
                    </td>
                    <td>
                        <asp:CheckBox Enabled="false" runat="server" ID="cbxFeaturesCanManageRoles" />
                    </td>
                    <td>
                        <asp:Literal ID="litCanUseEtl" runat="server" meta:resourceKey="litCanUseEtl" />
                    </td>
                    <td>
                        <asp:CheckBox Enabled="false" runat="server" ID="cbxFeaturesCanUseEtl" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Literal ID="litMaxNumberOfAdministrators" runat="server" meta:resourceKey="litMaxNumberOfAdministrators" />
                    </td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfAdministratorsValue" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfUsers" runat="server" meta:resourceKey="litMaxNumberOfUsers" />
                    </td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfUsersValue" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Literal ID="litMaxNumberOfActivations" runat="server" meta:resourceKey="litMaxNumberOfActivations" /></td>
                    <td>
                        <asp:Literal ID="litMaxNumberOfActivationsValue" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litCanUseTierPricing" runat="server" meta:resourceKey="litCanUseTierPricing" />
                    </td>
                    <td>
                        <asp:CheckBox Enabled="false" runat="server" ID="cbxFeaturesCanUseTierPricing" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Literal ID="litCheckComputerName" runat="server" meta:resourceKey="litCheckComputerName" />
                    </td>
                    <td>
                        <asp:CheckBox Enabled="false" runat="server" ID="cbxFeaturesCheckComputerName" />
                    </td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </fieldset>
</div>
