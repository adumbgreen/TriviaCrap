// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

// Referenced classes of package com.mologiq.analytics:
//            m, v, a, ah

class ag
{

    public static boolean a = true;
    public static boolean b = false;
    private final WeakReference c;

    ag(Context context)
    {
        c = new WeakReference(context);
    }

    static File a(Context context)
    {
        return context.getCacheDir();
    }

    public static Map a(Map map, boolean flag)
    {
        LinkedList linkedlist = new LinkedList(map.entrySet());
        Collections.sort(linkedlist, new Comparator(flag) {

            private final boolean a;

            public int a(java.util.Map.Entry entry1, java.util.Map.Entry entry2)
            {
                if (a)
                {
                    return ((Integer)entry1.getValue()).compareTo((Integer)entry2.getValue());
                } else
                {
                    return ((Integer)entry2.getValue()).compareTo((Integer)entry1.getValue());
                }
            }

            public int compare(Object obj, Object obj1)
            {
                return a((java.util.Map.Entry)obj, (java.util.Map.Entry)obj1);
            }

            
            {
                a = flag;
                super();
            }
        });
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Iterator iterator = linkedlist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return linkedhashmap;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            linkedhashmap.put((Integer)entry.getKey(), (Integer)entry.getValue());
        } while (true);
    }

    public static void a(String s)
    {
        if (Log.isLoggable("mqaabb", 2))
        {
            Log.d("mqaabb", s);
        }
    }

    static void a(String s, String s1)
    {
        m m1 = new m(new File(s));
        FileOutputStream fileoutputstream = m1.a();
        fileoutputstream.write(s1.getBytes());
        fileoutputstream.flush();
        m1.a(fileoutputstream);
    }

    public static boolean a(Context context, String s)
    {
        return context.checkCallingOrSelfPermission(s) == 0;
    }

    static String b()
    {
        String s = android.os.Build.VERSION.RELEASE;
        String s1;
        String s2;
        Locale locale;
        String s3;
        String s4;
        String s5;
        String s6;
        if (s.length() > 0)
        {
            s1 = (new StringBuilder(String.valueOf(""))).append(s).toString();
        } else
        {
            s1 = (new StringBuilder(String.valueOf(""))).append("1.0").toString();
        }
        s2 = (new StringBuilder(String.valueOf(s1))).append("; ").toString();
        locale = Locale.getDefault();
        s3 = locale.getLanguage();
        if (s3 != null)
        {
            s4 = (new StringBuilder(String.valueOf(s2))).append(s3.toLowerCase()).toString();
            String s7 = locale.getCountry();
            if (s7 != null)
            {
                s4 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s4))).append("-").toString()))).append(s7.toLowerCase()).toString();
            }
        } else
        {
            s4 = (new StringBuilder(String.valueOf(s2))).append("en").toString();
        }
        s5 = Build.MODEL;
        if (s5.length() > 0)
        {
            s4 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s4))).append("; ").toString()))).append(s5).toString();
        }
        s6 = Build.ID;
        if (s6.length() > 0)
        {
            s4 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s4))).append(" Build/").toString()))).append(s6).toString();
        }
        return String.format("Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2", new Object[] {
            s4
        });
    }

    static String b(Context context)
    {
        if (a(context, "android.permission.ACCESS_NETWORK_STATE"))
        {
            ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
            NetworkInfo networkinfo = connectivitymanager.getNetworkInfo(1);
            NetworkInfo networkinfo1 = connectivitymanager.getNetworkInfo(0);
            if (networkinfo.isAvailable())
            {
                return "wifi";
            }
            if (networkinfo1.isAvailable())
            {
                return "mobile";
            } else
            {
                return "none";
            }
        } else
        {
            return "unknown";
        }
    }

    static String b(String s)
    {
        File file = new File(s);
        if (file.exists())
        {
            return new String((new m(file)).c());
        } else
        {
            return "";
        }
    }

    static byte[] c(String s)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream(s.length());
        GZIPOutputStream gzipoutputstream = new GZIPOutputStream(bytearrayoutputstream);
        gzipoutputstream.write(s.getBytes());
        gzipoutputstream.close();
        byte abyte0[] = bytearrayoutputstream.toByteArray();
        bytearrayoutputstream.close();
        return abyte0;
    }

    String a()
    {
        Context context;
        context = (Context)c.get();
        if (context == null)
        {
            return b();
        }
        Constructor constructor;
        constructor = android/webkit/WebSettings.getDeclaredConstructor(new Class[] {
            android/content/Context, android/webkit/WebView
        });
        constructor.setAccessible(true);
        String s;
        Object aobj[] = new Object[2];
        aobj[0] = context.getApplicationContext();
        aobj[1] = null;
        s = ((WebSettings)constructor.newInstance(aobj)).getUserAgentString();
        constructor.setAccessible(false);
        return s;
        Exception exception1;
        exception1;
        try
        {
            constructor.setAccessible(false);
            throw exception1;
        }
        catch (Exception exception) { }
        if (Thread.currentThread().getName().equalsIgnoreCase("main"))
        {
            return (new WebView(context)).getSettings().getUserAgentString();
        } else
        {
            return b();
        }
    }

    String a(String s, String s1, Context context, int i, int j, boolean flag)
    {
        StringBuilder stringbuilder = (new StringBuilder(String.valueOf(s))).append("?v=").append("1.2.9").append("&p=");
        if (context.getPackageName() != null) goto _L2; else goto _L1
_L1:
        String s2 = "";
_L17:
        URL url;
        String s3 = stringbuilder.append(s2).toString();
        a(s3);
        url = new URL(s3);
        a(s1);
        if (!flag) goto _L4; else goto _L3
_L3:
        a a1;
        v v1 = new v();
        a1 = new a();
        String s4 = a1.a(s1);
        s1 = (new StringBuilder(String.valueOf(v1.b(a1.b())))).append(s4).toString();
        a a2 = a1;
_L26:
        long l;
        HttpURLConnection httpurlconnection;
        l = System.currentTimeMillis();
        ag ag1 = new ag(context);
        httpurlconnection = (HttpURLConnection)url.openConnection();
        httpurlconnection.setRequestMethod("POST");
        httpurlconnection.setDoOutput(true);
        httpurlconnection.setDoInput(true);
        httpurlconnection.setUseCaches(false);
        httpurlconnection.setRequestProperty("User-Agent", ag1.a());
        httpurlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpurlconnection.setConnectTimeout(i);
        httpurlconnection.setReadTimeout(j);
        if (s1 == null) goto _L6; else goto _L5
_L5:
        if (s1.length() <= 0) goto _L6; else goto _L7
_L7:
        byte abyte2[] = c(s1);
        httpurlconnection.setRequestProperty("Content-Length", Integer.toString(abyte2.length));
        httpurlconnection.getOutputStream().write(abyte2);
_L18:
        int k;
        httpurlconnection.getOutputStream().flush();
        k = httpurlconnection.getResponseCode();
        int i1 = httpurlconnection.getContentLength();
        a((new StringBuilder("Error Code: ")).append(k).toString());
        a((new StringBuilder("Content Length: ")).append(i1).toString());
        long l1 = System.currentTimeMillis();
        a((new StringBuilder("Time Taken: ")).append(l1 - l).append(" ms").toString());
        if (k != 200) goto _L9; else goto _L8
_L8:
        InputStream inputstream;
        ArrayList arraylist;
        inputstream = (InputStream)httpurlconnection.getContent();
        arraylist = new ArrayList();
        int j1;
        int k1;
        j1 = 0;
        k1 = 8192;
_L20:
        if (k1 != '\uFFFF') goto _L11; else goto _L10
_L10:
        inputstream.close();
        if (j1 <= 0) goto _L9; else goto _L12
_L12:
        byte abyte0[] = new byte[j1];
        int i2;
        int j2;
        i2 = 0;
        j2 = 0;
_L27:
        if (j2 < arraylist.size()) goto _L14; else goto _L13
_L13:
        String s5 = new String(abyte0);
        if (!flag || a2 == null) goto _L16; else goto _L15
_L15:
        s5 = a2.a(a2.b(), s5);
        a((new StringBuilder("Return Value: ")).append(new String(s5)).toString());
        Exception exception1;
        ah ah1;
        int k2;
        int l2;
        byte abyte1[];
        ah ah2;
        int i3;
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception7)
            {
                ioexception7.printStackTrace();
            }
        }
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception6)
            {
                ioexception6.printStackTrace();
                return s5;
            }
        }
