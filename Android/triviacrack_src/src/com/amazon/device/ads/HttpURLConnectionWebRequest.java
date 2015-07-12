// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.amazon.device.ads:
//            WebRequest, Log, WebUtils

class HttpURLConnectionWebRequest extends WebRequest
{

    private static final String LOG_TAG = com/amazon/device/ads/HttpURLConnectionWebRequest.getSimpleName();
    private HttpURLConnection connection;

    HttpURLConnectionWebRequest()
    {
    }

    private void writePostBody(HttpURLConnection httpurlconnection)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (requestBody == null) goto _L2; else goto _L1
_L1:
        stringbuilder.append(requestBody);
_L4:
        if (logRequestBodyEnabled && getRequestBody() != null)
        {
            String s3 = getLogTag();
            Object aobj3[] = new Object[1];
            aobj3[0] = getRequestBody();
            Log.d(s3, "Request Body: %s", aobj3);
        }
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(httpurlconnection.getOutputStream(), "UTF-8");
        outputstreamwriter.write(stringbuilder.toString());
        if (outputstreamwriter == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        outputstreamwriter.close();
        return;
_L2:
        if (postParameters != null && !postParameters.isEmpty())
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = postParameters.entrySet().iterator(); iterator.hasNext(); stringbuilder.append((String)entry.getKey()).append("=").append(WebUtils.getURLEncodedString((String)entry.getValue())).append("&"))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            stringbuilder.deleteCharAt(stringbuilder.lastIndexOf("&"));
        }
        if (true) goto _L4; else goto _L3
_L3:
        IOException ioexception2;
        ioexception2;
        String s2 = getLogTag();
        Object aobj2[] = new Object[1];
        aobj2[0] = ioexception2.getMessage();
        Log.e(s2, "Problem while closing output stream writer for request body: %s", aobj2);
        throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while closing output stream writer for request body", ioexception2);
        IOException ioexception;
        ioexception;
        outputstreamwriter = null;
_L8:
        String s1 = getLogTag();
        Object aobj1[] = new Object[1];
        aobj1[0] = ioexception.getMessage();
        Log.e(s1, "Problem while creating output steam for request body: %s", aobj1);
        throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while creating output steam for request body", ioexception);
        Exception exception;
        exception;
_L6:
        if (outputstreamwriter != null)
        {
            try
            {
                outputstreamwriter.close();
            }
            catch (IOException ioexception1)
            {
                String s = getLogTag();
                Object aobj[] = new Object[1];
                aobj[0] = ioexception1.getMessage();
                Log.e(s, "Problem while closing output stream writer for request body: %s", aobj);
                throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while closing output stream writer for request body", ioexception1);
            }
        }
        throw exception;
        exception;
        outputstreamwriter = null;
        if (true) goto _L6; else goto _L5
_L5:
        ioexception;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected void closeConnection()
    {
        if (connection != null)
        {
            connection.disconnect();
            connection = null;
        }
    }

    protected WebRequest.WebResponse doHttpNetworkCall(URL url)
    {
        if (connection != null)
        {
            closeConnection();
        }
        try
        {
            connection = openConnection(url);
        }
        catch (IOException ioexception)
        {
            String s = getLogTag();
            Object aobj[] = new Object[1];
            aobj[0] = ioexception.getMessage();
            Log.e(s, "Problem while opening the URL connection: %s", aobj);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while opening the URL connection", ioexception);
        }
        setupRequestProperties(connection);
        try
        {
            connection.connect();
        }
        catch (SocketTimeoutException sockettimeoutexception)
        {
            String s2 = getLogTag();
            Object aobj2[] = new Object[1];
            aobj2[0] = sockettimeoutexception.getMessage();
            Log.e(s2, "Socket timed out while connecting to URL: %s", aobj2);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_TIMEOUT, "Socket timed out while connecting to URL", sockettimeoutexception);
        }
        catch (IOException ioexception1)
        {
            String s1 = getLogTag();
            Object aobj1[] = new Object[1];
            aobj1[0] = ioexception1.getMessage();
            Log.e(s1, "Problem while connecting to URL: %s", aobj1);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while connecting to URL", ioexception1);
        }
        return prepareResponse(connection);
    }

    protected String getSubLogTag()
    {
        return LOG_TAG;
    }

    protected HttpURLConnection openConnection(URL url)
    {
        return (HttpURLConnection)url.openConnection();
    }

    protected WebRequest.WebResponse prepareResponse(HttpURLConnection httpurlconnection)
    {
        WebRequest.WebResponse webresponse = new WebRequest.WebResponse(this);
        try
        {
            webresponse.setHttpStatusCode(httpurlconnection.getResponseCode());
            webresponse.setHttpStatus(httpurlconnection.getResponseMessage());
        }
        catch (SocketTimeoutException sockettimeoutexception)
        {
            String s2 = getLogTag();
            Object aobj2[] = new Object[1];
            aobj2[0] = sockettimeoutexception.getMessage();
            Log.e(s2, "Socket Timeout while getting the response status code: %s", aobj2);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_TIMEOUT, "Socket Timeout while getting the response status code", sockettimeoutexception);
        }
        catch (IOException ioexception)
        {
            String s1 = getLogTag();
            Object aobj1[] = new Object[1];
            aobj1[0] = ioexception.getMessage();
            Log.e(s1, "IOException while getting the response status code: %s", aobj1);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_FAILURE, "IOException while getting the response status code", ioexception);
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            String s = getLogTag();
            Object aobj[] = new Object[1];
            aobj[0] = indexoutofboundsexception.getMessage();
            Log.e(s, "IndexOutOfBoundsException while getting the response status code: %s", aobj);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.MALFORMED_URL, "IndexOutOfBoundsException while getting the response status code", indexoutofboundsexception);
        }
        if (webresponse.getHttpStatusCode() == 200)
        {
            try
            {
                webresponse.setInputStream(httpurlconnection.getInputStream());
            }
            catch (IOException ioexception1)
            {
                String s3 = getLogTag();
                Object aobj3[] = new Object[1];
                aobj3[0] = ioexception1.getMessage();
                Log.e(s3, "IOException while reading the input stream from response: %s", aobj3);
                throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.NETWORK_FAILURE, "IOException while reading the input stream from response", ioexception1);
            }
        }
        return webresponse;
    }

    protected void setupRequestProperties(HttpURLConnection httpurlconnection)
    {
        Iterator iterator;
        try
        {
            httpurlconnection.setRequestMethod(getHttpMethod().name());
        }
        catch (ProtocolException protocolexception)
        {
            String s = getLogTag();
            Object aobj[] = new Object[1];
            aobj[0] = protocolexception.getMessage();
            Log.e(s, "Invalid client protocol: %s", aobj);
            throw new WebRequest.WebRequestException(this, WebRequest.WebRequestStatus.INVALID_CLIENT_PROTOCOL, "Invalid client protocol", protocolexception);
        }
        iterator = headers.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (entry.getValue() != null && !((String)entry.getValue()).equals(""))
            {
                httpurlconnection.setRequestProperty((String)entry.getKey(), (String)entry.getValue());
            }
        } while (true);
        httpurlconnection.setConnectTimeout(getTimeout());
        httpurlconnection.setReadTimeout(getTimeout());
        logUrl(httpurlconnection.getURL().toString());
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

        switch (_cls1..SwitchMap.com.amazon.device.ads.WebRequest.HttpMethod[getHttpMethod().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            httpurlconnection.setDoOutput(false);
            return;

        case 2: // '\002'
            httpurlconnection.setDoOutput(true);
            break;
        }
        writePostBody(httpurlconnection);
    }

}
