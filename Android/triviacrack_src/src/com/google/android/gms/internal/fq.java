// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.net.Uri;
import android.net.UrlQuerySanitizer;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.nio.CharBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            fu, fw, fv, ft, 
//            fx, fr

public final class fq
{

    private static final Object a = new Object();
    private static boolean b = true;
    private static String c;
    private static boolean d = false;

    private static String a(Context context, String s)
    {
label0:
        {
            String s4;
            synchronized (a)
            {
                if (c == null)
                {
                    break label0;
                }
                s4 = c;
            }
            return s4;
        }
        if (android.os.Build.VERSION.SDK_INT < 17) goto _L2; else goto _L1
_L1:
        c = fu.a(context);
_L4:
        String s1;
        c = (new StringBuilder()).append(c).append(" (Mobile; ").append(s).append(")").toString();
        s1 = c;
        obj;
        JVM INSTR monitorexit ;
        return s1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (fw.b())
        {
            break MISSING_BLOCK_LABEL_137;
        }
        fw.a.post(new Runnable(context) {

            final Context a;

            public void run()
            {
                synchronized (fq.e())
                {
                    fq.b(fq.d(a));
                    fq.e().notifyAll();
                }
                return;
                exception1;
                obj1;
                JVM INSTR monitorexit ;
                throw exception1;
            }

            
            {
                a = context;
                super();
            }
        });
_L5:
        String s2 = c;
        if (s2 != null) goto _L4; else goto _L3
_L3:
        a.wait();
          goto _L5
        InterruptedException interruptedexception;
        interruptedexception;
        String s3 = c;
        obj;
        JVM INSTR monitorexit ;
        return s3;
        c = e(context);
          goto _L4
    }

    public static String a(Readable readable)
    {
        StringBuilder stringbuilder = new StringBuilder();
        CharBuffer charbuffer = CharBuffer.allocate(2048);
        do
        {
            int i = readable.read(charbuffer);
            if (i != -1)
            {
                charbuffer.flip();
                stringbuilder.append(charbuffer, 0, i);
            } else
            {
                return stringbuilder.toString();
            }
        } while (true);
    }

    public static String a(String s)
    {
        return Uri.parse(s).buildUpon().query(null).build().toString();
    }

    public static Map a(Uri uri)
    {
        if (uri == null)
        {
            return null;
        }
        HashMap hashmap = new HashMap();
        UrlQuerySanitizer urlquerysanitizer = new UrlQuerySanitizer();
        urlquerysanitizer.setAllowUnregisteredParamaters(true);
        urlquerysanitizer.setUnregisteredParameterValueSanitizer(UrlQuerySanitizer.getAllButNulLegal());
        urlquerysanitizer.parseUrl(uri.toString());
        android.net.UrlQuerySanitizer.ParameterValuePair parametervaluepair;
        for (Iterator iterator = urlquerysanitizer.getParameterList().iterator(); iterator.hasNext(); hashmap.put(parametervaluepair.mParameter, parametervaluepair.mValue))
        {
            parametervaluepair = (android.net.UrlQuerySanitizer.ParameterValuePair)iterator.next();
        }

        return hashmap;
    }

