using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Routing;
using HaberSitesiASP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using HaberSitesiASP.EntityFramework;
using HaberSitesiASP.Entities;

namespace Microsoft.AspNetCore.Builder
{
    public static class WebServiceEndpoint
    {
        private static string BASEURL = "api";

        public static void MapWebService(this IEndpointRouteBuilder app)

        {

            //News

            app.MapGet($"{BASEURL}/news/{{id}}", async context => {

                long key = long.Parse(context.Request.RouteValues["id"] as string);

                NewsContext data = context.RequestServices.GetService<NewsContext>();

                New p = data.News.Find(key);

                if (p == null)

                {

                    context.Response.StatusCode = StatusCodes.Status404NotFound;

                }

                else

                {

                    context.Response.ContentType = "application/json";

                    await context.Response

                        .WriteAsync(JsonSerializer.Serialize<New>(p));

                }

            });



            app.MapGet(BASEURL + "/news", async context => {

                NewsContext data = context.RequestServices.GetService<NewsContext>();

                context.Response.ContentType = "application/json";

                await context.Response.WriteAsync(JsonSerializer

                    .Serialize<IEnumerable<New>>(data.News));

            });



            app.MapPost(BASEURL + "/news", async context => {

                NewsContext data = context.RequestServices.GetService<NewsContext>();

                New p = await

                    JsonSerializer.DeserializeAsync<New>(context.Request.Body);

                await data.AddAsync(p);

                await data.SaveChangesAsync();

                context.Response.StatusCode = StatusCodes.Status200OK;

            });



            //Categories

            app.MapGet($"{BASEURL}/categories/{{id}}", async context => {

                int key = int.Parse(context.Request.RouteValues["id"] as string);

                NewsContext data = context.RequestServices.GetService<NewsContext>();

                Category p = data.Categories.Find(key);

                if (p == null)

                {

                    context.Response.StatusCode = StatusCodes.Status404NotFound;

                }

                else

                {

                    context.Response.ContentType = "application/json";

                    await context.Response

                        .WriteAsync(JsonSerializer.Serialize<Category>(p));

                }

            });



            app.MapGet(BASEURL + "/categories", async context => {

                NewsContext data = context.RequestServices.GetService<NewsContext>();

                context.Response.ContentType = "application/json";

                await context.Response.WriteAsync(JsonSerializer

                    .Serialize<IEnumerable<Category>>(data.Categories));

            });



            app.MapPost(BASEURL + "/categories", async context => {

                NewsContext data = context.RequestServices.GetService<NewsContext>();

                Category p = await

                    JsonSerializer.DeserializeAsync<Category>(context.Request.Body);

                await data.AddAsync(p);

                await data.SaveChangesAsync();

                context.Response.StatusCode = StatusCodes.Status200OK;

            });

        }

    }

}