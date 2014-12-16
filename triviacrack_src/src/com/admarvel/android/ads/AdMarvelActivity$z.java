// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import com.admarvel.android.util.Logging;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.net.URL;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, ab

class b
    implements Runnable
{

    String a;
    String b;
    InputStream c;
    Bitmap d;
    private final WeakReference e;

    public void run()
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)e.get();
        if (admarvelinternalwebview != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s = (new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/Pictures/").toString();
        if (a == null) goto _L4; else goto _L3
_L3:
        if (!a.startsWith("/mnt/sdcard")) goto _L6; else goto _L5
_L5:
        if (!(new File(a)).exists()) goto _L8; else goto _L7
_L7:
        d = BitmapFactory.decodeFile(a);
_L4:
        if (d == null && c != null)
        {
            Thread thread = new Thread(new Runnable() {

                final AdMarvelActivity.z a;

                public void run()
                {
                    a.d = BitmapFactory.decodeStream(a.c);
                }

            
            {
                a = AdMarvelActivity.z.this;
                super();
            }
            });
            thread.start();
            thread.join();
        }
        if (d != null)
        {
            break MISSING_BLOCK_LABEL_422;
        }
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
        if (d != null)
        {
            d.recycle();
            d = null;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
          goto _L4
        Exception exception1;
        exception1;
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
        Logging.log(Log.getStackTraceString(exception1));
        if (d != null)
        {
            d.recycle();
            d = null;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (!a.startsWith("http:") && !a.startsWith("https:")) goto _L10; else goto _L9
_L9:
        a = ab.a(a, admarvelinternalwebview.getContext());
        Thread thread1 = new Thread(new Runnable() {

            final AdMarvelActivity.z a;

            public void run()
            {
                try
                {
                    a.c = (new URL(a.a)).openStream();
                    return;
                }
                catch (MalformedURLException malformedurlexception)
                {
                    malformedurlexception.printStackTrace();
                    return;
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                    return;
                }
                catch (Exception exception2)
                {
                    exception2.printStackTrace();
                }
            }

            
            {
                a = AdMarvelActivity.z.this;
                super();
            }
        });
        thread1.start();
        thread1.join();
          goto _L4
        Exception exception;
        exception;
        if (d != null)
        {
            d.recycle();
            d = null;
        }
        throw exception;
_L10:
        if (!a.startsWith("file:///android_asset/")) goto _L4; else goto _L11
_L11:
        int i = "file:///android_asset/".length();
        String s2 = a.substring(i);
        c = admarvelinternalwebview.getContext().getAssets().open(s2);
          goto _L4
        String s1;
        FileOutputStream fileoutputstream;
        File file = new File(s);
        if (!file.exists())
        {
            file.mkdirs();
        }
        s1 = (new StringBuilder()).append(s).append(System.currentTimeMillis()).append(".jpg").toString();
        fileoutputstream = new FileOutputStream(s1);
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_521;
        }
        if (d != null)
        {
            d.compress(android.graphics.at.JPEG, 90, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
        }
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(s1)));
        admarvelinternalwebview.getContext().sendBroadcast(intent);
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"YES\")").toString());
        if (d != null)
        {
            d.recycle();
            d = null;
            return;
        }
        if (true) goto _L1; else goto _L12
_L12:
    }

    public View(AdMarvelInternalWebView admarvelinternalwebview, String s, String s1)
    {
        c = null;
        d = null;
        e = new WeakReference(admarvelinternalwebview);
        a = s;
        b = s1;
    }
}
