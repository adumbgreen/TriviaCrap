// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.os.AsyncTask;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.IntentUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.mopub.nativeads:
//            al

class ak extends AsyncTask
{

    private final al a;

    ak(al al1)
    {
        a = al1;
    }

    private String b(String s)
    {
        HttpURLConnection httpurlconnection;
        URL url;
        httpurlconnection = null;
        url = new URL(s);
        HttpURLConnection httpurlconnection1 = (HttpURLConnection)url.openConnection();
        int i;
        httpurlconnection1.setInstanceFollowRedirects(false);
        i = httpurlconnection1.getResponseCode();
        if (i < 300 || i >= 400)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        String s1 = httpurlconnection1.getHeaderField("Location");
        if (httpurlconnection1 != null)
        {
            httpurlconnection1.disconnect();
        }
        return s1;
        if (httpurlconnection1 != null)
        {
            httpurlconnection1.disconnect();
        }
        return null;
        Exception exception;
        exception;
_L2:
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        throw exception;
        Exception exception1;
        exception1;
        httpurlconnection = httpurlconnection1;
        exception = exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void getResolvedUrl(String s, al al1)
    {
        ak ak1 = new ak(al1);
        try
        {
            AsyncTasks.safeExecuteOnExecutor(ak1, new String[] {
                s
            });
            return;
        }
        catch (Exception exception)
        {
            MoPubLog.d("Failed to resolve url", exception);
        }
        al1.onFailure();
    }

    protected transient String a(String as[])
    {
        if (as != null && as.length != 0) goto _L2; else goto _L1
_L1:
        String s = null;
_L4:
        return s;
_L2:
        String s2;
        String s1;
        int i;
        String s3;
        try
        {
            s1 = as[0];
        }
        catch (IOException ioexception)
        {
            return null;
        }
        i = 0;
        s = s1;
        s2 = null;
        if (s == null || i >= 10)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        if (!IntentUtils.isHttpUrl(s)) goto _L4; else goto _L3
_L3:
        s3 = b(s);
        i++;
        s2 = s;
        s = s3;
        break MISSING_BLOCK_LABEL_27;
        return s2;
    }

    protected void a(String s)
    {
        super.onPostExecute(s);
        if (isCancelled() || s == null)
        {
            onCancelled();
            return;
        } else
        {
            a.onSuccess(s);
            return;
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onCancelled()
    {
        super.onCancelled();
        a.onFailure();
    }

    protected void onPostExecute(Object obj)
    {
        a((String)obj);
    }
}
