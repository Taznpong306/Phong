﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="qlNhanVien.aspx.vb" Inherits="Lab04.qlNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <h2 class="text-center">DANH SÁCH NHÂN VIÊN</h2>

        <asp:SqlDataSource ID="dsNhanVien" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
            DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" 
            InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" 
            SelectCommand="SELECT * FROM [NhanVien]"
            UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
            <DeleteParameters>
                <asp:Parameter Name="MaNV" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HoNV" Type="String" />
                <asp:Parameter Name="TenNV" Type="String" />
                <asp:Parameter Name="Phai" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="NgaySinh" />
                <asp:Parameter Name="NoiSinh" Type="String" />
                <asp:Parameter Name="MaPhong" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoNV" Type="String" />
                <asp:Parameter Name="TenNV" Type="String" />
                <asp:Parameter Name="Phai" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="NgaySinh" />
                <asp:Parameter Name="NoiSinh" Type="String" />
                <asp:Parameter Name="MaPhong" Type="Int32" />
                <asp:Parameter Name="MaNV" Type="Int32" />
            </UpdateParameters>

        </asp:SqlDataSource>
        <asp:GridView ID="gvNhanVien" runat="server" AutoGeneralteColumns="false" 
            DataSourcID="dsNhanVien" DataSourceID="dsNhanVien" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="MaNV">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaNV" HeaderText="MaNV" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
                <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV" />
                <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV" />
                <asp:CheckBoxField DataField="Phai" HeaderText="Phai" SortExpression="Phai" />
                <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
                <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
                <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
</asp:Content>
