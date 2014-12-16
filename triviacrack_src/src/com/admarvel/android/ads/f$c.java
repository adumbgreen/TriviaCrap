// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.AsyncTask;
import android.util.Log;
import com.admarvel.android.util.Logging;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

// Referenced classes of package com.admarvel.android.ads:
//            ac

class d extends AsyncTask
{

    private final String a;
    private final String b;
    private FileOutputStream c;
    private int d;

    protected transient Boolean a(Void avoid[])
    {
        File file;
        if (isCancelled())
        {
            return Boolean.valueOf(false);
        }
        file = new File((new StringBuilder()).append(b).append(".PROCESSING").toString());
        if (file.exists())
        {
            return Boolean.valueOf(true);
        }
        file.deleteOnExit();
        InputStream inputstream;
        if (isCancelled())
        {
            if (file.exists())
            {
                file.delete();
            }
            return Boolean.valueOf(false);
        }
        URLConnection urlconnection = (new URL(a)).openConnection();
        urlconnection.setConnectTimeout(3000);
        urlconnection.setReadTimeout(10000);
        urlconnection.connect();
        if (isCancelled())
        {
            if (file.exists())
            {
                file.delete();
            }
            return Boolean.valueOf(false);
        }
        inputstream = urlconnection.getInputStream();
        if (inputstream == null)
        {
            try
            {
                throw new RuntimeException("stream is null");
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
            if (file.exists())
            {
                file.delete();
            }
            return Boolean.valueOf(false);
        }
        byte abyte0[];
        if (isCancelled())
        {
            if (file.exists())
            {
                file.delete();
            }
            return Boolean.valueOf(false);
        }
        if (file.exists())
        {
            return Boolean.valueOf(true);
        }
        c = new FileOutputStream(file);
        abyte0 = new byte[4096];
_L1:
        int i;
        if (isCancelled())
        {
            break MISSING_BLOCK_LABEL_282;
        }
        i = inputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_282;
        }
        c.write(abyte0, 0, i);
          goto _L1
        if (isCancelled())
        {
            if (file.exists())
            {
                file.delete();
            }
            return Boolean.valueOf(false);
        }
        File file1 = new File(b);
        if (file1.exists())
        {
            file1.delete();
        }
        file.renameTo(file1);
        if (file.exists())
        {
            file.delete();
        }
        inputstream.close();
        c.flush();
        c = null;
        return Boolean.valueOf(true);
    }

    protected void a(Boolean boolean1)
    {
        if (!boolean1.booleanValue() && d < 1)
        {
            if (ac.a() >= 11)
            {
                Logging.log("#### onPostExecute");
                (new <init>(a, b, 1)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else
            {
                (new <init>(a, b, 1)).execute(new Void[0]);
            }
        }
        super.onPostExecute(boolean1);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onCancelled()
    {
        File file = new File(b);
        if (file.exists())
        {
            file.delete();
        }
        super.onCancelled();
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    public ging(String s, String s1, int i)
    {
        d = 0;
        a = s;
        b = s1;
        d = i;
    }
}
