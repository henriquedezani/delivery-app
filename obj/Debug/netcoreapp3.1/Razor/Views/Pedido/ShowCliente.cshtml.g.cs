#pragma checksum "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "0f1781111add3c0cf2e4b0cbf315c2166d03e724"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Pedido_ShowCliente), @"mvc.1.0.view", @"/Views/Pedido/ShowCliente.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\_ViewImports.cshtml"
using DeliveryApp;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\_ViewImports.cshtml"
using DeliveryApp.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0f1781111add3c0cf2e4b0cbf315c2166d03e724", @"/Views/Pedido/ShowCliente.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a8c17bd6bc47298a47a1f0d59f587625e92904df", @"/Views/_ViewImports.cshtml")]
    public class Views_Pedido_ShowCliente : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<ItensComprados>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
    
    Layout = "_Layout";
  

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
            WriteLiteral("\r\n   <h2 class=\"text-danger\">Pedidos</h2>\r\n<br>\r\n  \r\n  <div class=\"card border-danger mb-3\" style=\"max-width: 80%;\">\r\n    <div class=\"card-header bg-transparent border-danger\">Produtos</div>\r\n");
#nullable restore
#line 14 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
       foreach(var itens in Model){

#line default
#line hidden
#nullable disable
            WriteLiteral("      <div class=\"card-body\">\r\n        <h5 class=\"card-title\">");
#nullable restore
#line 16 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
                          Write(itens.Produto.Nome);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h5>\r\n        <p class=\"card-text\">");
#nullable restore
#line 17 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
                        Write(itens.Produto.Descricao);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n        <h6>Valor: ");
#nullable restore
#line 18 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
              Write(itens.Produto.Valor);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h6>\r\n     </div>\r\n     <hr/>\r\n");
#nullable restore
#line 21 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
     }

#line default
#line hidden
#nullable disable
            WriteLiteral("   <div class=\"card-footer bg-transparent border-danger\">\r\n");
#nullable restore
#line 23 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
        if (@Model.LastOrDefault().Pedido.Status_Pedido == 0) {

#line default
#line hidden
#nullable disable
            WriteLiteral("           <h5 class=\"float-left text-black\">Pedido Iniciado</h5>\r\n");
#nullable restore
#line 25 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
       } else if (@Model.LastOrDefault().Pedido.Status_Pedido == 1) {

#line default
#line hidden
#nullable disable
            WriteLiteral("           <h5 class=\"float-left text-black\">Pedido Aceito</h5>\r\n");
#nullable restore
#line 27 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
       }else if (@Model.LastOrDefault().Pedido.Status_Pedido == 2) {

#line default
#line hidden
#nullable disable
            WriteLiteral("           <h5 class=\"float-left text-black\">Em Preparação</h5>\r\n");
#nullable restore
#line 29 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
       }else {

#line default
#line hidden
#nullable disable
            WriteLiteral("          <h5 class=\"float-left text-black\">Pedido saiu para Entrega</h5> \r\n");
#nullable restore
#line 31 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Pedido\ShowCliente.cshtml"
       }

#line default
#line hidden
#nullable disable
            WriteLiteral("   </div>\r\n  </div>\r\n   ");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<ItensComprados>> Html { get; private set; }
    }
}
#pragma warning restore 1591