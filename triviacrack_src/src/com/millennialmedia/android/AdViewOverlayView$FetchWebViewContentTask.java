// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.os.AsyncTask;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

// Referenced classes of package com.millennialmedia.android:
//            HttpGetRequest, MMLog, AdViewOverlayView, AdViewOverlayActivity, 
//            MMAdImpl, MMAdImplController

class c extends AsyncTask
{

    private String a;
    private boolean b;
    private WeakReference c;

    protected transient String a(Void avoid[])
    {
        b = true;
        if (TextUtils.isEmpty(a))
        {
            break MISSING_BLOCK_LABEL_106;
        }
        HttpResponse httpresponse = (new HttpGetRequest()).a(a);
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        StatusLine statusline = httpresponse.getStatusLine();
        if (httpresponse == null || statusline == null)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        HttpEntity httpentity;
        if (statusline.getStatusCode() == 404)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        httpentity = httpresponse.getEntity();
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        String s;
        s = HttpGetRequest.a(httpentity.getContent());
        b = false;
        return s;
        Exception exception;
        exception;
        MMLog.a("AdViewOverlayView", "Unable to get weboverlay", exception);
        return null;
    }

    protected void a(String s)
    {
        AdViewOverlayView adviewoverlayview = (AdViewOverlayView)c.get();
        if (adviewoverlayview != null)
        {
            if (b)
            {
                AdViewOverlayActivity adviewoverlayactivity = (AdViewOverlayActivity)adviewoverlayview.b.get();
                if (adviewoverlayactivity != null)
                {
                    adviewoverlayactivity.finish();
                } else
                {
                    AdViewOverlayView.a(adviewoverlayview);
                }
            }
            if (s != null && adviewoverlayview.h != null && adviewoverlayview.h.k != null)
            {
                adviewoverlayview.h.k.a(s, a);
            }
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

    protected void onPreExecute()
    {
        AdViewOverlayView adviewoverlayview = (AdViewOverlayView)c.get();
        if (adviewoverlayview != null && AdViewOverlayView.c(adviewoverlayview) == null)
        {
            AdViewOverlayView.d(adviewoverlayview);
        }
        super.onPreExecute();
    }

    public (AdViewOverlayView adviewoverlayview, String s)
    {
        a = s;
        c = new WeakReference(adviewoverlayview);
    }
}
