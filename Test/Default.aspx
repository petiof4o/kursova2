<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Test.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="faktura" GroupingText="Фактура" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Panel ID="poluchatel" GroupingText="Получател" runat="server">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Фирма:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="firma" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Задължително"
                                        ControlToValidate="firma"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="МОЛ:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="mol" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>zsdd
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Адрес:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="adres" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="тел.:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tel" runat="server"></asp:TextBox><asp:RegularExpressionValidator
                                        ID="RegularExpressionValidator1" runat="server" 
                                        ErrorMessage="* Само числа" ControlToValidate="tel" ValidationExpression="\d*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Label ID="datalabel" Text="Дата:" runat="server"></asp:Label>
                    <asp:TextBox ID="data" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Panel ID="dostavchik" GroupingText="Доставчик" runat="server">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Фирма:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="firma2" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Задължително"
                                        ControlToValidate="firma2"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="МОЛ:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="mol2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Адрес:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="adres2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="тел.:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tel2" runat="server"></asp:TextBox><asp:RegularExpressionValidator
                                        ID="RegularExpressionValidator2" runat="server" 
                                        ErrorMessage="* Само числа" ControlToValidate="tel2" ValidationExpression="\d*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="stoki" runat="server" GroupingText="Стоки и услуги">
        <table>
            <tr>
                <td>
                    №
                </td>
                <td>
                    Артикул
                </td>
                <td>
                    Количество
                </td>
                <td>
                    Ед.цена
                </td>
                <td>
                    Стойност
                </td>
            </tr>
            <tr>
                <td>
                    1
                </td>
                <td>
                    <asp:DropDownList ID="drop1" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="text1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="text2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="text3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    2
                </td>
                <td>
                    <asp:DropDownList ID="drop2" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="text4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="text5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="text6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button runat="server" ID="but1" Text="Изчисли" OnClick="but1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                    Сума:
                </td>
                <td>
                    <asp:TextBox ID="total" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
