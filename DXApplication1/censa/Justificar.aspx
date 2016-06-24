<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Justificar.aspx.cs" Inherits="censa.Justificar" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="blank1">Incidencias de 
        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="ASPxLabel" Font-Size="X-Large" Font-Bold="True">
        </dx:ASPxLabel>
    </h3>
    <div class="bs-example4" data-example-id="contextual-table">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="DataIncidenciasAll" KeyFieldName="id" Width="100%">
            <SettingsPager PageSize="15">
            </SettingsPager>
            <SettingsEditing Mode="Batch">
            </SettingsEditing>
            <Settings ShowGroupPanel="True" />
            <SettingsDataSecurity AllowDelete="False" AllowInsert="False">
            </SettingsDataSecurity>
            <SettingsSearchPanel Visible="True">
            </SettingsSearchPanel>
            <Columns>
                <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="0" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="fecha" VisibleIndex="1" Caption="Fecha" ReadOnly="True">
                    <EditFormSettings Visible="False" />
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataCheckColumn FieldName="justificado" VisibleIndex="6" Caption="Justificar">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataCheckColumn>
                <dx:GridViewCommandColumn Caption="Acciones" VisibleIndex="7" Visible="False">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewCommandColumn>
                <dx:GridViewDataComboBoxColumn FieldName="usuario" Caption="Usuarios" VisibleIndex="2" ReadOnly="True">
                    <PropertiesComboBox DataSourceID="DataUsuarios" TextField="NAME" ValueField="USERID">
                    </PropertiesComboBox>
                    <EditFormSettings Visible="False" />
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn FieldName="tipoIncidencia" Caption="Incidencias" VisibleIndex="3" ReadOnly="True">
                    <PropertiesComboBox DataSourceID="DataTipoInc" TextField="descripcion" ValueField="id">
                    </PropertiesComboBox>
                    <EditFormSettings Visible="False" />
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn FieldName="tipoJustificacion" Caption="Justificaci&#243;n" VisibleIndex="4">
                    <PropertiesComboBox DataSourceID="DataTipoJust" TextField="descripcion" ValueField="id">
                    </PropertiesComboBox>
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataMemoColumn FieldName="observaciones" Caption="Observaciones" VisibleIndex="5" ReadOnly="True">
                    <EditFormSettings Visible="False" />
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <CellStyle HorizontalAlign="Justify" VerticalAlign="Middle" Wrap="True">
                    </CellStyle>
                </dx:GridViewDataMemoColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:EntityDataSource runat="server" ID="DataIncidenciasAll" DefaultContainerName="bioEntities" ConnectionString="name=bioEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="Incidencia" EntityTypeFilter="Incidencia">
        </asp:EntityDataSource>
        <asp:SqlDataSource ID="DataUsuarios" runat="server" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="SELECT [USERID], [NAME] FROM [USERINFO]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DataTipoJust" runat="server" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="SELECT * FROM [TipoJustificacion]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DataTipoInc" runat="server" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="SELECT * FROM [TipoIncidencia]"></asp:SqlDataSource>
    </div>
</asp:Content>
