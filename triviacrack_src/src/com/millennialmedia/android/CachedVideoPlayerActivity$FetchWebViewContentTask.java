// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.os.AsyncTask;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

// Referenced classes of package com.millennialmedia.android:
//            HttpGetRequest, MMLog, CachedVideoPlayerActivity, MMWebView

class b extends AsyncTask
{

    final CachedVideoPlayerActivity a;
    private String b;
    private boolean c;

    protected transient String a(Void avoid[])
    {
        HttpResponse httpresponse;
        StatusLine statusline;
        httpresponse = (new HttpGetRequest()).a(b);
        statusline = httpresponse.getStatusLine();
        if (httpresponse == null || statusline == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        HttpEntity httpentity;
        if (statusline.getStatusCode() == 404)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        httpentity = httpresponse.getEntity();
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        return HttpGetRequest.a(httpentity.getContent());
        c = true;
_L2:
        return null;
        Exception exception;
        exception;
        MMLog.a("CachedVideoPlayerActivity", "Error with http web overlay", exception);
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void a(String s)
    {
        if (c)
        {
            a.m();
        }
        if (s != null && CachedVideoPlayerActivity.a(a) != null)
        {
            CachedVideoPlayerActivity.a(a).a(s, b, a.c);
            a.b = true;
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((String)obj);
    }

    public (CachedVideoPlayerActivity cachedvideoplayeractivity, String s)
    {
        a = cachedvideoplayeractivity;
        super();
        b = s;
    }
}
