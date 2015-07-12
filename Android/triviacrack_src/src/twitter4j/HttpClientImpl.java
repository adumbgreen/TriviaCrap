// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.BufferedInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import twitter4j.auth.Authorization;
import twitter4j.conf.Configuration;
import twitter4j.conf.ConfigurationContext;

// Referenced classes of package twitter4j:
//            HttpClientBase, HttpResponseCode, Logger, HttpClient, 
//            HttpRequest, RequestMethod, HttpClientConfiguration, HttpParameter, 
//            TwitterException, HttpResponseImpl, HttpResponse

class HttpClientImpl extends HttpClientBase
    implements Serializable, HttpResponseCode
{

    private static final Map instanceMap = new HashMap(1);
    private static final Logger logger = Logger.getLogger(twitter4j/HttpClientImpl);
    private static final long serialVersionUID = 0xfa667aa3c9ca831aL;

    public HttpClientImpl()
    {
        super(ConfigurationContext.getInstance().getHttpClientConfiguration());
    }

    public HttpClientImpl(HttpClientConfiguration httpclientconfiguration)
    {
        super(httpclientconfiguration);
    }

    public static HttpClient getInstance(HttpClientConfiguration httpclientconfiguration)
    {
        Object obj = (HttpClient)instanceMap.get(httpclientconfiguration);
        if (obj == null)
        {
            obj = new HttpClientImpl(httpclientconfiguration);
            instanceMap.put(httpclientconfiguration, obj);
        }
        return ((HttpClient) (obj));
    }

    private void setHeaders(HttpRequest httprequest, HttpURLConnection httpurlconnection)
    {
        if (logger.isDebugEnabled())
        {
            logger.debug("Request: ");
            logger.debug((new StringBuilder()).append(httprequest.getMethod().name()).append(" ").toString(), httprequest.getURL());
        }
        if (httprequest.getAuthorization() != null)
        {
            String s1 = httprequest.getAuthorization().getAuthorizationHeader(httprequest);
            if (s1 != null)
            {
                if (logger.isDebugEnabled())
                {
                    logger.debug("Authorization: ", s1.replaceAll(".", "*"));
                }
                httpurlconnection.addRequestProperty("Authorization", s1);
            }
        }
        if (httprequest.getRequestHeaders() != null)
        {
            String s;
            for (Iterator iterator = httprequest.getRequestHeaders().keySet().iterator(); iterator.hasNext(); logger.debug((new StringBuilder()).append(s).append(": ").append((String)httprequest.getRequestHeaders().get(s)).toString()))
            {
                s = (String)iterator.next();
                httpurlconnection.addRequestProperty(s, (String)httprequest.getRequestHeaders().get(s));
            }

        }
    }

    public HttpResponse get(String s)
    {
        return request(new HttpRequest(RequestMethod.GET, s, null, null, null));
    }

    HttpURLConnection getConnection(String s)
    {
        HttpURLConnection httpurlconnection;
        if (isProxyConfigured())
        {
            if (CONF.getHttpProxyUser() != null && !CONF.getHttpProxyUser().equals(""))
            {
                if (logger.isDebugEnabled())
                {
                    logger.debug((new StringBuilder()).append("Proxy AuthUser: ").append(CONF.getHttpProxyUser()).toString());
                    logger.debug((new StringBuilder()).append("Proxy AuthPassword: ").append(CONF.getHttpProxyPassword().replaceAll(".", "*")).toString());
                }
                Authenticator.setDefault(new Authenticator() {

                    final HttpClientImpl this$0;

                    protected PasswordAuthentication getPasswordAuthentication()
                    {
                        if (getRequestorType().equals(java.net.Authenticator.RequestorType.PROXY))
                        {
                            return new PasswordAuthentication(CONF.getHttpProxyUser(), CONF.getHttpProxyPassword().toCharArray());
                        } else
                        {
                            return null;
                        }
                    }

            
            {
                this$0 = HttpClientImpl.this;
                super();
            }
                });
            }
            Proxy proxy = new Proxy(java.net.Proxy.Type.HTTP, InetSocketAddress.createUnresolved(CONF.getHttpProxyHost(), CONF.getHttpProxyPort()));
            if (logger.isDebugEnabled())
            {
                logger.debug((new StringBuilder()).append("Opening proxied connection(").append(CONF.getHttpProxyHost()).append(":").append(CONF.getHttpProxyPort()).append(")").toString());
            }
            httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection(proxy);
        } else
        {
            httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        }
        if (CONF.getHttpConnectionTimeout() > 0)
        {
            httpurlconnection.setConnectTimeout(CONF.getHttpConnectionTimeout());
        }
        if (CONF.getHttpReadTimeout() > 0)
        {
            httpurlconnection.setReadTimeout(CONF.getHttpReadTimeout());
        }
        httpurlconnection.setInstanceFollowRedirects(false);
        return httpurlconnection;
    }

    public HttpResponse handleRequest(HttpRequest httprequest)
    {
        int i;
        Object obj;
        int j;
        i = 1 + CONF.getHttpRetryCount();
        obj = null;
        j = 0;
_L31:
        if (j >= i) goto _L2; else goto _L1
_L1:
        int k = -1;
        HttpURLConnection httpurlconnection;
        httpurlconnection = getConnection(httprequest.getURL());
        httpurlconnection.setDoInput(true);
        setHeaders(httprequest, httpurlconnection);
        httpurlconnection.setRequestMethod(httprequest.getMethod().name());
        if (httprequest.getMethod() != RequestMethod.POST) goto _L4; else goto _L3
_L3:
        if (!HttpParameter.containsFile(httprequest.getParameters())) goto _L6; else goto _L5
_L5:
        String s4;
        OutputStream outputstream5;
        String s3 = (new StringBuilder()).append("----Twitter4J-upload").append(System.currentTimeMillis()).toString();
        httpurlconnection.setRequestProperty("Content-Type", (new StringBuilder()).append("multipart/form-data; boundary=").append(s3).toString());
        s4 = (new StringBuilder()).append("--").append(s3).toString();
        httpurlconnection.setDoOutput(true);
        outputstream5 = httpurlconnection.getOutputStream();
        OutputStream outputstream4 = outputstream5;
        DataOutputStream dataoutputstream;
        HttpParameter ahttpparameter[];
        int i1;
        dataoutputstream = new DataOutputStream(outputstream4);
        ahttpparameter = httprequest.getParameters();
        i1 = ahttpparameter.length;
        int j1 = 0;
_L38:
        if (j1 >= i1) goto _L8; else goto _L7
_L7:
        HttpParameter httpparameter = ahttpparameter[j1];
        if (!httpparameter.isFile()) goto _L10; else goto _L9
_L9:
        write(dataoutputstream, (new StringBuilder()).append(s4).append("\r\n").toString());
        write(dataoutputstream, (new StringBuilder()).append("Content-Disposition: form-data; name=\"").append(httpparameter.getName()).append("\"; filename=\"").append(httpparameter.getFile().getName()).append("\"\r\n").toString());
        write(dataoutputstream, (new StringBuilder()).append("Content-Type: ").append(httpparameter.getContentType()).append("\r\n\r\n").toString());
        if (!httpparameter.hasFileBody()) goto _L12; else goto _L11
_L11:
        Object obj3 = httpparameter.getFileBody();
_L16:
        BufferedInputStream bufferedinputstream;
        byte abyte1[];
        bufferedinputstream = new BufferedInputStream(((java.io.InputStream) (obj3)));
        abyte1 = new byte[1024];
_L15:
        int k1 = bufferedinputstream.read(abyte1);
        if (k1 == -1) goto _L14; else goto _L13
_L13:
        dataoutputstream.write(abyte1, 0, k1);
          goto _L15
        Exception exception6;
        exception6;
        Object obj1;
        Exception exception1;
        int l;
        OutputStream outputstream;
        obj1 = obj;
        exception1 = exception6;
        outputstream = outputstream4;
        l = k;
_L26:
        IOException ioexception;
        Object obj2;
        try
        {
            outputstream.close();
        }
        catch (Exception exception2) { }
        throw exception1;
        ioexception;
        k = l;
        obj2 = obj1;
        break MISSING_BLOCK_LABEL_433;
_L12:
        obj3 = new FileInputStream(httpparameter.getFile());
          goto _L16
_L14:
        write(dataoutputstream, "\r\n");
        bufferedinputstream.close();
          goto _L17
_L10:
        write(dataoutputstream, (new StringBuilder()).append(s4).append("\r\n").toString());
        write(dataoutputstream, (new StringBuilder()).append("Content-Disposition: form-data; name=\"").append(httpparameter.getName()).append("\"\r\n").toString());
        write(dataoutputstream, "Content-Type: text/plain; charset=UTF-8\r\n\r\n");
        logger.debug(httpparameter.getValue());
        dataoutputstream.write(httpparameter.getValue().getBytes("UTF-8"));
        write(dataoutputstream, "\r\n");
          goto _L17
_L8:
        write(dataoutputstream, (new StringBuilder()).append(s4).append("--\r\n").toString());
        write(dataoutputstream, "\r\n");
_L27:
        outputstream4.flush();
        outputstream4.close();
        outputstream1 = outputstream4;
_L36:
        obj2 = new HttpResponseImpl(httpurlconnection, CONF);
        k = httpurlconnection.getResponseCode();
        if (!logger.isDebugEnabled()) goto _L19; else goto _L18
_L18:
        logger.debug("Response: ");
        map = httpurlconnection.getHeaderFields();
        iterator = map.keySet().iterator();
_L22:
        if (!iterator.hasNext()) goto _L19; else goto _L20
_L20:
        s = (String)iterator.next();
        iterator1 = ((List)map.get(s)).iterator();
_L25:
        if (!iterator1.hasNext()) goto _L22; else goto _L21
_L21:
        s1 = (String)iterator1.next();
        if (s == null) goto _L24; else goto _L23
_L23:
        logger.debug((new StringBuilder()).append(s).append(": ").append(s1).toString());
          goto _L25
        exception1;
        outputstream = outputstream1;
        obj1 = obj2;
        l = k;
          goto _L26
_L6:
        httpurlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        String s2 = HttpParameter.encodeParameters(httprequest.getParameters());
        logger.debug("Post Params: ", s2);
        abyte0 = s2.getBytes("UTF-8");
        httpurlconnection.setRequestProperty("Content-Length", Integer.toString(abyte0.length));
        httpurlconnection.setDoOutput(true);
        outputstream3 = httpurlconnection.getOutputStream();
        outputstream4 = outputstream3;
        outputstream4.write(abyte0);
          goto _L27
_L24:
        logger.debug(s1);
          goto _L25
_L39:
        if (k == 420 || k == 400 || k < 500) goto _L29; else goto _L28
_L28:
        if (j != CONF.getHttpRetryCount()) goto _L30; else goto _L29
_L29:
        throw new TwitterException(((HttpResponse) (obj2)).asString(), ((HttpResponse) (obj2)));
_L40:
        outputstream1.close();
_L32:
        obj = obj2;
_L2:
        return ((HttpResponse) (obj));
_L30:
        outputstream1.close();
_L33:
        obj = obj2;
_L37:
        if (!logger.isDebugEnabled() || obj == null)
        {
            break MISSING_BLOCK_LABEL_1021;
        }
        ((HttpResponse) (obj)).asString();
        logger.debug((new StringBuilder()).append("Sleeping ").append(CONF.getHttpRetryIntervalSeconds()).append(" seconds until the next retry.").toString());
        Thread.sleep(1000 * CONF.getHttpRetryIntervalSeconds());
_L34:
        j++;
          goto _L31
        exception4;
          goto _L32
        exception3;
          goto _L33
        interruptedexception;
          goto _L34
        ioexception;
          goto _L35
        exception;
        obj1 = obj;
        exception1 = exception;
        l = k;
        outputstream = null;
          goto _L26
        exception5;
        l = k;
        OutputStream outputstream2 = outputstream1;
        obj1 = obj;
        exception1 = exception5;
        outputstream = outputstream2;
          goto _L26
_L4:
        outputstream1 = null;
          goto _L36
_L35:
        Exception exception;
        InterruptedException interruptedexception;
        OutputStream outputstream1;
        Exception exception3;
        Exception exception4;
        Map map;
        Iterator iterator;
        String s;
        Iterator iterator1;
        String s1;
        Exception exception5;
        byte abyte0[];
        OutputStream outputstream3;
        if (j == CONF.getHttpRetryCount())
        {
            throw new TwitterException(ioexception.getMessage(), ioexception, k);
        }
        obj = obj2;
          goto _L37
_L17:
        j1++;
          goto _L38
_L19:
        if (k >= 200 && (k == 302 || 300 > k)) goto _L40; else goto _L39
    }

    public HttpResponse post(String s, HttpParameter ahttpparameter[])
    {
        return request(new HttpRequest(RequestMethod.POST, s, ahttpparameter, null, null));
    }

    static 
    {
        try
        {
            Class.forName("dalvik.system.VMRuntime");
            System.setProperty("http.keepAlive", "false");
        }
        catch (ClassNotFoundException classnotfoundexception) { }
    }
}
