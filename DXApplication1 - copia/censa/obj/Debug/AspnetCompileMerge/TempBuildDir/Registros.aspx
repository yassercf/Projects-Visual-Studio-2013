<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="censa.userMarks" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-title">
        <div class="title_left">
            <h3>Registros de Entrada y Salidas <small>
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
                    <dx:ASPxLabel ID="labelHorario" runat="server" Text="" Font-Size="Small" Font-Bold="True" RightToLeft="False" Width="100%">
                    </dx:ASPxLabel>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="bs-example4" data-example-id="contextual-table">
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="DataUserMarks" Width="100%">
                            <SettingsPager PageSize="15">
                            </SettingsPager>
                            <Settings ShowHeaderFilterButton="True" />
                            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="dia" ReadOnly="True" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="fullfecha" ReadOnly="True" VisibleIndex="1">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="nombre" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
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
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
