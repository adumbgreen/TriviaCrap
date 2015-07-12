// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Map;

// Referenced classes of package twitter4j:
//            HttpResponse, StreamingGZIPInputStream, HttpClientConfiguration

public class HttpResponseImpl extends HttpResponse
{

    private HttpURLConnection con;

    HttpResponseImpl(String s)
    {
        responseAsString = s;
    }

    HttpResponseImpl(HttpURLConnection httpurlconnection, HttpClientConfiguration httpclientconfiguration)
    {
        super(httpclientconfiguration);
        con = httpurlconnection;
        java.io.InputStream inputstream;
        try
        {
            statusCode = httpurlconnection.getResponseCode();
        }
        catch (IOException ioexception)
        {
            if ("Received authentication challenge is null".equals(ioexception.getMessage()))
            {
                statusCode = httpurlconnection.getResponseCode();
            } else
            {
                throw ioexception;
            }
        }
        inputstream = httpurlconnection.getErrorStream();
        is = inputstream;
        if (inputstream == null)
        {
            is = httpurlconnection.getInputStream();
        }
        if (is != null && "gzip".equals(httpurlconnection.getContentEncoding()))
        {
            is = new StreamingGZIPInputStream(is);
        }
    }

    public void disconnect()
    {
        con.disconnect();
    }

    public String getResponseHeader(String s)
    {
        return con.getHeaderField(s);
    }

    public Map getResponseHeaderFields()
    {
        return con.getHeaderFields();
    }
}