    private static JSONArray a(Collection collection)
    {
        JSONArray jsonarray = new JSONArray();
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); a(jsonarray, iterator.next())) { }
        return jsonarray;
    }

    static JSONArray a(Object aobj[])
    {
        JSONArray jsonarray = new JSONArray();
        int i = aobj.length;
        for (int j = 0; j < i; j++)
        {
            a(jsonarray, aobj[j]);
        }

        return jsonarray;
    }

    private static JSONObject a(Bundle bundle)
    {
        JSONObject jsonobject = new JSONObject();
        String s;
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext(); a(jsonobject, s, bundle.get(s)))
        {
            s = (String)iterator.next();
        }

        return jsonobject;
    }

    public static JSONObject a(Map map)
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject();
            String s;
            for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); a(jsonobject, s, map.get(s)))
            {
                s = (String)iterator.next();
            }

        }
        catch (ClassCastException classcastexception)
        {
            throw new JSONException((new StringBuilder()).append("Could not convert map to JSON: ").append(classcastexception.getMessage()).toString());
        }
        return jsonobject;
    }

    public static void a(Context context, String s, WebSettings websettings)
    {
        websettings.setUserAgentString(a(context, s));
    }

    public static void a(Context context, String s, List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); (new fv(context, s, (String)iterator.next())).e()) { }
    }

    public static void a(Context context, String s, boolean flag, HttpURLConnection httpurlconnection)
    {
        httpurlconnection.setConnectTimeout(60000);
        httpurlconnection.setInstanceFollowRedirects(flag);
        httpurlconnection.setReadTimeout(60000);
        httpurlconnection.setRequestProperty("User-Agent", a(context, s));
        httpurlconnection.setUseCaches(false);
    }

    public static void a(WebView webview)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            ft.a(webview);
        }
    }

    private static void a(JSONArray jsonarray, Object obj)
    {
        if (obj instanceof Bundle)
        {
            jsonarray.put(a((Bundle)obj));
            return;
        }
        if (obj instanceof Map)
        {
            jsonarray.put(a((Map)obj));
            return;
        }
        if (obj instanceof Collection)
        {
            jsonarray.put(a((Collection)obj));
            return;
        }
        if (obj instanceof Object[])
        {
            jsonarray.put(a((Object[])(Object[])obj));
            return;
        } else
        {
            jsonarray.put(obj);
            return;
        }
    }

    private static void a(JSONObject jsonobject, String s, Object obj)
    {
        if (obj instanceof Bundle)
        {
            jsonobject.put(s, a((Bundle)obj));
            return;
        }
        if (obj instanceof Map)
        {
            jsonobject.put(s, a((Map)obj));
            return;
        }
        if (obj instanceof Collection)
        {
            if (s == null)
            {
                s = "null";
            }
            jsonobject.put(s, a((Collection)obj));
            return;
        }
        if (obj instanceof Object[])
        {
            jsonobject.put(s, a(((Collection) (Arrays.asList((Object[])(Object[])obj)))));
            return;
        } else
        {
            jsonobject.put(s, obj);
            return;
        }
    }

    public static boolean a()
    {
        return b;
    }

    public static boolean a(Context context)
    {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        ResolveInfo resolveinfo = context.getPackageManager().resolveActivity(intent, 0x10000);
        if (resolveinfo == null || resolveinfo.activityInfo == null)
        {
            fx.e("Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml.");
            return false;
        }
        boolean flag;
        if ((0x10 & resolveinfo.activityInfo.configChanges) == 0)
        {
            fx.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "keyboard"
            }));
            flag = false;
        } else
        {
            flag = true;
        }
        if ((0x20 & resolveinfo.activityInfo.configChanges) == 0)
        {
            fx.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "keyboardHidden"
            }));
            flag = false;
        }
        if ((0x80 & resolveinfo.activityInfo.configChanges) == 0)
        {
            fx.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "orientation"
            }));
            flag = false;
        }
        if ((0x100 & resolveinfo.activityInfo.configChanges) == 0)
        {
            fx.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "screenLayout"
            }));
            flag = false;
        }
        if ((0x200 & resolveinfo.activityInfo.configChanges) == 0)
        {
            fx.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "uiMode"
            }));
            flag = false;
        }
        if ((0x400 & resolveinfo.activityInfo.configChanges) == 0)
        {
            fx.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "screenSize"
            }));
            flag = false;
        }
        if ((0x800 & resolveinfo.activityInfo.configChanges) == 0)
        {
            fx.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "smallestScreenSize"
            }));
            return false;
        } else
        {
            return flag;
        }
    }

    public static boolean a(PackageManager packagemanager, String s, String s1)
    {
        return packagemanager.checkPermission(s1, s) == 0;
    }

    public static boolean a(ClassLoader classloader, Class class1, String s)
    {
        boolean flag;
        try
        {
            flag = class1.isAssignableFrom(Class.forName(s, false, classloader));
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return flag;
    }

    static boolean a(boolean flag)
    {
        b = flag;
        return flag;
    }

    public static int b()
    {
        return android.os.Build.VERSION.SDK_INT < 9 ? 0 : 6;
    }

    static String b(String s)
    {
        c = s;
        return s;
    }

    public static void b(Context context)
    {
        if (d)
        {
            return;
        } else
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.intent.action.USER_PRESENT");
            intentfilter.addAction("android.intent.action.SCREEN_OFF");
            context.getApplicationContext().registerReceiver(new fr(), intentfilter);
            d = true;
            return;
        }
    }

    public static void b(WebView webview)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            ft.b(webview);
        }
    }

    public static int c()
    {
        return android.os.Build.VERSION.SDK_INT < 9 ? 1 : 7;
    }

    public static int c(Context context)
    {
        int i;
        int j;
        if (context instanceof Activity)
        {
            Window window = ((Activity)context).getWindow();
            Rect rect = new Rect();
            window.getDecorView().getWindowVisibleDisplayFrame(rect);
            j = rect.top;
            i = window.findViewById(0x1020002).getTop() - j;
        } else
        {
            i = 0;
            j = 0;
        }
        return i + j;
    }

    public static String d()
    {
        byte abyte0[];
        byte abyte1[];
        String s;
        int i;
        UUID uuid = UUID.randomUUID();
        abyte0 = BigInteger.valueOf(uuid.getLeastSignificantBits()).toByteArray();
        abyte1 = BigInteger.valueOf(uuid.getMostSignificantBits()).toByteArray();
        s = (new BigInteger(1, abyte0)).toString();
        i = 0;
_L2:
        if (i >= 2)
        {
            break; /* Loop/switch isn't completed */
        }
        String s1;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(abyte0);
        messagedigest.update(abyte1);
        byte abyte2[] = new byte[8];
        System.arraycopy(messagedigest.digest(), 0, abyte2, 0, 8);
        s1 = (new BigInteger(1, abyte2)).toString();
        s = s1;
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return s;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
          goto _L3
    }

    static String d(Context context)
    {
        return e(context);
    }

    static Object e()
    {
        return a;
    }

    private static String e(Context context)
    {
        return (new WebView(context)).getSettings().getUserAgentString();
    }

}
