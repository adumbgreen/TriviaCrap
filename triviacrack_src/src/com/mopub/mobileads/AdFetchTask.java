// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.os.AsyncTask;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ResponseHeader;
import com.mopub.mobileads.factories.HttpClientFactory;
import com.mopub.mobileads.util.HttpResponses;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;

// Referenced classes of package com.mopub.mobileads:
//            b, TaskTracker, AdViewController, c, 
//            MoPubErrorCode

public class AdFetchTask extends AsyncTask
{

    private TaskTracker a;
    private AdViewController b;
    private Exception c;
    private HttpClient d;
    private long e;
    private String f;
    private b g;

    public AdFetchTask(TaskTracker tasktracker, AdViewController adviewcontroller, String s, int i)
    {
        g = b.NOT_SET;
        a = tasktracker;
        b = adviewcontroller;
        d = HttpClientFactory.create(i);
        e = a.getCurrentTaskId();
        f = s;
    }

    private c a(String s)
    {
        HttpGet httpget = new HttpGet(s);
        httpget.addHeader(ResponseHeader.USER_AGENT.getKey(), f);
        HttpResponse httpresponse;
        if (a())
        {
            if (b(httpresponse = d.execute(httpget)))
            {
                b.a(httpresponse);
                if (a(httpresponse))
                {
                    return com.mopub.mobileads.c.a(httpresponse, b);
                }
            }
        }
        return null;
    }

    private boolean a()
    {
        if (isCancelled())
        {
            g = b.FETCH_CANCELLED;
            return false;
        }
        if (b == null || b.e())
        {
            MoPubLog.d("Error loading ad: AdViewController has already been GCed or destroyed.");
            return false;
        } else
        {
            return true;
        }
    }

    private boolean a(HttpResponse httpresponse)
    {
        if ("1".equals(HttpResponses.extractHeader(httpresponse, ResponseHeader.WARMUP)))
        {
            MoPubLog.d((new StringBuilder()).append("Ad Unit (").append(b.getAdUnitId()).append(") is still warming up. ").append("Please try again in a few minutes.").toString());
            g = b.AD_WARMING_UP;
            return false;
        }
        if ("clear".equals(HttpResponses.extractHeader(httpresponse, ResponseHeader.AD_TYPE)))
        {
            MoPubLog.d((new StringBuilder()).append("No ads found for adunit (").append(b.getAdUnitId()).append(").").toString());
            g = b.CLEAR_AD_TYPE;
            return false;
        } else
        {
            return true;
        }
    }

    private void b()
    {
        int i = 0x927c0;
        if (b == null)
        {
            return;
        }
        int j = (int)(1.5D * (double)b.h());
        if (j <= i)
        {
            i = j;
        }
        b.a(i);
    }

    private boolean b(HttpResponse httpresponse)
    {
        if (httpresponse == null || httpresponse.getEntity() == null)
        {
            MoPubLog.d("MoPub server returned null response.");
            g = b.INVALID_SERVER_RESPONSE_NOBACKOFF;
            return false;
        }
        int i = httpresponse.getStatusLine().getStatusCode();
        if (i >= 400)
        {
            MoPubLog.d((new StringBuilder()).append("Server error: returned HTTP status code ").append(Integer.toString(i)).append(". Please try again.").toString());
            g = b.INVALID_SERVER_RESPONSE_BACKOFF;
            return false;
        }
        if (i != 200)
        {
            MoPubLog.d((new StringBuilder()).append("MoPub server returned invalid response: HTTP status code ").append(Integer.toString(i)).append(".").toString());
            g = b.INVALID_SERVER_RESPONSE_NOBACKOFF;
            return false;
        } else
        {
            return true;
        }
    }

    private void c()
    {
        a = null;
        c = null;
        g = b.NOT_SET;
    }

    private void d()
    {
        if (d != null)
        {
            ClientConnectionManager clientconnectionmanager = d.getConnectionManager();
            if (clientconnectionmanager != null)
            {
                clientconnectionmanager.shutdown();
            }
            d = null;
        }
    }

    private boolean e()
    {
        if (a == null)
        {
            return false;
        } else
        {
            return a.isMostCurrentTask(e);
        }
    }

    protected transient c a(String as[])
    {
        c c1 = a(as[0]);
        d();
        return c1;
        Exception exception1;
        exception1;
        c = exception1;
        d();
        return null;
        Exception exception;
        exception;
        d();
        throw exception;
    }

    protected void a(c c1)
    {
        if (!e())
        {
            MoPubLog.d("Ad response is stale.");
            c();
            return;
        }
        if (b == null || b.e())
        {
            if (c1 != null)
            {
                c1.b();
            }
            a.markTaskCompleted(e);
            c();
            return;
        }
        if (c1 != null)
        {
            break MISSING_BLOCK_LABEL_221;
        }
        if (c != null)
        {
            MoPubLog.d((new StringBuilder()).append("Exception caught while loading ad: ").append(c).toString());
        }
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.mopub.mobileads.b.values().length];
                try
                {
                    a[b.NOT_SET.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[b.FETCH_CANCELLED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[b.INVALID_SERVER_RESPONSE_BACKOFF.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[b.INVALID_SERVER_RESPONSE_NOBACKOFF.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[b.CLEAR_AD_TYPE.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[b.AD_WARMING_UP.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        _cls1.a[g.ordinal()];
        JVM INSTR tableswitch 1 6: default 144
    //                   1 193
    //                   2 200
    //                   3 207
    //                   4 207
    //                   5 214
    //                   6 214;
           goto _L1 _L2 _L3 _L4 _L4 _L5 _L5
_L1:
        MoPubErrorCode mopuberrorcode = MoPubErrorCode.UNSPECIFIED;
_L6:
        b.b(mopuberrorcode);
        if (g == b.INVALID_SERVER_RESPONSE_BACKOFF)
        {
            b();
            g = b.NOT_SET;
        }
_L7:
        a.markTaskCompleted(e);
        c();
        return;
_L2:
        mopuberrorcode = MoPubErrorCode.UNSPECIFIED;
          goto _L6
_L3:
        mopuberrorcode = MoPubErrorCode.CANCELLED;
          goto _L6
_L4:
        mopuberrorcode = MoPubErrorCode.SERVER_ERROR;
          goto _L6
_L5:
        mopuberrorcode = MoPubErrorCode.NO_FILL;
          goto _L6
        c1.a();
        c1.b();
          goto _L7
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onCancelled()
    {
        if (!e())
        {
            MoPubLog.d("Ad response is stale.");
            c();
            return;
        }
        MoPubLog.d("Ad loading was cancelled.");
        if (c != null)
        {
            MoPubLog.d((new StringBuilder()).append("Exception caught while loading ad: ").append(c).toString());
        }
        a.markTaskCompleted(e);
        c();
    }

    protected void onPostExecute(Object obj)
    {
        a((c)obj);
    }
}
