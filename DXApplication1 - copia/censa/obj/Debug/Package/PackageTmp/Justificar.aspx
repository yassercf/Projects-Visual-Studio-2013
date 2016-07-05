<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Justificar.aspx.cs" Inherits="censa.Justificar" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-title">
        <div class="title_left">
            <h3>Incidencias de  <small>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="ASPxLabel" Font-Size="X-Large" Font-Bold="True">
                </dx:ASPxLabel>
                </small></h3>
        </div>
    </div>
    <div class="clearfix">
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <%-- SUB TITULO --%>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataDptoInc" Width="100%" KeyFieldName="id" OnRowUpdating="ASPxGridView1_RowUpdating">
                        <SettingsEditing Mode="Batch">
                        </SettingsEditing>
                        <SettingsDataSecurity AllowDelete="False" AllowInsert="False">
                        </SettingsDataSecurity>
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="NAME" VisibleIndex="0" ReadOnly="True">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataDateColumn FieldName="fecha" VisibleIndex="1" ReadOnly="True">
                            </dx:GridViewDataDateColumn>
                            <dx:GridViewDataCheckColumn FieldName="justificado" VisibleIndex="5">
                            </dx:GridViewDataCheckColumn>
                            <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="6" Visible="False">
                                <EditFormSettings Visible="False"></EditFormSettings>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataComboBoxColumn FieldName="tipoIncidencia" ReadOnly="True" VisibleIndex="2">
                                <PropertiesComboBox DataSourceID="DataTipoInc" TextField="descripcion" ValueField="id">
                                </PropertiesComboBox>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataComboBoxColumn FieldName="tipoJustificacion" VisibleIndex="3">
                                <PropertiesComboBox DataSourceID="DataTipoJust" TextField="descripcion" ValueField="id">
                                </PropertiesComboBox>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataMemoColumn FieldName="observaciones" ReadOnly="True" VisibleIndex="4">
                            </dx:GridViewDataMemoColumn>
                        </Columns>
                    </dx:ASPxGridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataDptoInc" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="spGetDptoInc" SelectCommandType="StoredProcedure" UpdateCommand="spUpdateJustificarInc" UpdateCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="dpto" Name="departamento" Type="Int32"></asp:SessionParameter>
                            <asp:SessionParameter SessionField="fechaActual" DbType="Date" Name="fecha"></asp:SessionParameter>
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="inci" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="tipoJustificacion" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="justificado" Type="Boolean"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:EntityDataSource runat="server" ID="DataIncidenciasAll" DefaultContainerName="bioEntities" ConnectionString="name=bioEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="Incidencia" EntityTypeFilter="Incidencia">
                    </asp:EntityDataSource>
                    <asp:SqlDataSource ID="DataUsuarios" runat="server" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="SELECT [USERID], [NAME] FROM [USERINFO]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="DataTipoJust" runat="server" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="SELECT * FROM [TipoJustificacion]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="DataTipoInc" runat="server" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="SELECT * FROM [TipoIncidencia]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
