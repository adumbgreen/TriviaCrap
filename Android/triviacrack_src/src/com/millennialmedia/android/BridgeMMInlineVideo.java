// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Callable;

// Referenced classes of package com.millennialmedia.android:
//            MMJSObject, MMJSResponse, MMWebView, MMLayout

class BridgeMMInlineVideo extends MMJSObject
{

    BridgeMMInlineVideo()
    {
    }

    MMJSResponse a(String s, Map map)
    {
        MMJSResponse mmjsresponse;
        if ("adjustVideo".equals(s))
        {
            mmjsresponse = adjustVideo(map);
        } else
        {
            if ("insertVideo".equals(s))
            {
                return insertVideo(map);
            }
            if ("pauseVideo".equals(s))
            {
                return pauseVideo(map);
            }
            if ("playVideo".equals(s))
            {
                return playVideo(map);
            }
            if ("removeVideo".equals(s))
            {
                return removeVideo(map);
            }
            if ("resumeVideo".equals(s))
            {
                return resumeVideo(map);
            }
            if ("setStreamVideoSource".equals(s))
            {
                return setStreamVideoSource(map);
            }
            boolean flag = "stopVideo".equals(s);
            mmjsresponse = null;
            if (flag)
            {
                return stopVideo(map);
            }
        }
        return mmjsresponse;
    }

    public MMJSResponse adjustVideo(Map map)
    {
        return a(new Callable(map) {

            final Map a;
            final BridgeMMInlineVideo b;

            public MMJSResponse call()
            {
                MMWebView mmwebview = (MMWebView)b.c.get();
                if (mmwebview != null && mmwebview != null && mmwebview.h().a(new InlineVideoView.InlineParams(a, mmwebview.getContext())))
                {
                    return MMJSResponse.a();
                } else
                {
                    return MMJSResponse.b();
                }
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                b = BridgeMMInlineVideo.this;
                a = map;
                super();
            }
        });
    }

    public MMJSResponse insertVideo(Map map)
    {
        return a(new Callable(map) {

            final Map a;
            final BridgeMMInlineVideo b;

            public MMJSResponse call()
            {
                MMWebView mmwebview = (MMWebView)b.c.get();
                if (mmwebview != null)
                {
                    MMLayout mmlayout = mmwebview.h();
                    mmlayout.b(new InlineVideoView.InlineParams(a, mmwebview.getContext()));
                    return MMJSResponse.a((new StringBuilder()).append("usingStreaming=").append(mmlayout.r()).toString());
                } else
                {
                    return MMJSResponse.b();
                }
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                b = BridgeMMInlineVideo.this;
                a = map;
                super();
            }
        });
    }

    public MMJSResponse pauseVideo(Map map)
    {
        return a(new Callable() {

            final BridgeMMInlineVideo a;

            public MMJSResponse call()
            {
                MMWebView mmwebview = (MMWebView)a.c.get();
                if (mmwebview != null)
                {
                    MMLayout mmlayout = mmwebview.h();
                    if (mmlayout != null)
                    {
                        mmlayout.p();
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                a = BridgeMMInlineVideo.this;
                super();
            }
        });
    }

    public MMJSResponse playVideo(Map map)
    {
        return a(new Callable() {

            final BridgeMMInlineVideo a;

            public MMJSResponse call()
            {
                MMWebView mmwebview = (MMWebView)a.c.get();
                if (mmwebview != null)
                {
                    MMLayout mmlayout = mmwebview.h();
                    if (mmlayout != null)
                    {
                        mmlayout.n();
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                a = BridgeMMInlineVideo.this;
                super();
            }
        });
    }

    public MMJSResponse removeVideo(Map map)
    {
        return a(new Callable() {

            final BridgeMMInlineVideo a;

            public MMJSResponse call()
            {
                MMWebView mmwebview = (MMWebView)a.c.get();
                if (mmwebview != null)
                {
                    MMLayout mmlayout = mmwebview.h();
                    if (mmlayout != null)
                    {
                        mmlayout.m();
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                a = BridgeMMInlineVideo.this;
                super();
            }
        });
    }

    public MMJSResponse resumeVideo(Map map)
    {
        return a(new Callable() {

            final BridgeMMInlineVideo a;

            public MMJSResponse call()
            {
                MMWebView mmwebview = (MMWebView)a.c.get();
                if (mmwebview != null)
                {
                    MMLayout mmlayout = mmwebview.h();
                    if (mmlayout != null)
                    {
                        mmlayout.q();
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                a = BridgeMMInlineVideo.this;
                super();
            }
        });
    }

    public MMJSResponse setStreamVideoSource(Map map)
    {
        return a(new Callable(map) {

            final Map a;
            final BridgeMMInlineVideo b;

            public MMJSResponse call()
            {
                MMWebView mmwebview = (MMWebView)b.c.get();
                if (mmwebview != null)
                {
                    MMLayout mmlayout = mmwebview.h();
                    String s = (String)a.get("streamVideoURI");
                    if (mmlayout != null && s != null)
                    {
                        mmlayout.setVideoSource(s);
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                b = BridgeMMInlineVideo.this;
                a = map;
                super();
            }
        });
    }

    public MMJSResponse stopVideo(Map map)
    {
        return a(new Callable() {

            final BridgeMMInlineVideo a;

            public MMJSResponse call()
            {
                MMWebView mmwebview = (MMWebView)a.c.get();
                if (mmwebview != null)
                {
                    MMLayout mmlayout = mmwebview.h();
                    if (mmlayout != null)
                    {
                        mmlayout.o();
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                a = BridgeMMInlineVideo.this;
                super();
            }
        });
    }
}
