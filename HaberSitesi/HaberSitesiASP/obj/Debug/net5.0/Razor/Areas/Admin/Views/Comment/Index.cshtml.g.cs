#pragma checksum "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\Comment\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "7f6c3b7fd5024b6f86a2387c438fbadf12b0e64e"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Comment_Index), @"mvc.1.0.view", @"/Areas/Admin/Views/Comment/Index.cshtml")]
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
#line 3 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\_ViewImports.cshtml"
using HaberSitesiASP.Areas.Admin.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\_ViewImports.cshtml"
using HaberSitesiASP.Entities;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"7f6c3b7fd5024b6f86a2387c438fbadf12b0e64e", @"/Areas/Admin/Views/Comment/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cb2d77d136ed6c627a080dc9c42e91ac235607ea", @"/Areas/Admin/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Areas_Admin_Views_Comment_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<Comment>>
    #nullable disable
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\n");
#nullable restore
#line 3 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\Comment\Index.cshtml"
  
    ViewData["Title"] = "Index";
    Layout = "~/Areas/Admin/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<h1>Yorumlar</h1>

<table class=""table table-striped table-hover"">
    <thead>
        <tr>
            <th>Id</th>
            <th>Kullanıcı</th>
            <th>Yorum</th>
            <th>Haber Id </th>
            <th>Güncelle | Sil </th>
        </tr>
    </thead>
    <tbody>
");
#nullable restore
#line 21 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\Comment\Index.cshtml"
         foreach (var item in Model)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <tr>\n                <td>");
#nullable restore
#line 24 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\Comment\Index.cshtml"
               Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\n                <td>");
#nullable restore
#line 25 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\Comment\Index.cshtml"
               Write(item.UserName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\n                <td>");
#nullable restore
#line 26 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\Comment\Index.cshtml"
               Write(item.UserComment);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\n                <td>");
#nullable restore
#line 27 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\Comment\Index.cshtml"
               Write(item.NewsId);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\n                <td>\n                    <a");
            BeginWriteAttribute("href", " href=\"", 669, "\"", 706, 2);
            WriteAttributeValue("", 676, "/Admin/Comment/Update/", 676, 22, true);
#nullable restore
#line 29 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\Comment\Index.cshtml"
WriteAttributeValue("", 698, item.Id, 698, 8, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-warning\">Güncelle</a>\n                    <button data-id=\"");
#nullable restore
#line 30 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\Comment\Index.cshtml"
                                Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\" class=\"btn btn-danger\">Sil</button>\n                </td>\n            </tr>\n");
#nullable restore
#line 33 "C:\Users\Ozgur-PC\Desktop\HaberSitesi\HaberSitesiASP\Areas\Admin\Views\Comment\Index.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"    </tbody>
</table>
<script>

    let elements = document.getElementsByClassName(""btn-danger"");
    for (let i = 0; i < elements.length; i++) {
        elements[i].addEventListener(""click"", (e) => {
            if (confirm(""Seçili yorumu silmek istediğinizden emin misiniz?"")) {

                let number = e.target.getAttribute(""data-id"");
                let http = new XMLHttpRequest();
                http.open(""POST"", ""/Admin/Comment/Delete?id="" + number);
                http.onloadend = function () {
                    let response = JSON.parse(this.responseText);
                    console.log(response);
                    alert(response.message);
                }
                http.send();

                e.target.parentElement.parentElement.remove();
            }
        })
    }
</script>
");
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<Comment>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591
