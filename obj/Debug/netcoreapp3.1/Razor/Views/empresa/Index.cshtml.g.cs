#pragma checksum "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Empresa\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "62580f03612f2bdaeb59d4ed06b607382d48ac7c"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Empresa_Index), @"mvc.1.0.view", @"/Views/Empresa/Index.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"62580f03612f2bdaeb59d4ed06b607382d48ac7c", @"/Views/Empresa/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a8c17bd6bc47298a47a1f0d59f587625e92904df", @"/Views/_ViewImports.cshtml")]
    public class Views_Empresa_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<Empresa>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Empresa\Index.cshtml"
  
    Layout = "_Layout";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
            WriteLiteral("\r\n   <h2 class=\"text-danger\">Empresas</h2>\r\n<br>\r\n  <div class=\"row\">\r\n");
#nullable restore
#line 12 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Empresa\Index.cshtml"
   foreach(var emp in Model){

#line default
#line hidden
#nullable disable
            WriteLiteral("  <div class=\"card col-sm-4\" style=\"width: 30rem; margin: 5px;\">\r\n    <div class=\"card-body text-center\">\r\n      \r\n      <h5 class=\"card-title text-danger\">Nome: ");
#nullable restore
#line 16 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Empresa\Index.cshtml"
                                          Write(emp.Nome);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h5>\r\n      <h6 class=\"card-subtitle mb-2 text-muted\">Cnpj: ");
#nullable restore
#line 17 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Empresa\Index.cshtml"
                                                 Write(emp.Cnpj);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h6>\r\n      <h6 class=\"card-subtitle mb-2 text-muted\">Telefone: ");
#nullable restore
#line 18 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Empresa\Index.cshtml"
                                                     Write(emp.Telefone);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h6>\r\n\r\n        <a");
            BeginWriteAttribute("href", " href=\"", 534, "\"", 569, 2);
            WriteAttributeValue("", 541, "/produto/showproduto/", 541, 21, true);
#nullable restore
#line 20 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Empresa\Index.cshtml"
WriteAttributeValue("", 562, emp.Id, 562, 7, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" >Ver Produtos</a> \r\n    </div>\r\n  </div>\r\n");
#nullable restore
#line 23 "C:\Users\jucie\OneDrive\Documentos\pos\C#\deliveryApp\Views\Empresa\Index.cshtml"
   }

#line default
#line hidden
#nullable disable
            WriteLiteral("   </div>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<Empresa>> Html { get; private set; }
    }
}
#pragma warning restore 1591
