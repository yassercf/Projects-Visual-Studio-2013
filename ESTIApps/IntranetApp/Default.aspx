<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Default.aspx.cs" Inherits="IntranetApp._Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server" >
    <%-- DXCOMMENT: Configure ASPxGridView control --%>
    <dx:ASPxImageGallery ID="ASPxImageGallery1" runat="server" DataSourceID="SqlDataSource1" Width="95%" ImageContentBytesField="Foto" NavigateUrlField="url" TextField="nombre" Theme="Moderno" AllowPaging="False" EnablePagingCallbackAnimation="True" EnableTheming="True" Font-Names="AR CENA" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ThumbnailImageSizeMode="FitProportional">
        <SettingsFolder ImageCacheFolder="~\Thumb\" />
        <Styles>
            <ThumbnailTextArea HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True">
            </ThumbnailTextArea>
            <Content>
                <Border BorderStyle="None" />
            </Content>
            <Item>
                <Border BorderStyle="None" />
            </Item>
        </Styles>
        <SettingsFlowLayout ItemsPerPage="10" />
        <SettingsTableLayout RowsPerPage="1" />
        <Border BorderStyle="None" />
        <BorderBottom BorderStyle="None" />
    </dx:ASPxImageGallery>
<%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:SistemasESTIConnectionString %>' OldValuesParameterFormatString="original_{0}" SelectCommand="spGetApps" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="idUsuario" SessionField="userid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>