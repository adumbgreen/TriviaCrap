// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.androidsdk.carb;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import com.inmobi.androidsdk.bootstrapper.PkInitilaizer;
import com.inmobi.androidsdk.bootstrapper.PkParams;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.internal.Base64;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.uid.UID;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.inmobi.androidsdk.carb:
//            CarbInitializer, CarbConfigParams, CarbInfo

public class CARB
{

    public static final String LOGGING_TAG = "[InMobi]-[CARB]-4.3.0";
    private static CARB g = new CARB();
    private static SharedPreferences j;
    private static AtomicBoolean k = new AtomicBoolean(false);
    private static Thread l;
    private static AtomicBoolean m = new AtomicBoolean(false);
    private static Thread n;
    private static String o = "";
    private static String p = "";
    private static String q = "";
    byte a[];
    byte b[];
    String c;
    String d;
    String e;
    CarbCallback f;
    private String h;
    private String i;
    private final int r = 8;
    private final int s = 16;
    private byte t[];
    private byte u[];
    private byte v[];
    private byte w[];
    private ArrayList x;

    private CARB()
    {
        h = "carb_last_req_time";
        i = "carbpreference";
        c = "";
        d = "";
        e = "";
        f = null;
        x = new ArrayList();
        CarbInitializer.initialize();
        j = InternalSDKUtil.getContext().getSharedPreferences(i, 0);
    }

    static SharedPreferences a()
    {
        return j;
    }

    static String a(CARB carb, String s1, byte abyte0[], byte abyte1[], byte abyte2[], String s2, String s3)
    {
        return carb.a(s1, abyte0, abyte1, abyte2, s2, s3);
    }

    private String a(String s1, byte abyte0[], byte abyte1[], byte abyte2[], String s2, String s3)
    {
        String s4 = InternalSDKUtil.SeMeGe(s1, abyte0, abyte1, abyte2, s2, s3);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("sm=");
        stringbuilder.append(s4);
        stringbuilder.append("&sn=");
        stringbuilder.append(e);
        String s5 = stringbuilder.toString();
        Log.internal("[InMobi]-[CARB]-4.3.0", s5);
        return s5;
    }

    static void a(CARB carb)
    {
        carb.c();
    }

    static void a(CARB carb, ArrayList arraylist, String s1, int i1)
    {
        carb.a(arraylist, s1, i1);
    }

