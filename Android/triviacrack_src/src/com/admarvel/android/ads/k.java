// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Environment;
import com.admarvel.android.util.Logging;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import org.apache.http.util.ByteArrayBuffer;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView

class k extends AsyncTask
{

    private final WeakReference a;
    private final WeakReference b;
    private final File c;

    public k(Context context, AdMarvelInternalWebView admarvelinternalwebview, File file)
    {
        a = new WeakReference(context);
        c = file;
        b = new WeakReference(admarvelinternalwebview);
    }

    private void a(String s, File file)
    {
        URL url = new URL(s);
        long l = System.currentTimeMillis();
        Logging.log("download begining");
        Logging.log((new StringBuilder()).append("download url:").append(url).toString());
        Logging.log((new StringBuilder()).append("downloaded file name:").append(file.getName()).toString());
        URLConnection urlconnection = url.openConnection();
        if (!isCancelled())
        {
            BufferedInputStream bufferedinputstream = new BufferedInputStream(urlconnection.getInputStream());
            ByteArrayBuffer bytearraybuffer = new ByteArrayBuffer(50);
            do
            {
                int i = bufferedinputstream.read();
                if (i == -1)
                {
                    break;
                }
                bytearraybuffer.append((byte)i);
                if (isCancelled())
                {
                    return;
                }
            } while (true);
            Logging.log(Environment.getExternalStorageState());
            if (!isCancelled())
            {
                file.getParentFile().mkdirs();
                if (!isCancelled())
                {
                    FileOutputStream fileoutputstream = new FileOutputStream(file);
                    fileoutputstream.write(bytearraybuffer.toByteArray());
                    fileoutputstream.close();
                    Logging.log((new StringBuilder()).append("download ready in").append((System.currentTimeMillis() - l) / 1000L).append(" sec").toString());
                    return;
                }
            }
        }
    }

    protected transient Object doInBackground(Object aobj[])
    {
        Context context = (Context)a.get();
        if (context != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        String s;
        String s1;
        int i;
        s = (String)aobj[0];
        s1 = (String)aobj[1];
        i = ((Integer)aobj[2]).intValue();
        String s2;
        File file;
        File file1;
        s2 = (new URL(s)).getFile().split("\\?")[0];
        file = new File(c, (new StringBuilder()).append("/data/com.admarvel.android.admarvelcachedads/cachedads").append(s2).toString());
        file1 = new File(c, (new StringBuilder()).append("/data/com.admarvel.android.admarvelcachedads/cachedads").append(s2).append(".tmp").toString());
        Logging.log((new StringBuilder()).append("file: ").append(file.getAbsolutePath()).toString());
        Logging.log((new StringBuilder()).append("tmpfile: ").append(file1.getAbsolutePath()).toString());
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_412;
        }
        if (System.currentTimeMillis() - file.lastModified() > (long)i)
        {
            file.delete();
            if (file1.exists())
            {
                file1.delete();
            }
            a(s, file1);
            file1.renameTo(file);
        }
_L3:
        AdMarvelInternalWebView admarvelinternalwebview3 = (AdMarvelInternalWebView)b.get();
        if (admarvelinternalwebview3 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        String s3 = (new StringBuilder()).append("content://").append(context.getPackageName()).append(".AdMarvelLocalFileContentProvider").append("/cachedads").append(s2).toString();
        admarvelinternalwebview3.loadUrl((new StringBuilder()).append("javascript:").append(s1).append("(true,\"").append(s).append("\", \"").append(s3).append("\")").toString());
        return null;
        RuntimeException runtimeexception;
        runtimeexception;
        AdMarvelInternalWebView admarvelinternalwebview2 = (AdMarvelInternalWebView)b.get();
        if (admarvelinternalwebview2 != null)
        {
            admarvelinternalwebview2.loadUrl((new StringBuilder()).append("javascript:").append(s1).append("(false,\"").append(s).append("\", \"\")").toString());
            return null;
        }
        continue; /* Loop/switch isn't completed */
        if (file1.exists())
        {
            file1.delete();
        }
        a(s, file1);
        file1.renameTo(file);
          goto _L3
        IOException ioexception;
        ioexception;
        AdMarvelInternalWebView admarvelinternalwebview1 = (AdMarvelInternalWebView)b.get();
        if (admarvelinternalwebview1 != null)
        {
            admarvelinternalwebview1.loadUrl((new StringBuilder()).append("javascript:").append(s1).append("(false,\"").append(s).append("\", \"\")").toString());
            return null;
        }
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        if (admarvelinternalwebview != null)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(s1).append("(false,\"").append(s).append("\", \"\")").toString());
            return null;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }
}
