// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.b;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.util.Logging;
import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.zip.GZIPInputStream;

// Referenced classes of package com.admarvel.android.b:
//            d, c, a

public class f
    implements Runnable
{

    public boolean a;
    final c b;
    private URL c;
    private ArrayList d;
    private String e;
    private Context f;

    public ArrayList a()
    {
        return d;
    }

    public void run()
    {
        if (c == null || !AdMarvelUtils.isNetworkAvailable(f)) goto _L2; else goto _L1
_L1:
        BufferedInputStream bufferedinputstream;
        Object obj;
        URLConnection urlconnection = c.openConnection();
        urlconnection.connect();
        bufferedinputstream = new BufferedInputStream(c.openStream());
        if (!"gzip".equals(urlconnection.getContentEncoding()))
        {
            break MISSING_BLOCK_LABEL_431;
        }
        obj = new GZIPInputStream(bufferedinputstream);
_L9:
        FileOutputStream fileoutputstream;
        byte abyte0[];
        fileoutputstream = new FileOutputStream((new StringBuilder()).append(e).append("/tmp.zip").toString());
        abyte0 = new byte[4096];
_L5:
        int i = ((InputStream) (obj)).read(abyte0);
        if (i == -1) goto _L4; else goto _L3
_L3:
        fileoutputstream.write(abyte0, 0, i);
          goto _L5
        IOException ioexception;
        ioexception;
        Logging.log((new StringBuilder()).append("Offline SDK:").append(Log.getStackTraceString(ioexception)).toString());
        a = false;
_L8:
        a = true;
_L7:
        return;
_L4:
        fileoutputstream.flush();
        fileoutputstream.close();
        ((InputStream) (obj)).close();
        d = com.admarvel.android.b.d.a((new StringBuilder()).append(e).append("/tmp.zip").toString(), e);
        if (com.admarvel.android.b.c.a(b).get() == null) goto _L7; else goto _L6
_L6:
        if (com.admarvel.android.b.c.b(b) == null)
        {
            com.admarvel.android.b.c.a(b, (ArrayList)com.admarvel.android.b.a.a("/complete_ad_content_path_list", "/complete_ad_content_path_list", (Context)com.admarvel.android.b.c.a(b).get()));
            if (com.admarvel.android.b.c.b(b) == null)
            {
                com.admarvel.android.b.c.a(b, new ArrayList());
            }
        }
        if (d != null)
        {
            com.admarvel.android.b.c.b(b).addAll(d);
        }
        if (true) goto _L8; else goto _L2
_L2:
        a = false;
        SharedPreferences sharedpreferences;
        if (com.admarvel.android.b.c.a(b).get() != null)
        {
            sharedpreferences = ((Activity)com.admarvel.android.b.c.a(b).get()).getSharedPreferences("admarvel_preferences", 0);
        } else
        {
            sharedpreferences = null;
        }
        if (sharedpreferences == null)
        {
            Logging.log("Offline SDK:package cannot be downloaded shared preference is null ");
            com.admarvel.android.b.c.a(false);
            com.admarvel.android.b.c.b(false);
            return;
        } else
        {
            android.content.edPreferences.Editor editor = sharedpreferences.edit();
            com.admarvel.android.b.c.a(b, editor, "-1");
            editor.commit();
            Logging.log("Offline SDK:package cannot be downloaded because internet is not available ");
            com.admarvel.android.b.c.a(false);
            com.admarvel.android.b.c.b(false);
            return;
        }
        obj = bufferedinputstream;
          goto _L9
    }

    public rences.Editor(c c1, URL url, String s, Context context)
    {
        b = c1;
        super();
        a = false;
        c = url;
        e = s;
        f = context;
    }

    public f(c c1, URL url, String s, boolean flag, Context context)
    {
        b = c1;
        super();
        a = false;
        c = url;
        e = s;
        f = context;
    }
}