_L24:
        return s5;
_L2:
        s2 = context.getPackageName();
          goto _L17
_L6:
        httpurlconnection.setRequestProperty("Content-Length", Integer.toString(0));
          goto _L18
        exception1;
        IOException ioexception4;
        IOException ioexception5;
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
        }
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
            }
        }
_L25:
        return "";
_L11:
        abyte1 = new byte[8192];
        k1 = inputstream.read(abyte1, 0, 8192);
        if (k1 <= 0) goto _L20; else goto _L19
_L19:
        ah2 = new ah();
        ah2.a = abyte1;
        ah2.b = k1;
        i3 = j1 + k1;
        arraylist.add(ah2);
        j1 = i3;
          goto _L20
_L14:
        ah1 = (ah)arraylist.get(j2);
        k2 = 0;
_L22:
        if (k2 >= ah1.b || i2 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        l2 = i2 + 1;
        abyte0[i2] = ah1.a[k2];
        k2++;
        i2 = l2;
        if (true) goto _L22; else goto _L21
_L16:
        a((new StringBuilder("Return Value: ")).append(new String(s5)).toString());
        if (false)
        {
            try
            {
                null.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception5)
            {
                ioexception5.printStackTrace();
            }
        }
        if (true) goto _L24; else goto _L23
_L23:
        try
        {
            null.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception4)
        {
            ioexception4.printStackTrace();
            return s5;
        }
        return s5;
        Exception exception;
        exception;
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
_L9:
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception9)
            {
                ioexception9.printStackTrace();
            }
        }
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception8)
            {
                ioexception8.printStackTrace();
            }
        }
          goto _L25
_L4:
        a2 = null;
          goto _L26
_L21:
        j2++;
          goto _L27
    }

}
