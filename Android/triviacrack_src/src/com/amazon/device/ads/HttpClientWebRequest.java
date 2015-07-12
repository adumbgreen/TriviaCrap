// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.amazon.device.ads:
//            WebRequest, Log

class HttpClientWebRequest extends WebRequest
{

    private static final int DEFAULT_SOCKET_BUFFER_SIZE = 8192;
    private static final String LOG_TAG = com/amazon/device/ads/HttpClientWebRequest.getSimpleName();
    private HttpClient client;

    HttpClientWebRequest()
    {
    }

    private void prepareFormRequestBody(HttpPost httppost, String s)
    {
        ArrayList arraylist = new ArrayList();
        java.util.Map.Entry entry;
        for (Iterator iterator = postParameters.entrySet().iterator(); iterator.hasNext(); arraylist.add(new BasicNameValuePair((String)entry.getKey(), (String)entry.getValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        try
        {
            httppost.setEntity(new UrlEncodedFormEntity(arraylist, "UTF-8"));
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            String s1 = getLogTag();
            Object aobj[] = new Object[1];
            aobj[0] = unsupportedencodingexception.getMessage();
            Log.e(s1, "Unsupported character encoding used while creating the request: %s", aobj);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.UNSUPPORTED_ENCODING, "Unsupported character encoding used while creating the request", unsupportedencodingexception);
        }
    }

    private void prepareRequestBody(HttpPost httppost)
    {
        String s = charset;
        if (s == null)
        {
            s = "UTF-8";
        }
        String s1 = contentType;
        if (s1 == null)
        {
            s1 = "text/plain";
        }
        if (requestBody != null)
        {
            prepareStringRequestBody(httppost, s1, s);
            return;
        } else
        {
            prepareFormRequestBody(httppost, s);
            return;
        }
    }

    private void prepareStringRequestBody(HttpPost httppost, String s, String s1)
    {
        try
        {
            StringEntity stringentity = new StringEntity(requestBody, s1);
            stringentity.setContentType(s);
            httppost.setEntity(stringentity);
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            String s2 = getLogTag();
            Object aobj[] = new Object[1];
            aobj[0] = unsupportedencodingexception.getMessage();
            Log.e(s2, "Unsupported character encoding used while creating the request. ", aobj);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.UNSUPPORTED_ENCODING, "Unsupported character encoding used while creating the request.", unsupportedencodingexception);
        }
    }

    protected void closeConnection()
    {
        if (client != null)
        {
            client.getConnectionManager().closeIdleConnections(0L, TimeUnit.MILLISECONDS);
            client.getConnectionManager().closeExpiredConnections();
            client = null;
        }
    }

    protected HttpParams createHttpParams()
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, getTimeout());
        HttpConnectionParams.setSoTimeout(basichttpparams, getTimeout());
        HttpConnectionParams.setSocketBufferSize(basichttpparams, 8192);
        return basichttpparams;
    }

    protected HttpRequestBase createHttpRequest(URL url)
    {
        class _cls1
        {

            static final int $SwitchMap$com$amazon$device$ads$WebRequest$HttpMethod[];

            static 
            {
                $SwitchMap$com$amazon$device$ads$WebRequest$HttpMethod = new int[WebRequest.HttpMethod.values().length];
                try
                {
                    $SwitchMap$com$amazon$device$ads$WebRequest$HttpMethod[WebRequest.HttpMethod.GET.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$WebRequest$HttpMethod[WebRequest.HttpMethod.POST.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        URI uri;
        Object obj;
        try
        {
            uri = createURI(url);
        }
        catch (URISyntaxException urisyntaxexception)
        {
            String s = getLogTag();
            Object aobj[] = new Object[1];
            aobj[0] = urisyntaxexception.getMessage();
            Log.e(s, "Problem with URI syntax: %s", aobj);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.MALFORMED_URL, "Problem with URI syntax", urisyntaxexception);
        }
        _cls1..SwitchMap.com.amazon.device.ads.WebRequest.HttpMethod[getHttpMethod().ordinal()];
        JVM INSTR tableswitch 1 2: default 40
    //                   1 178
    //                   2 192;
           goto _L1 _L2 _L3
_L1:
        obj = null;
_L5:
        Iterator iterator = headers.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (entry.getValue() != null && !((String)entry.getValue()).equals(""))
            {
                ((HttpRequestBase) (obj)).addHeader((String)entry.getKey(), (String)entry.getValue());
            }
        } while (true);
        break; /* Loop/switch isn't completed */
_L2:
        obj = new HttpGet(uri);
        continue; /* Loop/switch isn't completed */
_L3:
        HttpPost httppost = new HttpPost(uri);
        prepareRequestBody((HttpPost)httppost);
        obj = httppost;
        if (true) goto _L5; else goto _L4
_L4:
        logUrl(uri.toString());
        if (logRequestBodyEnabled && getRequestBody() != null)
        {
            String s1 = getLogTag();
            Object aobj1[] = new Object[1];
            aobj1[0] = getRequestBody();
            Log.d(s1, "Request Body: %s", aobj1);
        }
        return ((HttpRequestBase) (obj));
    }

    protected WebRequest.WebResponse doHttpNetworkCall(URL url)
    {
        HttpRequestBase httprequestbase = createHttpRequest(url);
        HttpParams httpparams = createHttpParams();
        if (client != null)
        {
            closeConnection();
        }
        client = new DefaultHttpClient(httpparams);
        HttpResponse httpresponse;
        try
        {
            httpresponse = client.execute(httprequestbase);
        }
        catch (ClientProtocolException clientprotocolexception)
        {
            String s1 = getLogTag();
            Object aobj1[] = new Object[1];
            aobj1[0] = clientprotocolexception.getMessage();
            Log.e(s1, "Invalid client protocol: %s", aobj1);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.INVALID_CLIENT_PROTOCOL, "Invalid client protocol", clientprotocolexception);
        }
        catch (IOException ioexception)
        {
            String s = getLogTag();
            Object aobj[] = new Object[1];
            aobj[0] = ioexception.getMessage();
            Log.e(s, "IOException during client execution: %s", aobj);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_FAILURE, "IOException during client execution", ioexception);
        }
        return parseResponse(httpresponse);
    }

    protected String getSubLogTag()
    {
        return LOG_TAG;
    }

    protected WebRequest.WebResponse parseResponse(HttpResponse httpresponse)
    {
        WebRequest.WebResponse webresponse = new WebRequest.WebResponse(this);
        webresponse.setHttpStatusCode(httpresponse.getStatusLine().getStatusCode());
        webresponse.setHttpStatus(httpresponse.getStatusLine().getReasonPhrase());
        if (webresponse.getHttpStatusCode() == 200)
        {
            HttpEntity httpentity = httpresponse.getEntity();
            if (httpentity != null && httpentity.getContentLength() != 0L)
            {
                try
                {
                    webresponse.setInputStream(httpentity.getContent());
                }
                catch (IOException ioexception)
                {
                    String s = getLogTag();
                    Object aobj[] = new Object[1];
                    aobj[0] = ioexception.getMessage();
                    Log.e(s, "IOException while reading the input stream from response: %s", aobj);
                    throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_FAILURE, "IOException while reading the input stream from response", ioexception);
                }
            }
        }
        return webresponse;
    }

}
