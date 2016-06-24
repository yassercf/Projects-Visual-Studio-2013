<%@ Page Title="" Language="C#" MasterPageFile="~/AdminM.master" AutoEventWireup="true" CodeBehind="apps.aspx.cs" Inherits="IntranetApp.Admin.apps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource1" KeyFieldName="id" Width="100%" EnableTheming="True" Theme="Office2010Blue">
        <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>
        <Settings ShowFilterBar="Visible" ShowHeaderFilterButton="True" />
        <SettingsBehavior ConfirmDelete="True" />
        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" Modal="True" VerticalAlign="WindowCenter" />
        </SettingsPopup>
        <SettingsSearchPanel Visible="True" />
        <EditFormLayoutProperties ColCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Foto" RowSpan="4">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="nombre">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="url">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="esPublico">
                </dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem HorizontalAlign="Right">
                </dx:EditModeCommandLayoutItem>
            </Items>
            <SettingsItemCaptions Location="Top" />
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" Visible="False" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Aplicación" FieldName="nombre" VisibleIndex="3">
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle HorizontalAlign="Center">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn Caption="Pública" FieldName="esPublico" VisibleIndex="5" Width="2%">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn Caption="Dirección" FieldName="url" VisibleIndex="4">
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle HorizontalAlign="Center">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataBinaryImageColumn Caption="Imagén" FieldName="foto" Name="Foto" VisibleIndex="2" Width="20%">
                <PropertiesBinaryImage>
                    <EditingSettings Enabled="True">
                    </EditingSettings>
                </PropertiesBinaryImage>
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle HorizontalAlign="Center">
                </CellStyle>
            </dx:GridViewDataBinaryImageColumn>
        </Columns>
        <Styles>
            <FixedColumn Wrap="True">
            </FixedColumn>
        </Styles>
    </dx:ASPxGridView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SistemasESTIEntities" DefaultContainerName="SistemasESTIEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="apps">
    </asp:EntityDataSource>
</asp:Content>
