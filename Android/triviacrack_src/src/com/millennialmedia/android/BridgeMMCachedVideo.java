// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Callable;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.json.JSONArray;

// Referenced classes of package com.millennialmedia.android:
//            MMJSObject, MMWebView, MMActivity, VideoPlayerActivity, 
//            AdCache, MMJSResponse, HttpGetRequest, MMLog, 
//            VideoAd, CachedAd

class BridgeMMCachedVideo extends MMJSObject
    implements AdCache.AdCacheTaskListener
{

    private boolean a;

    BridgeMMCachedVideo()
    {
    }

    private VideoPlayerActivity a()
    {
        if (c != null && c.get() != null && (((MMWebView)c.get()).i() instanceof MMActivity))
        {
            MMWebView mmwebview = (MMWebView)c.get();
            if (mmwebview != null)
            {
                android.app.Activity activity = mmwebview.i();
                if (activity != null && (activity instanceof MMActivity))
                {
                    MMActivity mmactivity = (MMActivity)activity;
                    if (mmactivity.h() != null && (mmactivity.h() instanceof VideoPlayerActivity))
                    {
                        return (VideoPlayerActivity)mmactivity.h();
                    }
                }
            }
        }
        return null;
    }

    MMJSResponse a(String s, Map map)
    {
        MMJSResponse mmjsresponse;
        if ("availableCachedVideos".equals(s))
        {
            mmjsresponse = availableCachedVideos(map);
        } else
        {
            if ("cacheVideo".equals(s))
            {
                return cacheVideo(map);
            }
            if ("endVideo".equals(s))
            {
                return endVideo(map);
            }
            if ("pauseVideo".equals(s))
            {
                return pauseVideo(map);
            }
            if ("playCachedVideo".equals(s))
            {
                return playCachedVideo(map);
            }
            if ("playVideo".equals(s))
            {
                return playVideo(map);
            }
            if ("restartVideo".equals(s))
            {
                return restartVideo(map);
            }
            boolean flag = "videoIdExists".equals(s);
            mmjsresponse = null;
            if (flag)
            {
                return videoIdExists(map);
            }
        }
        return mmjsresponse;
    }

    public MMJSResponse availableCachedVideos(Map map)
    {
        Context context = (Context)b.get();
        if (context != null)
        {
            JSONArray jsonarray = new JSONArray();
            AdCache.a(context, 2, new AdCache.Iterator(context, jsonarray) {

                final Context a;
                final JSONArray b;
                final BridgeMMCachedVideo c;

                boolean a(CachedAd cachedad)
                {
                    if ((cachedad instanceof VideoAd) && cachedad.d(a) && !cachedad.a())
                    {
                        b.put(cachedad.e());
                    }
                    return true;
                }

            
            {
                c = BridgeMMCachedVideo.this;
                a = context;
                b = jsonarray;
                super();
            }
            });
            MMJSResponse mmjsresponse = new MMJSResponse();
            mmjsresponse.c = 1;
            mmjsresponse.d = jsonarray;
            return mmjsresponse;
        } else
        {
            return null;
        }
    }

    public MMJSResponse cacheVideo(Map map)
    {
        this;
        JVM INSTR monitorenter ;
        Context context;
        String s;
        context = (Context)b.get();
        s = (String)map.get("url");
        if (s == null || context == null) goto _L2; else goto _L1
_L1:
        HttpResponse httpresponse = (new HttpGetRequest()).a(s);
        if (httpresponse != null) goto _L4; else goto _L3
_L3:
        MMLog.c("BridgeMMCachedVideo", "HTTP response is null");
        MMJSResponse mmjsresponse = null;
_L13:
        this;
        JVM INSTR monitorexit ;
        return mmjsresponse;
_L4:
        HttpEntity httpentity = httpresponse.getEntity();
        if (httpentity != null)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        MMLog.b("BridgeMMCachedVideo", "Null HTTP entity");
        mmjsresponse = null;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        MMLog.a("BridgeMMCachedVideo", "HTTP error: ", exception1);
        mmjsresponse = null;
        continue; /* Loop/switch isn't completed */
        if (httpentity.getContentLength() != 0L)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        MMLog.b("BridgeMMCachedVideo", "Millennial ad return failed. Zero content length returned.");
        mmjsresponse = null;
        continue; /* Loop/switch isn't completed */
        Header header = httpentity.getContentType();
        if (header == null) goto _L2; else goto _L5
_L5:
        if (header.getValue() == null) goto _L2; else goto _L6
_L6:
        boolean flag = header.getValue().equalsIgnoreCase("application/json");
        if (!flag) goto _L2; else goto _L7
_L7:
        VideoAd videoad = new VideoAd(HttpGetRequest.a(httpentity.getContent()));
        if (videoad == null) goto _L2; else goto _L8
_L8:
        if (!videoad.b()) goto _L2; else goto _L9
_L9:
        boolean flag1;
        videoad.e = 3;
        flag1 = AdCache.a(context, null, videoad, this);
        if (!flag1) goto _L11; else goto _L10
_L10:
        MMJSResponse mmjsresponse2;
        wait();
        if (!a)
        {
            break MISSING_BLOCK_LABEL_314;
        }
        mmjsresponse2 = MMJSResponse.a(String.format("Cached video(%s)", new Object[] {
            s
        }));
        mmjsresponse = mmjsresponse2;
        notify();
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        MMLog.a("BridgeMMCachedVideo", "Millennial ad return failed. Invalid response data.", illegalstateexception);
        mmjsresponse = null;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        MMLog.a("BridgeMMCachedVideo", "Millennial ad return failed. Invalid response data.", ioexception);
        mmjsresponse = null;
        continue; /* Loop/switch isn't completed */
        notify();
_L2:
        mmjsresponse = null;
        continue; /* Loop/switch isn't completed */
        InterruptedException interruptedexception;
        interruptedexception;
        MMLog.a("BridgeMMCachedVideo", "Caching interrupted: ", interruptedexception);
        notify();
          goto _L2
        Exception exception2;
        exception2;
        notify();
        throw exception2;
_L11:
        MMJSResponse mmjsresponse1 = MMJSResponse.b(String.format("Unable to start download for Cached video(%s)", new Object[] {
            s
        }));
        mmjsresponse = mmjsresponse1;
        if (true) goto _L13; else goto _L12
_L12:
    }

    public void downloadCompleted(CachedAd cachedad, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        Context context = (Context)b.get();
        if (!flag || context == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        AdCache.a(context, cachedad);
        a = flag;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void downloadStart(CachedAd cachedad)
    {
    }

    public MMJSResponse endVideo(Map map)
    {
        VideoPlayerActivity videoplayeractivity = a();
        if (videoplayeractivity != null)
        {
            return a(new Callable(videoplayeractivity) {

                final VideoPlayerActivity a;
                final BridgeMMCachedVideo b;

                public MMJSResponse call()
                {
                    a.l();
                    return MMJSResponse.a();
                }

                public volatile Object call()
                {
                    return call();
                }

            
            {
                b = BridgeMMCachedVideo.this;
                a = videoplayeractivity;
                super();
            }
            });
        } else
        {
            return null;
        }
    }

    public MMJSResponse pauseVideo(Map map)
    {
        VideoPlayerActivity videoplayeractivity = a();
        if (videoplayeractivity != null)
        {
            return a(new Callable(videoplayeractivity) {

                final VideoPlayerActivity a;
                final BridgeMMCachedVideo b;

                public MMJSResponse call()
                {
                    a.n();
                    return MMJSResponse.a();
                }

                public volatile Object call()
                {
                    return call();
                }

            
            {
                b = BridgeMMCachedVideo.this;
                a = videoplayeractivity;
                super();
            }
            });
        } else
        {
            return null;
        }
    }

    public MMJSResponse playCachedVideo(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("videoId");
        if (s != null && context != null)
        {
            VideoAd videoad = (VideoAd)AdCache.i(context, s);
            if (videoad != null && videoad.a(context, null, false))
            {
                videoad.a(context, b((String)map.get("PROPERTY_EXPANDING")));
                return MMJSResponse.a(String.format("Playing Video(%s)", new Object[] {
                    s
                }));
            }
        }
        return null;
    }

    public MMJSResponse playVideo(Map map)
    {
        VideoPlayerActivity videoplayeractivity = a();
        if (videoplayeractivity != null)
        {
            return a(new Callable(videoplayeractivity) {

                final VideoPlayerActivity a;
                final BridgeMMCachedVideo b;

                public MMJSResponse call()
                {
                    a.g();
                    return MMJSResponse.a();
                }

                public volatile Object call()
                {
                    return call();
                }

            
            {
                b = BridgeMMCachedVideo.this;
                a = videoplayeractivity;
                super();
            }
            });
        } else
        {
            return null;
        }
    }

    public MMJSResponse restartVideo(Map map)
    {
        VideoPlayerActivity videoplayeractivity = a();
        if (videoplayeractivity != null)
        {
            return a(new Callable(videoplayeractivity) {

                final VideoPlayerActivity a;
                final BridgeMMCachedVideo b;

                public MMJSResponse call()
                {
                    a.h();
                    return MMJSResponse.a();
                }

                public volatile Object call()
                {
                    return call();
                }

            
            {
                b = BridgeMMCachedVideo.this;
                a = videoplayeractivity;
                super();
            }
            });
        } else
        {
            return null;
        }
    }

    public MMJSResponse videoIdExists(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("videoId");
        if (s != null && context != null)
        {
            VideoAd videoad = (VideoAd)AdCache.i(context, s);
            if (videoad != null && videoad.d(context) && !videoad.a())
            {
                return MMJSResponse.a(s);
            }
        }
        return null;
    }
}
