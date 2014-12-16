// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.androidsdk.impl.net;

import android.content.Context;
import android.os.Handler;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.IMAIConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.PkInitilaizer;
import com.inmobi.androidsdk.bootstrapper.PkParams;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.UserInfo;
import com.inmobi.androidsdk.impl.imai.IMAIClickEventList;
import com.inmobi.androidsdk.impl.imai.db.ClickData;
import com.inmobi.commons.internal.Base64;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.inmobi.androidsdk.impl.net:
//            Response, HttpRequestCallback, WebviewLoader, HttpRequestBuilder

public final class RequestResponseManager
{

    static Thread a;
    static Handler b = new Handler();
    static AtomicBoolean c = null;
    public static AtomicBoolean isSynced;
    private static AtomicBoolean j = null;
    private static AtomicBoolean l = null;
    public static IMAIClickEventList mDBWriterQueue = new IMAIClickEventList();
    public static IMAIClickEventList mNetworkQueue = null;
    byte d[];
    String e;
    String f;
    String g;
    private AtomicBoolean h;
    private HttpURLConnection i;
    private WebviewLoader k;
    private final int m = 8;
    private final int n = 16;
    private byte o[];
    private byte p[];

    public RequestResponseManager()
    {
        h = new AtomicBoolean();
        k = null;
        e = "";
        f = "";
        g = "";
    }

    private Response a(UserInfo userinfo)
    {
        int i1;
        String s;
        Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Http Status Code: ").append(i.getResponseCode()).toString());
        i1 = i.getResponseCode();
        s = i.getHeaderField("im-id");
        Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Im Id: ").append(s).toString());
        String s1 = i.getHeaderField("im-ec");
        if (s1 != null)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Sandbox error Id: ").append(s1).toString());
        }
        if (i1 != 200) goto _L2; else goto _L1
_L1:
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(i.getInputStream(), "UTF-8"));
        StringBuilder stringbuilder = new StringBuilder();
_L5:
        String s2 = bufferedreader.readLine();
        if (s2 == null) goto _L4; else goto _L3
_L3:
        stringbuilder.append(s2).append("\n");
          goto _L5
        Exception exception;
        exception;
_L9:
        i.disconnect();
        a(((Closeable) (bufferedreader)));
        throw exception;
_L4:
        String s3 = stringbuilder.toString();
        String s4 = new String(InternalSDKUtil.DeAe(Base64.decode(s3.getBytes(), 0), o, p));
        String s5 = s4;
