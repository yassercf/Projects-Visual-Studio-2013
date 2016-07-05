<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Default.aspx.cs" Inherits="censa._Default" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-title">
        <div class="title_left">
            <h3>Incidencias de  <small>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="ASPxLabel" Font-Size="X-Large" Font-Bold="True"></dx:ASPxLabel>
            </small></h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <%-- SUB TITULO --%>

                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" ClientInstanceName="ASPxGridView1"
                        Width="100%" AutoGenerateColumns="False" DataSourceID="DataIncidencias" KeyFieldName="id" SettingsText-CommandEdit="Justificar" >
                        <SettingsPager PageSize="50" />
                        <Settings ShowHeaderFilterButton="True" />
                        <SettingsDataSecurity AllowInsert="False" AllowDelete="False"></SettingsDataSecurity>

                        <SettingsSearchPanel Visible="True" />

                        <SettingsText CommandEdit="Justificar"></SettingsText>

                        <EditFormLayoutProperties ColCount="2">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="tipo Justificacion" Caption="Justificaci&#243;n">
                                    <CaptionSettings Location="Top"></CaptionSettings>
                                </dx:GridViewColumnLayoutItem>
                                <dx:EditModeCommandLayoutItem HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="observaciones" Caption="Observaciones" ColSpan="2">
                                    <CaptionSettings Location="Top"></CaptionSettings>
                                </dx:GridViewColumnLayoutItem>
                            </Items>
                        </EditFormLayoutProperties>
                        <Columns>
                            <dx:GridViewCommandColumn VisibleIndex="10" ShowEditButton="True" Caption="Acciones" ButtonType="Button"></dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn FieldName="NAME" Visible="False" VisibleIndex="0"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataDateColumn FieldName="fecha" VisibleIndex="1" ReadOnly="True">
                                <EditFormSettings Visible="False"></EditFormSettings>
                            </dx:GridViewDataDateColumn>
                            <dx:GridViewDataCheckColumn FieldName="justificado" VisibleIndex="8" ReadOnly="True">
                                <EditFormSettings Visible="False"></EditFormSettings>
                            </dx:GridViewDataCheckColumn>
                            <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="9" Visible="False">
                                <EditFormSettings Visible="False"></EditFormSettings>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTimeEditColumn FieldName="horaE" Caption="Entrada" VisibleIndex="2" ReadOnly="True">
                                <PropertiesTimeEdit DisplayFormatString=""></PropertiesTimeEdit>
                                <EditFormSettings Visible="False"></EditFormSettings>
                            </dx:GridViewDataTimeEditColumn>
                            <dx:GridViewDataTimeEditColumn FieldName="horaS" Caption="Salida" VisibleIndex="3" ReadOnly="True">
                                <EditFormSettings Visible="False"></EditFormSettings>
                            </dx:GridViewDataTimeEditColumn>
                            <dx:GridViewDataComboBoxColumn FieldName="tipoIncidencia" ReadOnly="True" VisibleIndex="4">
                                <PropertiesComboBox DataSourceID="DataTipoInc" ValueField="id" TextField="descripcion"></PropertiesComboBox>
                                <EditFormSettings Visible="False"></EditFormSettings>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataComboBoxColumn FieldName="tipoJustificacion" VisibleIndex="6">
                                <PropertiesComboBox DataSourceID="DataTipoJust" TextField="descripcion" ValueField="id"></PropertiesComboBox>
                                <EditFormSettings CaptionLocation="Top"></EditFormSettings>

                                <EditFormCaptionStyle VerticalAlign="Top"></EditFormCaptionStyle>

                                <HeaderStyle VerticalAlign="Top"></HeaderStyle>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataMemoColumn FieldName="observaciones" VisibleIndex="7">
                                <EditFormSettings CaptionLocation="Top"></EditFormSettings>

                                <HeaderStyle VerticalAlign="Top"></HeaderStyle>
                            </dx:GridViewDataMemoColumn>
                        </Columns>
                        <Paddings Padding="0px" />
                         <%--<Border BorderWidth="0px" />
                        <BorderBottom BorderWidth="0px" />--%>
                        <%-- DXCOMMENT: Configure ASPxGridView's columns in accordance with datasource fields --%>
                    </dx:ASPxGridView>


                    <%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>

                    <asp:SqlDataSource runat="server" ID="DataIncidencias" ConnectionString="Data Source=SRV-APPS;Initial Catalog=bio;Persist Security Info=True;User ID=sa;Password=20icore.15;MultipleActiveResultSets=True;Application Name=EntityFramework" DeleteCommand="DELETE FROM [Incidencia] WHERE [id] = @original_id" InsertCommand="INSERT INTO [Incidencia] ([fecha], [horaE], [horaS], [usuario], [tipoIncidencia], [tipoJustificacion], [observaciones], [justificado]) VALUES (@fecha, @horaE, @horaS, @usuario, @tipoIncidencia, @tipoJustificacion, @observaciones, @justificado)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="spGetUserInc" UpdateCommand="UPDATE [Incidencia] SET [tipoJustificacion] = @tipoJustificacion, [observaciones] = @observaciones, [justificado] = @justificado WHERE [id] = @original_id" SelectCommandType="StoredProcedure">

                        <DeleteParameters>
                            <asp:Parameter Name="original_id" Type="Int32"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter DbType="Date" Name="fecha"></asp:Parameter>
                            <asp:Parameter DbType="Time" Name="horaE"></asp:Parameter>
                            <asp:Parameter DbType="Time" Name="horaS"></asp:Parameter>
                            <asp:Parameter Name="usuario" Type="String"></asp:Parameter>
                            <asp:Parameter Name="tipoIncidencia" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="tipoJustificacion" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="observaciones" Type="String"></asp:Parameter>
                            <asp:Parameter Name="justificado" Type="Boolean"></asp:Parameter>
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                            <asp:SessionParameter SessionField="fechaActual" DbType="Date" Name="fecha"></asp:SessionParameter>
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fecha" DbType="Date"></asp:Parameter>
                            <asp:Parameter Name="horaE" DbType="Time"></asp:Parameter>
                            <asp:Parameter Name="horaS" DbType="Time"></asp:Parameter>
                            <asp:Parameter Name="usuario" Type="String"></asp:Parameter>
                            <asp:Parameter Name="tipoIncidencia" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="tipoJustificacion" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="observaciones" Type="String"></asp:Parameter>
                            <asp:Parameter Name="justificado" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="original_id" Type="Int32"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="DataTipoJust" runat="server" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="SELECT * FROM [TipoJustificacion]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="DataTipoInc" runat="server" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="SELECT * FROM [TipoIncidencia]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
