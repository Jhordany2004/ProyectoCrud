﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mp.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ProyectoCrud.Pages.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Inicio
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
        <br />
        <div class="mx-auto" style="width:300px">
            <h2>Listado de registros</h2>
        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col align-self-end">
                    <asp:Button runat="server" ID="BtnCreate" CssClass="btn btn-success form-control-sm" Text="Crear" OnClick ="BtnCreate_Click"/>
                </div>
            </div>
        </div>
        <br />
        <div class="container row">
            <div class="table small">
                <asp:GridView runat="server" ID="gvusuarios" class="table table-borderless table-hover">
                    <Columns>
                        <asp:TemplateField HeaderText="Opciones del administrador">
                            <ItemTemplate>
                                <asp:Button runat="server" Text="Ver" CssClass="btn form-control-sm btn-info" ID="BtnRead" OnClicK ="BtnRead_Click"/>
                                <asp:Button runat="server" Text="Editar" CssClass="btn form-control-sm btn-warning" ID="BtnUpdate" OnClick ="BtnUpdate_Click"/>
                                <asp:Button runat="server" Text="Eliminar" CssClass="btn form-control-sm btn-danger" ID="BtnDelete" OnClick ="BtnDelete_Click"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</asp:Content>