_L7:
        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Ad Response: ").append(s3).toString());
        if (s5 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Response response = new Response(s, s5);
        i.disconnect();
        a(((Closeable) (bufferedreader)));
        return response;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        s5 = null;
        if (true) goto _L7; else goto _L6
_L6:
        throw new AdException("Some error in response.", 200, s, -1);
_L2:
        if (i1 != 204)
        {
            break MISSING_BLOCK_LABEL_354;
        }
        Log.debug("[InMobi]-[Network]-4.3.0", "Server returned No fill");
        throw new AdException("Server did not return 200.", 100, s, i1);
        if (i1 != 400)
        {
            break MISSING_BLOCK_LABEL_383;
        }
        Log.debug("[InMobi]-[Network]-4.3.0", "Invalid App Id.Please check the app Id in the adrequest is valid and in active state");
        throw new AdException("Server did not return 200.", 400, s, i1);
        Log.debug("[InMobi]-[Network]-4.3.0", "Server Error");
        throw new AdException("Server did not return 200.", 200, s, i1);
        exception;
        bufferedreader = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    static Response a(RequestResponseManager requestresponsemanager, UserInfo userinfo)
    {
        return requestresponsemanager.a(userinfo);
    }

    static String a(RequestResponseManager requestresponsemanager, String s, HttpRequestCallback httprequestcallback)
    {
        return requestresponsemanager.a(s, httprequestcallback);
    }

    private String a(String s, HttpRequestCallback httprequestcallback)
    {
        b();
        o = InternalSDKUtil.keag();
        e = PkInitilaizer.getConfigParams().getExponent();
        f = PkInitilaizer.getConfigParams().getModulus();
        g = PkInitilaizer.getConfigParams().getVersion();
        if (e.equals("") || f.equals("") || g.equals(""))
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "Exception retreiving Ad due to key problem");
            return null;
        } else
        {
            String s1 = InternalSDKUtil.SeMeGe(s, o, p, d, f, e);
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("sm=");
            stringbuilder.append(s1);
            stringbuilder.append("&sn=");
            stringbuilder.append(g);
            String s2 = stringbuilder.toString();
            Log.debug("[InMobi]-[Network]-4.3.0", s2);
            return s2;
        }
    }

    static HttpURLConnection a(RequestResponseManager requestresponsemanager)
    {
        return requestresponsemanager.i;
    }

    static HttpURLConnection a(RequestResponseManager requestresponsemanager, String s, UserInfo userinfo)
    {
        return requestresponsemanager.a(s, userinfo);
    }

    static HttpURLConnection a(RequestResponseManager requestresponsemanager, HttpURLConnection httpurlconnection)
    {
        requestresponsemanager.i = httpurlconnection;
        return httpurlconnection;
    }

    private HttpURLConnection a(String s, UserInfo userinfo)
    {
        i = (HttpURLConnection)(new URL(s)).openConnection();
        InternalSDKUtil.addCommonPropertiesToConnection(i);
        a(i, userinfo);
        return i;
    }

    static AtomicBoolean a()
    {
        return l;
    }

    private void a(int i1, Object obj, HttpRequestCallback httprequestcallback)
    {
        while (h.get() || httprequestcallback == null) 
        {
            return;
        }
        httprequestcallback.notifyResult(i1, obj);
    }

    static void a(RequestResponseManager requestresponsemanager, int i1, Object obj, HttpRequestCallback httprequestcallback)
    {
        requestresponsemanager.a(i1, obj, httprequestcallback);
    }

    static void a(RequestResponseManager requestresponsemanager, String s)
    {
        requestresponsemanager.a(s);
    }

    private void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        IOException ioexception;
        ioexception;
        Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Exception closing resource: ").append(closeable).toString(), ioexception);
        return;
    }

    private void a(String s)
    {
        i.setRequestProperty("Content-Length", Integer.toString(s.length()));
        BufferedWriter bufferedwriter = new BufferedWriter(new OutputStreamWriter(i.getOutputStream()));
        bufferedwriter.write(s);
        a(((Closeable) (bufferedwriter)));
        return;
        Exception exception;
        exception;
        bufferedwriter = null;
_L2:
        a(((Closeable) (bufferedwriter)));
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static void a(HttpURLConnection httpurlconnection, UserInfo userinfo)
    {
        int i1 = Initializer.getConfigParams().getFetchTimeOut();
        httpurlconnection.setConnectTimeout(i1);
        httpurlconnection.setReadTimeout(i1);
        httpurlconnection.setRequestProperty("user-agent", userinfo.getPhoneDefaultUserAgent());
        httpurlconnection.setUseCaches(false);
        httpurlconnection.setDoOutput(true);
        httpurlconnection.setDoInput(true);
        httpurlconnection.setRequestMethod("POST");
        httpurlconnection.setRequestProperty("content-type", "application/x-www-form-urlencoded");
    }

    private void b()
    {
        try
        {
            d = new byte[8];
            SecureRandom securerandom = new SecureRandom();
            securerandom.nextBytes(d);
            p = new byte[16];
            securerandom.nextBytes(p);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void asyncRequestAd(UserInfo userinfo, ActionType actiontype, String s, HttpRequestCallback httprequestcallback)
    {
        class b extends Thread
        {

            final UserInfo a;
            final String b;
            final ActionType c;
            final HttpRequestCallback d;
            final RequestResponseManager e;

            public void run()
            {
                com.inmobi.commons.thinICE.wifi.WifiInfo wifiinfo1 = IceDataCollector.getConnectedWifiInfo(a.getApplicationContext());
                com.inmobi.commons.thinICE.wifi.WifiInfo wifiinfo = wifiinfo1;
_L1:
                Exception exception;
                try
                {
                    Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Ad Serving URL: ").append(b).toString());
                    String s1 = HttpRequestBuilder.buildPostBody(a, wifiinfo, c);
                    Log.debug("[InMobi]-[Network]-4.3.0", s1);
                    RequestResponseManager.a(e, RequestResponseManager.a(e, b, a));
                    RequestResponseManager.a(e, s1);
                    Response response = RequestResponseManager.a(e, a);
                    RequestResponseManager.a(e, 0, response, d);
                    return;
                }
                catch (AdException adexception)
                {
                    Log.debug("[InMobi]-[Network]-4.3.0", "Exception retrieving ad ", adexception);
                    RequestResponseManager.a(e, 1, adexception, d);
                    return;
                }
                catch (IOException ioexception)
                {
                    Log.debug("[InMobi]-[Network]-4.3.0", "Exception retrieving ad ", ioexception);
                    if (ioexception instanceof SocketTimeoutException)
                    {
                        Log.internal("[InMobi]-[Network]-4.3.0", "Server Timeout");
                        RequestResponseManager.a(e, 1, com.inmobi.androidsdk.AdRequest.ErrorCode.AD_FETCH_TIMEOUT, d);
                        return;
                    } else
                    {
                        RequestResponseManager.a(e, 1, com.inmobi.androidsdk.AdRequest.ErrorCode.NETWORK_ERROR, d);
                        return;
                    }
                }
                catch (Exception exception1)
                {
                    Log.debug("[InMobi]-[Network]-4.3.0", "Exception retrieving ad ", exception1);
                }
                break MISSING_BLOCK_LABEL_228;
                exception;
                Log.internal("[InMobi]-[Network]-4.3.0", "No wifi permissions set, unable to send wifi data");
                wifiinfo = null;
                  goto _L1
                RequestResponseManager.a(e, 1, com.inmobi.androidsdk.AdRequest.ErrorCode.INTERNAL_ERROR, d);
                return;
            }

            b(UserInfo userinfo, String s, ActionType actiontype, HttpRequestCallback httprequestcallback)
            {
                e = RequestResponseManager.this;
                a = userinfo;
                b = s;
                c = actiontype;
                d = httprequestcallback;
                super();
            }
        }

        (new b(userinfo, s, actiontype, httprequestcallback)).start();
    }

    public void asyncRequestSecuredAd(UserInfo userinfo, ActionType actiontype, String s, HttpRequestCallback httprequestcallback)
    {
        class c extends Thread
        {

            final UserInfo a;
            final String b;
            final ActionType c;
            final HttpRequestCallback d;
            final RequestResponseManager e;

            public void run()
            {
                com.inmobi.commons.thinICE.wifi.WifiInfo wifiinfo1 = IceDataCollector.getConnectedWifiInfo(a.getApplicationContext());
                com.inmobi.commons.thinICE.wifi.WifiInfo wifiinfo = wifiinfo1;
_L2:
                String s2;
                Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Ad Serving URL: ").append(b).toString());
                String s1 = HttpRequestBuilder.buildPostBody(a, wifiinfo, c);
                s2 = RequestResponseManager.a(e, s1, d);
                RequestResponseManager.a(e, RequestResponseManager.a(e, b, a));
                if (s2 == null)
                {
                    break; /* Loop/switch isn't completed */
                }
                Exception exception;
                try
                {
                    RequestResponseManager.a(e, s2);
                    Response response = RequestResponseManager.a(e, a);
                    RequestResponseManager.a(e, 0, response, d);
                    return;
                }
                catch (AdException adexception)
                {
                    Log.debug("[InMobi]-[Network]-4.3.0", "Exception retrieving ad ", adexception);
                    RequestResponseManager.a(e, 1, adexception, d);
                    return;
                }
                catch (IOException ioexception)
                {
                    Log.debug("[InMobi]-[Network]-4.3.0", "Exception retrieving ad ", ioexception);
                    if (ioexception instanceof SocketTimeoutException)
                    {
                        Log.internal("[InMobi]-[Network]-4.3.0", "Server Timeout");
                        RequestResponseManager.a(e, 1, com.inmobi.androidsdk.AdRequest.ErrorCode.AD_FETCH_TIMEOUT, d);
                        return;
                    } else
                    {
                        RequestResponseManager.a(e, 1, com.inmobi.androidsdk.AdRequest.ErrorCode.NETWORK_ERROR, d);
                        return;
                    }
                }
                catch (Exception exception1)
                {
                    Log.debug("[InMobi]-[Network]-4.3.0", "Exception retrieving ad ", exception1);
                }
                break MISSING_BLOCK_LABEL_257;
                exception;
                Log.internal("[InMobi]-[Network]-4.3.0", "No wifi permissions set, unable to send wifi data");
                wifiinfo = null;
                if (true) goto _L2; else goto _L1
_L1:
                RequestResponseManager.a(e, 1, com.inmobi.androidsdk.AdRequest.ErrorCode.INTERNAL_ERROR, d);
                return;
                RequestResponseManager.a(e, 1, com.inmobi.androidsdk.AdRequest.ErrorCode.INTERNAL_ERROR, d);
                return;
            }

            c(UserInfo userinfo, String s, ActionType actiontype, HttpRequestCallback httprequestcallback)
            {
                e = RequestResponseManager.this;
                a = userinfo;
                b = s;
                c = actiontype;
                d = httprequestcallback;
                super();
            }
        }

        (new c(userinfo, s, actiontype, httprequestcallback)).start();
    }

    public void deinit()
    {
        try
        {
            if (j != null)
            {
                j.set(false);
            }
            if (mDBWriterQueue != null)
            {
                mDBWriterQueue.saveClickEvents();
                mDBWriterQueue.clear();
            }
            isSynced.set(false);
            if (mNetworkQueue != null)
            {
                mNetworkQueue.clear();
            }
            mNetworkQueue = null;
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Request Response Manager deinit failed", exception);
        }
    }

    public void doCancel()
    {
        h.set(true);
        class a extends Thread
        {

            final RequestResponseManager a;

            public void run()
            {
                try
                {
                    RequestResponseManager.a(a).disconnect();
                    return;
                }
                catch (Exception exception)
                {
                    Log.internal("[InMobi]-[Network]-4.3.0", "Exception in closing connection ", exception);
                }
            }

            a()
            {
                a = RequestResponseManager.this;
                super();
            }
        }

        if (i != null)
        {
            (new a()).start();
        }
    }

    public void init()
    {
        try
        {
            if (mNetworkQueue == null)
            {
                mNetworkQueue = IMAIClickEventList.getLoggedClickEvents();
            }
            if (j == null)
            {
                j = new AtomicBoolean(false);
            }
            l = new AtomicBoolean(true);
            isSynced = new AtomicBoolean(false);
            c = new AtomicBoolean(false);
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Request Response Manager init failed", exception);
        }
    }

    public void processClick(Context context, HttpRequestCallback httprequestcallback)
    {
        try
        {
            if (j.compareAndSet(false, true))
            {
                class d
                    implements Runnable
                {

                    final Context a;
                    final HttpRequestCallback b;
                    final RequestResponseManager c;

                    public void run()
                    {
_L10:
                        if (RequestResponseManager.isSynced.get())
                        {
                            break MISSING_BLOCK_LABEL_668;
                        }
                        RequestResponseManager.isSynced.set(true);
                        if (RequestResponseManager.mNetworkQueue != null && !RequestResponseManager.mNetworkQueue.isEmpty())
                        {
                            break MISSING_BLOCK_LABEL_77;
                        }
                        if (RequestResponseManager.mDBWriterQueue == null && RequestResponseManager.mDBWriterQueue.isEmpty())
                        {
                            Log.internal("[InMobi]-[Network]-4.3.0", "Click event list empty");
                            c.deinit();
                            return;
                        }
                        RequestResponseManager.mNetworkQueue.addAll(RequestResponseManager.mDBWriterQueue);
                        RequestResponseManager.mDBWriterQueue.clear();
_L5:
                        ClickData clickdata;
                        String s;
                        int i1;
                        boolean flag;
                        boolean flag1;
                        int j1;
                        if (RequestResponseManager.mNetworkQueue.isEmpty())
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        clickdata = (ClickData)RequestResponseManager.mNetworkQueue.remove(0);
                        s = clickdata.getClickUrl();
                        i1 = clickdata.getRetryCount();
                        flag = clickdata.isPingWv();
                        flag1 = clickdata.isFollowRedirects();
                        j1 = Initializer.getConfigParams().getImai().getRetryInterval();
                        if (InternalSDKUtil.checkNetworkAvailibility(a))
                        {
                            break MISSING_BLOCK_LABEL_222;
                        }
                        Log.internal("[InMobi]-[Network]-4.3.0", "Cannot process click. Network Not available");
                        if (i1 <= 1)
                        {
                            break MISSING_BLOCK_LABEL_169;
                        }
                        RequestResponseManager.mDBWriterQueue.add(clickdata);
                        Exception exception1;
                        Exception exception2;
                        if (b != null)
                        {
                            b.notifyResult(1, null);
                        }
                        c.deinit();
                        return;
                        int k1 = Initializer.getConfigParams().getImai().getMaxRetry();
                        if (RequestResponseManager.a().get() || i1 >= k1)
                        {
                            break MISSING_BLOCK_LABEL_302;
                        }
                        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Retrying to ping in background after ").append(j1 / 1000).append(" secs").toString());
                        Thread thread = RequestResponseManager.a;
                        thread;
                        JVM INSTR monitorenter ;
                        RequestResponseManager.a.wait(j1);
_L6:
                        try
                        {
                            Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Processing click in background: ").append(s).toString());
                        }
                        // Misplaced declaration of an exception variable
                        catch (Exception exception2)
                        {
                            try
                            {
                                Log.internal("[InMobi]-[Network]-4.3.0", "Exception pinging click in background", exception2);
                                c.deinit();
                                return;
                            }
                            // Misplaced declaration of an exception variable
                            catch (Exception exception1)
                            {
                                Log.internal("[InMobi]-[Network]-4.3.0", "Exception ping to server ", exception1);
                            }
                            return;
                        }
                        if (!flag) goto _L2; else goto _L1
_L1:
                        if (!c.processClickUrlInWebview(s)) goto _L4; else goto _L3
_L3:
                        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Ping in webview successful: ").append(s).toString());
                        if (b != null)
                        {
                            b.notifyResult(0, null);
                        }
_L7:
                        if (RequestResponseManager.mDBWriterQueue.size() > Initializer.getConfigParams().getImai().getmDefaultEventsBatch())
                        {
                            RequestResponseManager.mDBWriterQueue.saveClickEvents();
                            RequestResponseManager.mDBWriterQueue.clear();
                        }
                          goto _L5
                        InterruptedException interruptedexception;
                        interruptedexception;
                        Log.internal("[InMobi]-[Network]-4.3.0", "Network thread wait failure", interruptedexception);
                          goto _L6
                        Exception exception3;
                        exception3;
                        thread;
                        JVM INSTR monitorexit ;
                        throw exception3;
_L4:
                        clickdata.setRetryCount(i1 - 1);
                        if (i1 <= 1)
                        {
                            break MISSING_BLOCK_LABEL_467;
                        }
                        RequestResponseManager.mDBWriterQueue.add(clickdata);
                        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Ping in webview failed: ").append(s).toString());
                        if (b != null)
                        {
                            b.notifyResult(1, null);
                        }
                          goto _L7
_L2:
label0:
                        {
                            if (!c.processClickHttpClient(s, flag1))
                            {
                                break label0;
                            }
                            Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Ping successful: ").append(s).toString());
                            if (b != null)
                            {
                                b.notifyResult(0, null);
                            }
                        }
                          goto _L7
                        clickdata.setRetryCount(i1 - 1);
                        if (i1 <= 1)
                        {
                            break MISSING_BLOCK_LABEL_597;
                        }
                        RequestResponseManager.mDBWriterQueue.add(clickdata);
                        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Ping  failed: ").append(s).toString());
                        if (b != null)
                        {
                            b.notifyResult(1, null);
                        }
                        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Ping failed: ").append(s).toString());
                          goto _L7
                        c.deinit();
                        return;
                        if (true) goto _L5; else goto _L8
_L8:
                        if (true) goto _L10; else goto _L9
_L9:
                    }

            d(Context context, HttpRequestCallback httprequestcallback)
            {
                c = RequestResponseManager.this;
                a = context;
                b = httprequestcallback;
                super();
            }
                }

                a = new Thread(new d(context, httprequestcallback));
                a.setPriority(1);
                a.start();
            }
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Exception ping ", exception);
        }
    }

    public boolean processClickHttpClient(String s, boolean flag)
    {
        HttpURLConnection httpurlconnection = null;
        int i1;
        HttpURLConnection httpurlconnection2;
        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Processing click in http client ").append(s).toString());
        i1 = Initializer.getConfigParams().getImai().getPingTimeOut();
        httpurlconnection2 = (HttpURLConnection)(new URL(s)).openConnection();
        int j1;
        httpurlconnection2.setInstanceFollowRedirects(flag);
        InternalSDKUtil.addCommonPropertiesToConnection(httpurlconnection2);
        httpurlconnection2.setConnectTimeout(i1);
        httpurlconnection2.setReadTimeout(i1);
        httpurlconnection2.setUseCaches(false);
        httpurlconnection2.setRequestProperty("user-agent", InternalSDKUtil.getSavedUserAgent());
        httpurlconnection2.setRequestMethod("GET");
        if (SDKUtil.getQAMode())
        {
            httpurlconnection2.setRequestProperty("mk-carrier", "117.97.87.6");
            httpurlconnection2.setRequestProperty("x-real-ip", "117.97.87.6");
        }
        j1 = httpurlconnection2.getResponseCode();
        Exception exception;
        Exception exception1;
        boolean flag1;
        HttpURLConnection httpurlconnection1;
        Exception exception2;
        boolean flag2;
        if (j1 < 400)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (!flag2) goto _L2; else goto _L1
_L1:
        l.set(true);
_L11:
        if (httpurlconnection2 == null) goto _L4; else goto _L3
_L3:
        httpurlconnection2.disconnect();
        flag1 = flag2;
_L6:
        return flag1;
_L2:
        try
        {
            l.set(false);
            continue; /* Loop/switch isn't completed */
        }
        catch (Exception exception4)
        {
            httpurlconnection1 = httpurlconnection2;
            flag1 = flag2;
            exception1 = exception4;
        }
        finally
        {
            httpurlconnection = httpurlconnection2;
            exception2 = exception3;
            continue; /* Loop/switch isn't completed */
        }
_L9:
        l.set(false);
        Log.internal("[InMobi]-[Network]-4.3.0", "Click in background exception", exception1);
        if (httpurlconnection1 == null) goto _L6; else goto _L5
_L5:
        httpurlconnection1.disconnect();
        return flag1;
        exception2;
_L8:
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        throw exception2;
        exception2;
        httpurlconnection = httpurlconnection1;
        if (true) goto _L8; else goto _L7
_L7:
        exception;
        exception1 = exception;
        flag1 = false;
        httpurlconnection1 = null;
          goto _L9
        exception1;
        httpurlconnection1 = httpurlconnection2;
        flag1 = false;
          goto _L9
_L4:
        return flag2;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public boolean processClickUrlInWebview(String s)
    {
        int i1;
        boolean flag;
        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Processing click in webview ").append(s).toString());
        k = new WebviewLoader(InternalSDKUtil.getContext());
        i1 = Initializer.getConfigParams().getImai().getPingTimeOut();
        flag = SDKUtil.getQAMode();
        HashMap hashmap;
        hashmap = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        hashmap = new HashMap();
        hashmap.put("mk-carrier", "117.97.87.6");
        hashmap.put("x-real-ip", "117.97.87.6");
        k.loadInWebview(s, hashmap);
        Thread thread = a;
        thread;
        JVM INSTR monitorenter ;
        a.wait(i1);
_L1:
        if (!c.get())
        {
            break MISSING_BLOCK_LABEL_200;
        }
        l.set(true);
_L2:
        boolean flag1;
        k.deinit(i1);
        flag1 = c.get();
        return flag1;
        InterruptedException interruptedexception;
        interruptedexception;
        Log.internal("[InMobi]-[Network]-4.3.0", "Network thread wait failure", interruptedexception);
          goto _L1
        Exception exception1;
        exception1;
        thread;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "ping in webview exception", exception);
        }
        return c.get();
        l.set(false);
        WebviewLoader.b.set(false);
          goto _L2
    }

}
