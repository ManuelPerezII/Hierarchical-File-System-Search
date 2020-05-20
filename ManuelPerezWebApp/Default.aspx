<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ManuelPerezWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET FileSystem Search</h1>
    
    </div>
    <div>
    <table>
        <tr>
            <td>
                Search by Filename &nbsp&nbsp
            </td>
            <td>
                <asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>&nbsp&nbsp
            </td>
            <td>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </td>
        </tr>
    </table>
        <br />

    <table style="width:100%">        
        <tr>            
            <td>
                <asp:GridView ID="gvResults" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                    AutoGenerateColumns="false" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                File ID
                            </HeaderTemplate>
                            <HeaderStyle Width="10%" />
                            <ItemTemplate>
                                <%# Eval("FileID") %>
                            </ItemTemplate>                                        
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                Full Path
                            </HeaderTemplate>
                            <HeaderStyle Width="30%" />
                            <ItemTemplate>
                                <%# Eval("Path") %>
                            </ItemTemplate>                                        
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                FileName Linked
                            </HeaderTemplate>
                            <HeaderStyle Width="30%" />
                            <ItemTemplate>
                                <%# Eval("FullPath") %>
                            </ItemTemplate>                                        
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                Read Only
                            </HeaderTemplate>
                            <HeaderStyle Width="5%" />
                            <ItemTemplate>
                                <%# Eval("IsReadOnly") %>
                            </ItemTemplate>                                        
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                Size
                            </HeaderTemplate>
                            <HeaderStyle Width="10%" />
                            <ItemTemplate>
                                <%# Eval("Size") %>
                            </ItemTemplate>                                        
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                Created Date
                            </HeaderTemplate>
                            <HeaderStyle Width="30%" />
                            <ItemTemplate>
                                <%# Eval("DateCreated") %>
                            </ItemTemplate>                                        
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </td>
        </tr>
    </table>
    </div>

</asp:Content>
