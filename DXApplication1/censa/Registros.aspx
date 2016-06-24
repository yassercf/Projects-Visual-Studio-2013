<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="censa.userMarks" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <%-- DXCOMMENT: Configure ASPxGridView control --%>
    <h3 class="blank1">Control de Entradas y Salidas de
        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="ASPxLabel" Font-Size="X-Large" Font-Bold="True" >
        </dx:ASPxLabel>
    </h3>
    <div class="bs-example4" data-example-id="contextual-table">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="DataUserMarks" Width="100%">
            <SettingsPager PageSize="15">
            </SettingsPager>
            <Settings ShowHeaderFilterButton="True" />
            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
            <Columns>
                <dx:GridViewCommandColumn Visible="False" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="dia" ReadOnly="True" VisibleIndex="1" Caption="Día">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="fullfecha" ReadOnly="True" VisibleIndex="2" Caption="Fecha">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="nombre" VisibleIndex="5" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTimeEditColumn Caption="Hora de Entrada" FieldName="entrada" VisibleIndex="3">
                    <PropertiesTimeEdit DisplayFormatString="">
                    </PropertiesTimeEdit>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataTimeEditColumn>
                <dx:GridViewDataTimeEditColumn Caption="Hora de Salida" FieldName="salida" VisibleIndex="4">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataTimeEditColumn>
                <dx:GridViewBandColumn Caption="Horarios" VisibleIndex="7">
                    <Columns>
                        <dx:GridViewDataComboBoxColumn VisibleIndex="0">
                            <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="horaEntrada" DisplayFormatString="t"></PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>

                    </Columns>
                </dx:GridViewBandColumn>

            </Columns>
            <Paddings Padding="0px" />
            <BorderBottom BorderWidth="1px" />
        </dx:ASPxGridView>
        <asp:SqlDataSource runat="server" ID="DataUserMarks" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="spGetUserMarks" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                <asp:SessionParameter SessionField="fechaActual" DbType="Date" Name="fecha"></asp:SessionParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:bioConnectionString %>' SelectCommand="SELECT [horaEntrada], [horaSalida] FROM [Configuracion_Horario]"></asp:SqlDataSource>
    </div>
</asp:Content>
