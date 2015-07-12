// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.text.TextUtils;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

// Referenced classes of package com.millennialmedia.android:
//            HttpGetRequest, VideoAd, AdCache, MMLog, 
//            DTOCachedVideo, CachedAd

class PreCacheWorker extends Thread
{

    private static boolean a;
    private DTOCachedVideo b[];
    private Context c;
    private String d;
    private volatile boolean e;

    private PreCacheWorker(DTOCachedVideo adtocachedvideo[], Context context, String s)
    {
        e = false;
        b = adtocachedvideo;
        d = s;
        c = context.getApplicationContext();
    }

    static Context a(PreCacheWorker precacheworker)
    {
        return precacheworker.c;
    }

    private void a(DTOCachedVideo dtocachedvideo, HttpEntity httpentity)
    {
        Header header = httpentity.getContentType();
        if (header != null)
        {
            String s = header.getValue();
            if (s != null && s.equalsIgnoreCase("application/json"))
            {
                b(dtocachedvideo, httpentity);
            } else
            if (s != null && s.startsWith("video/"))
            {
                c(dtocachedvideo, httpentity);
                return;
            }
        }
    }

    static void a(DTOCachedVideo adtocachedvideo[], Context context, String s)
    {
        com/millennialmedia/android/PreCacheWorker;
        JVM INSTR monitorenter ;
        if (!a)
        {
            a = true;
            (new PreCacheWorker(adtocachedvideo, context, s)).start();
        }
        com/millennialmedia/android/PreCacheWorker;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static boolean a(PreCacheWorker precacheworker, boolean flag)
    {
        precacheworker.e = flag;
        return flag;
    }

    private void b(DTOCachedVideo dtocachedvideo, HttpEntity httpentity)
    {
        String s;
        boolean flag;
        VideoAd videoad;
        try
        {
            s = HttpGetRequest.a(httpentity.getContent());
            flag = TextUtils.isEmpty(s);
        }
        catch (IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
            MMLog.b("PreCacheWorker", "Pre cache worker: Millennial ad return failed. Invalid response data.");
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            MMLog.b("PreCacheWorker", "Pre cache worker: Millennial ad return failed. Invalid response data.");
            return;
        }
        videoad = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        videoad = new VideoAd(s);
        if (videoad == null || !videoad.b())
        {
            break MISSING_BLOCK_LABEL_82;
        }
        videoad.e = 1;
        if (!AdCache.a(c, null, videoad, new AdCache.AdCacheTaskListener(dtocachedvideo) {

        final DTOCachedVideo a;
        final PreCacheWorker b;

        public void downloadCompleted(CachedAd cachedad, boolean flag1)
        {
            this;
            JVM INSTR monitorenter ;
            if (!flag1)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            AdCache.a(PreCacheWorker.a(b), cachedad);
            PreCacheWorker.a(b, true);
            MMSDK.Event.a(a.c);
_L1:
            notify();
            this;
            JVM INSTR monitorexit ;
            return;
            MMSDK.Event.a(a.b);
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public void downloadStart(CachedAd cachedad)
        {
            MMSDK.Event.a(a.a);
        }

            
            {
                b = PreCacheWorker.this;
                a = dtocachedvideo;
                super();
            }
    }))
        {
            break MISSING_BLOCK_LABEL_111;
        }
        wait();
        return;
        try
        {
            MMSDK.Event.a(dtocachedvideo.a);
            MMSDK.Event.a(dtocachedvideo.b);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
            MMLog.a("PreCacheWorker", "Pre cache worker interrupted: ", interruptedexception);
            return;
        }
    }

    private void c(DTOCachedVideo dtocachedvideo, HttpEntity httpentity)
    {
label0:
        {
            if (!TextUtils.isEmpty(dtocachedvideo.e))
            {
                MMSDK.Event.a(dtocachedvideo.a);
                if (!AdCache.a(dtocachedvideo.d, (new StringBuilder()).append(dtocachedvideo.e).append("video.dat").toString(), c))
                {
                    break label0;
                }
                MMSDK.Event.a(dtocachedvideo.c);
            }
            return;
        }
        MMSDK.Event.a(dtocachedvideo.b);
    }

    public void run()
    {
        this;
        JVM INSTR monitorenter ;
        if (b == null) goto _L2; else goto _L1
_L1:
        DTOCachedVideo adtocachedvideo[];
        int i;
        adtocachedvideo = b;
        i = adtocachedvideo.length;
        int j = 0;
_L12:
        if (j >= i) goto _L2; else goto _L3
_L3:
        DTOCachedVideo dtocachedvideo = adtocachedvideo[j];
        HttpResponse httpresponse = (new HttpGetRequest()).a(dtocachedvideo.d);
        if (httpresponse != null) goto _L5; else goto _L4
_L4:
        MMLog.b("PreCacheWorker", "Pre cache worker: HTTP response is null");
          goto _L6
_L5:
        HttpEntity httpentity = httpresponse.getEntity();
        if (httpentity != null) goto _L8; else goto _L7
_L7:
        MMLog.b("PreCacheWorker", "Pre cache worker: Null HTTP entity");
          goto _L6
        Exception exception;
        exception;
        com/millennialmedia/android/PreCacheWorker;
        JVM INSTR monitorenter ;
        a = false;
        if (!e && !TextUtils.isEmpty(d) && b == null)
        {
            MMSDK.Event.a(d);
        }
        com/millennialmedia/android/PreCacheWorker;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception4;
        exception4;
        MMLog.b("PreCacheWorker", String.format("Pre cache worker HTTP error: %s", new Object[] {
            exception4
        }));
          goto _L6
_L8:
        if (httpentity.getContentLength() != 0L) goto _L10; else goto _L9
_L9:
        MMLog.b("PreCacheWorker", "Pre cache worker: Millennial ad return failed. Zero content length returned.");
          goto _L6
_L10:
        a(dtocachedvideo, httpentity);
          goto _L6
_L2:
        com/millennialmedia/android/PreCacheWorker;
        JVM INSTR monitorenter ;
        a = false;
        if (!e && !TextUtils.isEmpty(d) && b == null)
        {
            MMSDK.Event.a(d);
        }
        com/millennialmedia/android/PreCacheWorker;
        JVM INSTR monitorexit ;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception2;
        exception2;
        com/millennialmedia/android/PreCacheWorker;
        JVM INSTR monitorexit ;
        throw exception2;
        Exception exception3;
        exception3;
        com/millennialmedia/android/PreCacheWorker;
        JVM INSTR monitorexit ;
        throw exception3;
_L6:
        j++;
        if (true) goto _L12; else goto _L11
_L11:
    }
}