    private void a(ArrayList arraylist, String s1, int i1)
    {
        this;
        JVM INSTR monitorenter ;
        if (m.compareAndSet(false, true))
        {
            m.set(true);
            class a
                implements Runnable
            {

                int a;
                final ArrayList b;
                final String c;
                final int d;
                final CARB e;

                private int a(String s2)
                {
                    if (!InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext()))
                    {
                        return -1;
                    }
                    URL url;
                    HttpURLConnection httpurlconnection;
                    url = new URL(CarbInitializer.getConfigParams().getCarbPostpoint());
                    httpurlconnection = (HttpURLConnection)url.openConnection();
                    InternalSDKUtil.addCommonPropertiesToConnection(httpurlconnection);
                    long l1 = 1000L * CarbInitializer.getConfigParams().getTimeoutInterval();
                    httpurlconnection.setConnectTimeout((int)l1);
                    httpurlconnection.setReadTimeout((int)l1);
                    httpurlconnection.setRequestProperty("user-agent", DeviceInfo.getPhoneDefaultUserAgent());
                    httpurlconnection.setUseCaches(false);
                    httpurlconnection.setDoOutput(true);
                    httpurlconnection.setDoInput(true);
                    httpurlconnection.setRequestMethod("POST");
                    httpurlconnection.setRequestProperty("content-type", "application/x-www-form-urlencoded");
                    httpurlconnection.setRequestProperty("Content-Length", Integer.toString(s2.length()));
                    BufferedWriter bufferedwriter;
                    try
                    {
                        InetAddress.getByName(url.getHost());
                    }
                    catch (UnknownHostException unknownhostexception)
                    {
                        IOException ioexception2;
                        try
                        {
                            throw new MalformedURLException((new StringBuilder()).append("Malformed URL: ").append(url.toString()).toString());
                        }
                        catch (MalformedURLException malformedurlexception)
                        {
                            Log.internal("[InMobi]-[CARB]-4.3.0", "Malformed URL");
                        }
                        catch (IOException ioexception) { }
                        return -1;
                    }
                    bufferedwriter = new BufferedWriter(new OutputStreamWriter(httpurlconnection.getOutputStream()));
                    bufferedwriter.write(s2);
                    if (bufferedwriter == null)
                    {
                        break MISSING_BLOCK_LABEL_170;
                    }
                    bufferedwriter.close();
_L2:
                    if (httpurlconnection.getResponseCode() == 200)
                    {
                        return 200;
                    }
                    break; /* Loop/switch isn't completed */
                    ioexception2;
                    Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Exception closing resource: ").append(bufferedwriter).toString(), ioexception2);
                    if (true) goto _L2; else goto _L1
                    Exception exception1;
                    exception1;
                    BufferedWriter bufferedwriter1 = null;
_L5:
                    if (bufferedwriter1 == null)
                    {
                        break MISSING_BLOCK_LABEL_279;
                    }
                    bufferedwriter1.close();
_L3:
                    throw exception1;
                    IOException ioexception1;
                    ioexception1;
                    Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Exception closing resource: ").append(bufferedwriter1).toString(), ioexception1);
                      goto _L3
_L1:
                    int j1 = httpurlconnection.getResponseCode();
                    return j1;
                    exception1;
                    bufferedwriter1 = bufferedwriter;
                    if (true) goto _L5; else goto _L4
_L4:
                }

                private String a(ArrayList arraylist1, String s2, int j1)
                {
                    StringBuffer stringbuffer = new StringBuffer();
                    stringbuffer.append("req_id=");
                    stringbuffer.append(CARB.getURLEncoded(s2));
                    JSONArray jsonarray = new JSONArray();
                    int k1 = arraylist1.size();
                    for (int l1 = 0; l1 < k1; l1++)
                    {
                        jsonarray.put(((CarbInfo)arraylist1.get(l1)).getInmId());
                    }

                    stringbuffer.append("&p_a_apps=");
                    stringbuffer.append(CARB.getURLEncoded(jsonarray.toString()));
                    stringbuffer.append("&i_till=");
                    stringbuffer.append(j1);
                    String s3 = Integer.toString((new Random()).nextInt());
                    String s4 = CarbInitializer.getConfigParams().getUID().getUidMapWitoutXOR(1, s3, null);
                    stringbuffer.append("&u-id-map=");
                    stringbuffer.append(CARB.getURLEncoded(s4));
                    return stringbuffer.toString();
                }

                public void run()
                {
                    CARB.g(e);
                    CARB.b(e, InternalSDKUtil.keag());
                    e.c = PkInitilaizer.getConfigParams().getExponent();
                    e.d = PkInitilaizer.getConfigParams().getModulus();
                    e.e = PkInitilaizer.getConfigParams().getVersion();
                    if (e.c.equals("") || e.d.equals("") || e.e.equals(""))
                    {
                        Log.internal("[InMobi]-[CARB]-4.3.0", "Exception retreiving Ad due to key problem");
                        CARB.h(e);
                        return;
                    }
                    String s2 = a(b, c, d);
                    Log.internal("[InMobi]-[CARB]-4.3.0", (new StringBuilder()).append("PostBody Before encryption: ").append(s2).toString());
                    String s3 = CARB.a(e, s2, CARB.i(e), CARB.j(e), e.b, e.d, e.c);
                    if (s3 == null)
                    {
                        Log.internal("[InMobi]-[CARB]-4.3.0", "POST message cannot be encrypted");
                        CARB.b(e);
                        return;
                    }
                    int j1 = a(s3);
                    Log.internal("[InMobi]-[CARB]-4.3.0", (new StringBuilder()).append("Post Response to CARB server: ").append(j1).toString());
                    if (200 == j1)
                    {
                        if (e.f != null)
                        {
                            e.f.postSuccess();
                        }
                        CARB.h(e);
                        return;
                    }
                    if (e.f != null)
                    {
                        e.f.postFailed();
                    }
                    int k1 = CarbInitializer.getConfigParams().getRetryCount();
                    long l1 = 1000L * CarbInitializer.getConfigParams().getRetryInterval();
                    if (a <= k1)
                    {
                        try
                        {
                            Thread.sleep(l1 * (long)a);
                        }
                        catch (InterruptedException interruptedexception) { }
                        Log.internal("[InMobi]-[CARB]-4.3.0", (new StringBuilder()).append("POSt to carb failed. Retrying count: ").append(a).toString());
                        a = 1 + a;
                        if (Looper.myLooper() == null)
                        {
                            Looper.prepare();
                        }
                        (new Handler()).postDelayed(this, 0L);
                        Looper.loop();
                        Looper.myLooper().quit();
                        return;
                    } else
                    {
                        a = 0;
                        CARB.h(e);
                        return;
                    }
                }

            a(ArrayList arraylist, String s1, int i1)
            {
                e = CARB.this;
                b = arraylist;
                c = s1;
                d = i1;
                super();
                a = 1;
            }

                private class CarbCallback
                {

                    public abstract void postFailed();

                    public abstract void postSuccess();
                }

            }

            n = new Thread(new a(arraylist, s1, i1));
            n.start();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static boolean a(CARB carb, String s1)
    {
        return carb.a(s1);
    }

    private boolean a(String s1)
    {
        PackageManager packagemanager = InternalSDKUtil.getContext().getPackageManager();
        try
        {
            packagemanager.getPackageInfo(s1, 1);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return true;
    }

    static byte[] a(CARB carb, byte abyte0[])
    {
        carb.t = abyte0;
        return abyte0;
    }

    private void b()
    {
        this;
        JVM INSTR monitorenter ;
        x.clear();
        if (k.compareAndSet(false, true))
        {
            class b
                implements Runnable
            {

                final CARB a;

                private int a(String s1)
                {
                    if (!InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext()))
                    {
                        return -1;
                    }
                    URL url;
                    HttpURLConnection httpurlconnection;
                    url = new URL(CarbInitializer.getConfigParams().getCarbEndpoint());
                    httpurlconnection = (HttpURLConnection)url.openConnection();
                    InternalSDKUtil.addCommonPropertiesToConnection(httpurlconnection);
                    long l1 = 1000L * CarbInitializer.getConfigParams().getTimeoutInterval();
                    httpurlconnection.setConnectTimeout((int)l1);
                    httpurlconnection.setReadTimeout((int)l1);
                    httpurlconnection.setRequestProperty("user-agent", DeviceInfo.getPhoneDefaultUserAgent());
                    httpurlconnection.setUseCaches(false);
                    httpurlconnection.setDoOutput(true);
                    httpurlconnection.setDoInput(true);
                    httpurlconnection.setRequestMethod("POST");
                    httpurlconnection.setRequestProperty("content-type", "application/x-www-form-urlencoded");
                    httpurlconnection.setRequestProperty("Content-Length", Integer.toString(s1.length()));
                    InetAddress.getByName(url.getHost());
                    BufferedWriter bufferedwriter = new BufferedWriter(new OutputStreamWriter(httpurlconnection.getOutputStream()));
                    bufferedwriter.write(s1);
                    if (bufferedwriter == null)
                    {
                        break MISSING_BLOCK_LABEL_170;
                    }
                    bufferedwriter.close();
_L8:
                    Log.internal("[InMobi]-[CARB]-4.3.0", (new StringBuilder()).append("Get CARB list status: ").append(httpurlconnection.getResponseCode()).toString());
                    if (httpurlconnection.getResponseCode() != 200) goto _L2; else goto _L1
_L1:
                    BufferedReader bufferedreader;
                    StringBuilder stringbuilder;
                    bufferedreader = new BufferedReader(new InputStreamReader(httpurlconnection.getInputStream(), "UTF-8"));
                    stringbuilder = new StringBuilder();
_L5:
                    String s2 = bufferedreader.readLine();
                    if (s2 == null) goto _L4; else goto _L3
_L3:
                    MalformedURLException malformedurlexception;
                    stringbuilder.append(s2).append("\n");
                      goto _L5
_L7:
                    return -1;
                    UnknownHostException unknownhostexception;
                    unknownhostexception;
                    Exception exception1;
                    BufferedWriter bufferedwriter1;
                    IOException ioexception1;
                    String s3;
                    String s4;
                    String s5;
                    JSONObject jsonobject;
                    String s6;
                    JSONArray jsonarray;
                    int i1;
                    int j1;
                    JSONObject jsonobject2;
                    JSONException jsonexception1;
                    String s7;
                    String s8;
                    Exception exception2;
                    int i2;
                    IOException ioexception2;
                    try
                    {
                        throw new MalformedURLException((new StringBuilder()).append("Malformed URL: ").append(url.toString()).toString());
                    }
                    // Misplaced declaration of an exception variable
                    catch (MalformedURLException malformedurlexception)
                    {
                        Log.internal("[InMobi]-[CARB]-4.3.0", "Malformed URL");
                    }
                    catch (IOException ioexception) { }
                    catch (JSONException jsonexception)
                    {
                        Log.internal("[InMobi]-[CARB]-4.3.0", "Invalid JSON response");
                    }
                    if (true) goto _L7; else goto _L6
_L6:
                    ioexception2;
                    Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Exception closing resource: ").append(bufferedwriter).toString(), ioexception2);
                      goto _L8
                    exception1;
                    bufferedwriter1 = null;
_L17:
                    if (bufferedwriter1 == null)
                    {
                        break MISSING_BLOCK_LABEL_370;
                    }
                    bufferedwriter1.close();
_L9:
                    throw exception1;
                    ioexception1;
                    Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Exception closing resource: ").append(bufferedwriter1).toString(), ioexception1);
                      goto _L9
_L4:
                    s3 = stringbuilder.toString();
                    Log.internal("[InMobi]-[CARB]-4.3.0", (new StringBuilder()).append("RESPONSE: ").append(s3).toString());
                    s4 = new String(InternalSDKUtil.DeAe(Base64.decode(s3.getBytes(), 0), CARB.c(a), CARB.d(a)));
                    s5 = s4;
_L16:
                    if (s5 == null) goto _L11; else goto _L10
_L10:
                    Log.internal("[InMobi]-[CARB]-4.3.0", (new StringBuilder()).append("Get list after decryption: ").append(s5).toString());
                    jsonobject = new JSONObject(s5);
                    if (!jsonobject.getBoolean("success")) goto _L13; else goto _L12
_L12:
                    JSONObject jsonobject1 = jsonobject.getJSONObject("data");
                    s6 = jsonobject1.getString("req_id");
                    jsonobject1.getInt("count");
                    jsonarray = jsonobject1.getJSONArray("p_apps");
                    if (jsonarray.length() != 0) goto _L15; else goto _L14
_L14:
                    android.content.SharedPreferences.Editor editor1 = CARB.a().edit();
                    editor1.putLong(CARB.e(a), System.currentTimeMillis());
                    editor1.commit();
                    CARB.b(a);
                    return -1;
                    exception2;
                    Log.internal("[InMobi]-[CARB]-4.3.0", "Exception in carb ", exception2);
                    s5 = null;
                      goto _L16
_L11:
                    Log.internal("[InMobi]-[CARB]-4.3.0", "Unable to decrypt response or response not encrypted");
                    CARB.b(a);
                    return -1;
_L18:
                    if (i1 >= jsonarray.length())
                    {
                        break MISSING_BLOCK_LABEL_775;
                    }
                    jsonobject2 = jsonarray.getJSONObject(i1);
                    s7 = jsonobject2.getString("bid");
                    s8 = jsonobject2.getString("inm_id");
                    if (s8 == null)
                    {
                        break MISSING_BLOCK_LABEL_875;
                    }
                    if ("".equals(s8))
                    {
                        break MISSING_BLOCK_LABEL_875;
                    }
                    break MISSING_BLOCK_LABEL_724;
                    jsonexception1;
                    Log.internal("[InMobi]-[CARB]-4.3.0", "BID or INM missing");
                    break MISSING_BLOCK_LABEL_875;
                    CarbInfo carbinfo = new CarbInfo();
                    carbinfo.setBid(s7);
                    carbinfo.setInmId(s8);
                    if (!CARB.a(a, s7))
                    {
                        CARB.f(a).add(carbinfo);
                    }
                    break MISSING_BLOCK_LABEL_875;
                    android.content.SharedPreferences.Editor editor = CARB.a().edit();
                    editor.putLong(CARB.e(a), System.currentTimeMillis());
                    editor.commit();
                    CARB.a(a, CARB.f(a), s6, j1 + 1);
_L13:
                    CARB.b(a);
                    return 200;
_L2:
                    i2 = httpurlconnection.getResponseCode();
                    return i2;
                    exception1;
                    bufferedwriter1 = bufferedwriter;
                      goto _L17
_L15:
                    i1 = 0;
                    j1 = 0;
                      goto _L18
                    int k1 = i1 + 1;
                    j1 = i1;
                    i1 = k1;
                      goto _L18
                }

                private void a()
                {
                    CARB.a(a);
                    CARB.a(a, InternalSDKUtil.keag());
                    a.c = PkInitilaizer.getConfigParams().getExponent();
                    a.d = PkInitilaizer.getConfigParams().getModulus();
                    a.e = PkInitilaizer.getConfigParams().getVersion();
                    if (a.c.equals("") || a.d.equals("") || a.e.equals(""))
                    {
                        Log.internal("[InMobi]-[CARB]-4.3.0", "Exception retreiving Ad due to key problem");
                        CARB.b(a);
                    } else
                    {
                        String s1 = b();
                        String s2 = CARB.a(a, s1, CARB.c(a), CARB.d(a), a.a, a.d, a.c);
                        if (s2 == null)
                        {
                            CARB.b(a);
                            return;
                        }
                        if (a(s2) != 200)
                        {
                            CARB.b(a);
                            return;
                        }
                    }
                }

                private String b()
                {
                    StringBuffer stringbuffer;
                    stringbuffer = new StringBuffer();
                    CARB.fillCarbInfo();
                    stringbuffer.append("mk-siteid=");
                    stringbuffer.append(CARB.getURLEncoded(InMobi.getAppId()));
                    String s1 = (new StringBuilder()).append("pr-SAND-").append(InternalSDKUtil.getInMobiInternalVersion("4.3.0")).append("-").append("20140428").toString();
                    stringbuffer.append("&mk-version=");
                    stringbuffer.append(CARB.getURLEncoded(s1));
                    String s2 = Integer.toString((new Random()).nextInt());
                    String s3 = CarbInitializer.getConfigParams().getUID().getUidMapWitoutXOR(1, s2, null);
                    stringbuffer.append("&u-id-map=");
                    stringbuffer.append(CARB.getURLEncoded(s3));
                    stringbuffer.append("&u-appbid=");
                    stringbuffer.append(CARB.getURLEncoded(CARB.getAppBid()));
                    stringbuffer.append("&u-appver=");
                    stringbuffer.append(CARB.getURLEncoded(CARB.getAppVer()));
                    stringbuffer.append("&h-user-agent=");
                    stringbuffer.append(CARB.getURLEncoded(DeviceInfo.getPhoneDefaultUserAgent()));
                    stringbuffer.append("&d-localization=");
                    stringbuffer.append(CARB.getURLEncoded(DeviceInfo.getLocalization()));
                    stringbuffer.append("&d-nettype=");
                    stringbuffer.append(CARB.getURLEncoded(DeviceInfo.getNetworkType()));
                    WifiInfo wifiinfo1 = IceDataCollector.getConnectedWifiInfo(InternalSDKUtil.getContext());
                    WifiInfo wifiinfo = wifiinfo1;
_L2:
                    if (wifiinfo != null)
                    {
                        stringbuffer.append("&c-ap-bssid=");
                        stringbuffer.append(Long.toString(wifiinfo.bssid));
                    }
                    return stringbuffer.toString();
                    Exception exception1;
                    exception1;
                    Log.internal("[InMobi]-4.3.0", "No wifi permissions set, unable to send wifi data");
                    wifiinfo = null;
                    if (true) goto _L2; else goto _L1
_L1:
                }

                public void run()
                {
                    a();
                }

            b()
            {
                a = CARB.this;
                super();
            }
            }

            l = new Thread(new b());
            l.start();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void b(CARB carb)
    {
        carb.e();
    }

    static byte[] b(CARB carb, byte abyte0[])
    {
        carb.v = abyte0;
        return abyte0;
    }

    private void c()
    {
        try
        {
            a = new byte[8];
            SecureRandom securerandom = new SecureRandom();
            securerandom.nextBytes(a);
            u = new byte[16];
            securerandom.nextBytes(u);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    static byte[] c(CARB carb)
    {
        return carb.t;
    }

    private void d()
    {
        try
        {
            b = new byte[8];
            SecureRandom securerandom = new SecureRandom();
            securerandom.nextBytes(b);
            w = new byte[16];
            securerandom.nextBytes(w);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    static byte[] d(CARB carb)
    {
        return carb.u;
    }

    static String e(CARB carb)
    {
        return carb.h;
    }

    private void e()
    {
        if (k != null)
        {
            k.set(false);
        }
    }

    static ArrayList f(CARB carb)
    {
        return carb.x;
    }

    private void f()
    {
        if (m != null)
        {
            m.set(false);
        }
    }

    public static void fillCarbInfo()
    {
        Context context;
        PackageManager packagemanager;
        ApplicationInfo applicationinfo;
        PackageInfo packageinfo;
        String s1;
        try
        {
            context = InternalSDKUtil.getContext();
            packagemanager = context.getPackageManager();
            applicationinfo = packagemanager.getApplicationInfo(context.getPackageName(), 128);
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-4.3.0", "Failed to fill CarbInfo", exception);
            return;
        }
        if (applicationinfo == null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        setAppBId(applicationinfo.packageName);
        setAppDisplayName(applicationinfo.loadLabel(packagemanager).toString());
        packageinfo = packagemanager.getPackageInfo(context.getPackageName(), 128);
        s1 = null;
        if (packageinfo == null)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        s1 = packageinfo.versionName;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        if (!s1.equals(""))
        {
            break MISSING_BLOCK_LABEL_111;
        }
        s1 = (new StringBuilder()).append(packageinfo.versionCode).append("").toString();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        if (!s1.equals(""))
        {
            setAppVer(s1);
        }
    }

    static void g(CARB carb)
    {
        carb.d();
    }

    public static String getAppBid()
    {
        return o;
    }

    public static String getAppDisplayName()
    {
        return q;
    }

    public static String getAppVer()
    {
        return p;
    }

    public static Object getCountryISO(Context context)
    {
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        if (telephonymanager.getNetworkCountryIso().equals(""))
        {
            return context.getResources().getConfiguration().locale.getISO3Country();
        } else
        {
            return telephonymanager.getNetworkCountryIso();
        }
    }

    public static CARB getInstance()
    {
        return g;
    }

    public static String getURLDecoded(String s1, String s2)
    {
        String s3;
        try
        {
            s3 = URLDecoder.decode(s1, s2);
        }
        catch (Exception exception)
        {
            return "";
        }
        return s3;
    }

    public static String getURLEncoded(String s1)
    {
        String s2;
        try
        {
            s2 = URLEncoder.encode(s1, "UTF-8");
        }
        catch (Exception exception)
        {
            return "";
        }
        return s2;
    }

    static void h(CARB carb)
    {
        carb.f();
    }

    static byte[] i(CARB carb)
    {
        return carb.v;
    }

    static byte[] j(CARB carb)
    {
        return carb.w;
    }

    public static void setAppBId(String s1)
    {
        o = s1;
    }

    public static void setAppDisplayName(String s1)
    {
        q = s1;
    }

    public static void setAppVer(String s1)
    {
        p = s1;
    }

    public void setCallBack(CarbCallback carbcallback)
    {
        f = carbcallback;
    }

    public void startCarb()
    {
        this;
        JVM INSTR monitorenter ;
        if (CarbInitializer.getConfigParams().isCarbEnabled()) goto _L2; else goto _L1
_L1:
        Log.internal("[InMobi]-[CARB]-4.3.0", "CARB feature disabled.");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) goto _L4; else goto _L3
_L3:
        long l1 = j.getLong(h, 0L);
        if (0L != l1)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        Log.internal("[InMobi]-[CARB]-4.3.0", "Requesting CARB first time");
        b();
          goto _L4
        Exception exception;
        exception;
        throw exception;
        long l2;
        long l3;
        l2 = CarbInitializer.getConfigParams().getRetreiveFrequncy();
        l3 = System.currentTimeMillis();
        if ((l1 + l2) - l3 > 0L)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        Log.internal("[InMobi]-[CARB]-4.3.0", "CARB request interval reached. Requesting again");
        b();
          goto _L4
        Log.internal("[InMobi]-[CARB]-4.3.0", "CARB request interval not reached. NO request");
          goto _L4
    }

}
