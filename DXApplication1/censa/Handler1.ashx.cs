using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace censa
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int userid = Convert.ToInt32(context.Request["UserID"]);
            bioEntities bio = new bioEntities();
            USERINFO user = bio.USERINFO.Where(q => q.USERID == userid).Single();
            Byte[] bytes = user.PHOTO;
            context.Response.ContentType = "image/gif";
            context.Response.BinaryWrite(bytes);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}