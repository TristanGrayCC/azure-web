<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarList.aspx.cs" Inherits="CTS_Web_App.CarList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="table-responsive">
        <asp:GridView ID="CarsGridview" runat="server" AutoGenerateColumns="false"
            BackColor="White" BorderColor="#999999"
            BorderStyle="None" BorderWidth="1px" CellPadding="3"
            GridLines="Vertical" ShowFooter="true" CssClass="table table-responsive table-striped table-hover"
            OnRowCancelingEdit="CarsGridview_RowCancelingEdit" OnRowDeleting="CarsGridview_RowDeleting"
            OnRowEditing="CarsGridview_RowEditing" OnRowUpdating="CarsGridview_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="LblCarID" runat="server" Text='<%# Bind("ID")%>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtCarID" runat="server" Text='<%# Bind("ID")%>'></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="LblCarName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtEditCarName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtCarName" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Type">
                    <ItemTemplate>
                        <asp:Label ID="LblCarType" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtEditCarType" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtCarType" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Year">
                    <ItemTemplate>
                        <asp:Label ID="LblCarYear" runat="server" Text='<%# Bind("Year") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtEditCarYear" runat="server" Text='<%# Bind("Year") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtCarYear" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="150" HeaderText="Operations">
                    <ItemTemplate>
                        <asp:Button CssClass="btn btn-info btn-sm" ID="BtnEdit" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button CssClass="btn btn-info btn-sm" ID="BtnDelete" runat="server" CommandName="Delete" Text="Delete" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button CssClass="btn btn-info btn-sm" ID="BthUpdate" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button CssClass="btn btn-info btn-sm" ID="BtnCancel" runat="server" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button CssClass="btn btn-info btn-sm" ID="BtnInsert" runat="server" Text="Insert" OnClick="BtnInsert_Click" />
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle CssClass="thead-dark" />
            <%--<FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
<PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />--%>
            <AlternatingRowStyle BackColor="#cccccc" ForeColor="Black" />
            <RowStyle CssClass="cursor-pointer" BackColor="Silver" ForeColor="Black" />
            <%--<SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
<SortedAscendingCellStyle BackColor="#F1F1F1" />
<SortedAscendingHeaderStyle BackColor="#0000A9" />
<SortedDescendingCellStyle BackColor="#CAC9C9" />
<SortedDescendingHeaderStyle BackColor="#000065" />--%>
        </asp:GridView>
    </div>
</asp:Content>
