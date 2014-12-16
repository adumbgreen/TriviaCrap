// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.millennialmedia.android:
//            MMLog, MMAdImpl, MMWebView, MMLayout, 
//            MMException, HandShake, AdCache, CachedAd, 
//            MMSDK, HttpMMHeaders

class MMAdImplController
    implements AdCache.AdCacheTaskListener
{

    private static final Map e = new ConcurrentHashMap();
    private static final Map f = new ConcurrentHashMap();
    volatile long a;
    volatile MMWebView b;
    volatile WeakReference c;
    RequestAdRunnable d;

    private MMAdImplController(MMAdImpl mmadimpl)
    {
        MMLog.b("MMAdImplController", "**************** creating new controller.");
        c = new WeakReference(mmadimpl);
        if (mmadimpl.n != 0L)
        {
            a(mmadimpl);
            b = d(mmadimpl);
        } else
        if (!(mmadimpl instanceof MMInterstitial.MMInterstitialAdImpl))
        {
            if (mmadimpl.isBanner())
            {
                b = new MMWebView(mmadimpl.j().getApplicationContext(), mmadimpl.h);
                b.g = true;
                return;
            } else
            {
                b = new MMWebView(mmadimpl.j(), mmadimpl.h);
                return;
            }
        }
    }

    static MMAdImpl a(long l)
    {
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorenter ;
        if (l != -4L) goto _L2; else goto _L1
_L1:
        MMAdImpl mmadimpl = null;
_L4:
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorexit ;
        return mmadimpl;
_L2:
        MMAdImplController mmadimplcontroller = (MMAdImplController)e.get(Long.valueOf(l));
        if (mmadimplcontroller != null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        WeakReference weakreference = (WeakReference)f.get(Long.valueOf(l));
        if (weakreference == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        mmadimplcontroller = (MMAdImplController)weakreference.get();
        if (mmadimplcontroller == null)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        mmadimpl = (MMAdImpl)mmadimplcontroller.c.get();
        continue; /* Loop/switch isn't completed */
        mmadimpl = null;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static void a(Context context)
    {
        Iterator iterator = e.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            MMAdImplController mmadimplcontroller = (MMAdImplController)((java.util.Map.Entry)iterator.next()).getValue();
            if (mmadimplcontroller != null)
            {
                MMAdImpl mmadimpl = (MMAdImpl)mmadimplcontroller.c.get();
                if (mmadimpl != null)
                {
                    MMAd mmad = mmadimpl.d();
                    if (mmad != null && (mmad instanceof MMLayout))
                    {
                        ((MMLayout)mmad).m();
                    }
                }
            }
        } while (true);
    }

    static void b(MMAdImpl mmadimpl)
    {
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorenter ;
        if (mmadimpl.k == null) goto _L2; else goto _L1
_L1:
        if (e.containsValue(mmadimpl.k)) goto _L4; else goto _L3
_L3:
        if (!mmadimpl.q()) goto _L6; else goto _L5
_L5:
        e.put(Long.valueOf(mmadimpl.h), mmadimpl.k);
        if (f.containsKey(Long.valueOf(mmadimpl.h)))
        {
            f.remove(Long.valueOf(mmadimpl.h));
        }
_L4:
        MMLog.b("MMAdImplController", (new StringBuilder()).append(mmadimpl).append(" - Has a controller").toString());
_L8:
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorexit ;
        return;
_L6:
        if (f.containsKey(Long.valueOf(mmadimpl.h))) goto _L4; else goto _L7
_L7:
        f.put(Long.valueOf(mmadimpl.h), new WeakReference(mmadimpl.k));
          goto _L4
        Exception exception;
        exception;
        throw exception;
_L2:
        MMAdImplController mmadimplcontroller;
        MMLog.b("MMAdImplController", (new StringBuilder()).append("*****************************************assignAdViewController for ").append(mmadimpl).toString());
        mmadimplcontroller = (MMAdImplController)e.get(Long.valueOf(mmadimpl.h));
        if (mmadimplcontroller != null)
        {
            break MISSING_BLOCK_LABEL_283;
        }
        WeakReference weakreference = (WeakReference)f.get(Long.valueOf(mmadimpl.h));
        if (weakreference == null)
        {
            break MISSING_BLOCK_LABEL_246;
        }
        mmadimplcontroller = (MMAdImplController)weakreference.get();
        if (mmadimplcontroller != null)
        {
            break MISSING_BLOCK_LABEL_283;
        }
        mmadimplcontroller = new MMAdImplController(mmadimpl);
        if (!mmadimpl.q())
        {
            break MISSING_BLOCK_LABEL_321;
        }
        e.put(Long.valueOf(mmadimpl.h), mmadimplcontroller);
_L9:
        mmadimpl.k = mmadimplcontroller;
        mmadimplcontroller.c = new WeakReference(mmadimpl);
        if (mmadimplcontroller.b != null && !(mmadimpl instanceof MMInterstitial.MMInterstitialAdImpl))
        {
            h(mmadimpl);
        }
          goto _L8
        f.put(Long.valueOf(mmadimpl.h), new WeakReference(mmadimplcontroller));
          goto _L9
    }

    static String c()
    {
        return (new StringBuilder()).append(f.toString()).append(" SAVED:").append(e.toString()).toString();
    }

    static boolean c(MMAdImpl mmadimpl)
    {
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorenter ;
        boolean flag = false;
        if (mmadimpl != null) goto _L2; else goto _L1
_L1:
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        MMAdImpl mmadimpl1;
        MMLog.b("MMAdImplController", (new StringBuilder()).append("attachWebViewFromOverlay with ").append(mmadimpl).toString());
        if (mmadimpl.k != null && mmadimpl.k.b != null)
        {
            mmadimpl.k.b.d();
        }
        mmadimpl1 = a(mmadimpl.n);
        flag = false;
        if (mmadimpl1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        MMAdImplController mmadimplcontroller = mmadimpl1.k;
        flag = false;
        if (mmadimplcontroller == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        MMAdImplController mmadimplcontroller1;
        if (mmadimpl1.k.b != null)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        mmadimplcontroller1 = mmadimpl.k;
        flag = false;
        if (mmadimplcontroller1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        MMWebView mmwebview = mmadimpl.k.b;
        flag = false;
        if (mmwebview == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        mmadimpl1.k.b = mmadimpl.k.b;
        mmadimpl.removeView(mmadimpl.k.b);
        mmadimpl.k.b = null;
        mmadimpl1.k.b.n();
        mmadimpl1.k.b.setWebViewClient(mmadimpl1.c());
        flag = true;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static MMWebView d(MMAdImpl mmadimpl)
    {
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorenter ;
        MMAdImpl mmadimpl1;
        MMLog.c("MMAdImplController", (new StringBuilder()).append("getWebViewFromExistingLayout(").append(mmadimpl.h).append(" taking from ").append(mmadimpl.n).append(")").toString());
        mmadimpl1 = a(mmadimpl.n);
        MMWebView mmwebview;
        mmwebview = null;
        if (mmadimpl1 == null)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        MMAdImplController mmadimplcontroller = mmadimpl1.k;
        mmwebview = null;
        if (mmadimplcontroller == null)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        mmwebview = mmadimpl1.k.b;
        mmadimpl1.k.b = null;
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorexit ;
        return mmwebview;
        Exception exception;
        exception;
        throw exception;
    }

    static void e(MMAdImpl mmadimpl)
    {
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorenter ;
        MMAdImplController mmadimplcontroller = mmadimpl.k;
        if (mmadimplcontroller != null) goto _L2; else goto _L1
_L1:
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!mmadimpl.q())
        {
            break; /* Loop/switch isn't completed */
        }
        e.put(Long.valueOf(mmadimpl.h), mmadimpl.k);
        if (f.get(Long.valueOf(mmadimpl.h)) != null)
        {
            f.remove(Long.valueOf(mmadimpl.h));
        }
_L4:
        MMLog.b("MMAdImplController", (new StringBuilder()).append("****************RemoveAdviewcontroller - ").append(mmadimpl).toString());
        if (mmadimpl.i)
        {
            e.remove(Long.valueOf(mmadimpl.h));
            f.remove(Long.valueOf(mmadimpl.h));
        }
        MMAdImplController mmadimplcontroller1 = mmadimpl.k;
        mmadimpl.k = null;
        MMLog.b("MMAdImplController", (new StringBuilder()).append("****************RemoveAdviewcontroller - controllers ").append(c()).toString());
        if (mmadimplcontroller1.b != null)
        {
            MMLog.b("MMAdImplController", (new StringBuilder()).append("****************RemoveAdviewcontroller - controller!=null, expanding=").append(mmadimplcontroller1.b.b).toString());
            mmadimpl.removeView(mmadimplcontroller1.b);
            mmadimplcontroller1.b.b = false;
            if (mmadimpl.i && mmadimpl.n == 0L)
            {
                mmadimplcontroller1.b.loadData("<html></html>", "text/html", "UTF-8");
                mmadimplcontroller1.b.d();
                mmadimplcontroller1.b = null;
            }
        }
        if (true) goto _L1; else goto _L3
        Exception exception;
        exception;
        throw exception;
_L3:
        f.put(Long.valueOf(mmadimpl.h), new WeakReference(mmadimpl.k));
          goto _L4
    }

    private static void h(MMAdImpl mmadimpl)
    {
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorenter ;
        MMAdImplController mmadimplcontroller = mmadimpl.k;
        if (mmadimplcontroller.b == null) goto _L2; else goto _L1
_L1:
        mmadimplcontroller.b.setWebViewClient(mmadimpl.c());
        if (mmadimplcontroller.b.a(mmadimpl.h)) goto _L2; else goto _L3
_L3:
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (!mmadimpl.isBanner())
        {
            break MISSING_BLOCK_LABEL_97;
        }
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        if (mmadimplcontroller.b.w())
        {
            mmadimplcontroller.b.b(mmadimpl);
        }
_L4:
        mmadimplcontroller.b.v();
        mmadimpl.addView(mmadimplcontroller.b, layoutparams);
_L2:
        com/millennialmedia/android/MMAdImplController;
        JVM INSTR monitorexit ;
        return;
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -1);
          goto _L4
        Exception exception;
        exception;
        throw exception;
    }

    private void i(MMAdImpl mmadimpl)
    {
        if (mmadimpl.e != null) goto _L2; else goto _L1
_L1:
        MMException mmexception = new MMException("MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned.", 1);
        MMLog.e("MMAdImplController", mmexception.getMessage());
        MMSDK.Event.a(mmadimpl, mmexception);
_L4:
        return;
_L2:
        if (!mmadimpl.isBanner() && j(mmadimpl)) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        MMLog.c("MMAdImplController", MMException.a(12));
        MMSDK.Event.a(mmadimpl, new MMException(12));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        d = new RequestAdRunnable();
        Utils.ThreadUtils.a(d);
        this;
        JVM INSTR monitorexit ;
    }

    private boolean j(MMAdImpl mmadimpl)
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        Context context = mmadimpl.j();
        if (!HandShake.a(context).c(mmadimpl.f)) goto _L2; else goto _L1
_L1:
        MMLog.c("MMAdImplController", "There is a download in progress. Defering call for new ad");
        MMSDK.Event.a(mmadimpl, new MMException(12));
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        CachedAd cachedad;
        MMLog.b("MMAdImplController", "No download in progress.");
        cachedad = AdCache.f(context, mmadimpl.k());
        if (cachedad == null)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        MMLog.c("MMAdImplController", "Last ad wasn't fully downloaded. Download again.");
        MMSDK.Event.b(mmadimpl);
        AdCache.a(context, mmadimpl.k(), cachedad, this);
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        MMLog.c("MMAdImplController", "No incomplete downloads.");
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
    }

    int a(MMAdImpl mmadimpl, CachedAd cachedad)
    {
        if (cachedad.a())
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = cachedad.e();
            MMLog.b("MMAdImplController", String.format("%s is expired.", aobj2));
            return 21;
        }
        if (!cachedad.d(mmadimpl.j()))
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = cachedad.e();
            MMLog.b("MMAdImplController", String.format("%s is not on disk.", aobj1));
            return 22;
        }
        if (!HandShake.a(mmadimpl.j()).a(mmadimpl.f, cachedad.c))
        {
            Object aobj[] = new Object[1];
            aobj[0] = cachedad.e();
            MMLog.b("MMAdImplController", String.format("%s cannot be shown at this time.", aobj));
            return 24;
        } else
        {
            return 100;
        }
    }

    void a()
    {
        MMAdImpl mmadimpl = (MMAdImpl)c.get();
        if (mmadimpl == null)
        {
            MMLog.e("MMAdImplController", MMException.a(25));
            MMSDK.Event.a(mmadimpl, new MMException(25));
            return;
        }
        if (!mmadimpl.g())
        {
            MMSDK.Event.a(mmadimpl, new MMException(16));
            return;
        }
        if (!MMSDK.a())
        {
            MMLog.e("MMAdImplController", MMException.a(3));
            MMSDK.Event.a(mmadimpl, new MMException(3));
            return;
        }
        if (HandShake.a(mmadimpl.j()).b)
        {
            MMLog.c("MMAdImplController", "The server is no longer allowing ads.");
            MMSDK.Event.a(mmadimpl, new MMException(16));
            return;
        }
        try
        {
            MMLog.b("MMAdImplController", "adLayout - requestAd");
            i(mmadimpl);
            return;
        }
        catch (Exception exception)
        {
            MMLog.a("MMAdImplController", "There was an exception with the ad request. ", exception);
            exception.printStackTrace();
            return;
        }
    }

    void a(HttpMMHeaders httpmmheaders)
    {
        if (b != null)
        {
            b.a(httpmmheaders);
        }
    }

    void a(MMAdImpl mmadimpl)
    {
        MMAdImpl mmadimpl1 = a(mmadimpl.n);
        if (mmadimpl1 != null)
        {
            a = mmadimpl.n;
            mmadimpl1.k.a = mmadimpl.h;
            mmadimpl1.n = mmadimpl.h;
        }
    }

    void a(String s)
    {
        if (!TextUtils.isEmpty(s) && b != null)
        {
            b.loadUrl(s);
        }
    }

    void a(String s, String s1)
    {
        if (b != null)
        {
            b.a(s, s1, (MMAdImpl)c.get());
        }
    }

    String b()
    {
        MMAdImpl mmadimpl = (MMAdImpl)c.get();
        if (mmadimpl == null) goto _L2; else goto _L1
_L1:
        Context context = mmadimpl.j();
        if (context == null) goto _L2; else goto _L3
_L3:
        String s = getDefaultUserAgentString(context);
_L5:
        if (TextUtils.isEmpty(s))
        {
            s = Build.MODEL;
        }
        return s;
_L2:
        s = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    void b(String s, String s1)
    {
        MMAdImpl mmadimpl = (MMAdImpl)c.get();
        if (mmadimpl != null && b != null)
        {
            b.a(s, s1, mmadimpl);
        }
    }

    void d()
    {
        if (b != null)
        {
            b.b((MMAdImpl)c.get());
        }
    }

    public void downloadCompleted(CachedAd cachedad, boolean flag)
    {
        MMAdImpl mmadimpl = (MMAdImpl)c.get();
        if (mmadimpl == null)
        {
            MMLog.e("MMAdImplController", MMException.a(25));
            return;
        }
        if (flag)
        {
            AdCache.a(mmadimpl.j(), mmadimpl.k(), cachedad.e());
        }
        if (flag)
        {
            MMSDK.Event.f(mmadimpl);
            return;
        } else
        {
            MMSDK.Event.a(mmadimpl, new MMException(15));
            return;
        }
    }

    public void downloadStart(CachedAd cachedad)
    {
    }

    int f(MMAdImpl mmadimpl)
    {
        CachedAd cachedad = AdCache.d(mmadimpl.j(), mmadimpl.k());
        if (cachedad != null)
        {
            if (cachedad.a(mmadimpl.j(), mmadimpl, true))
            {
                return 0;
            } else
            {
                return a(mmadimpl, cachedad);
            }
        } else
        {
            MMLog.c("MMAdImplController", "No next ad.");
            return 20;
        }
    }

    int g(MMAdImpl mmadimpl)
    {
        CachedAd cachedad = AdCache.d(mmadimpl.j(), mmadimpl.k());
        if (cachedad != null)
        {
            if (cachedad.a(mmadimpl.j(), mmadimpl, true))
            {
                MMSDK.Event.c(mmadimpl);
                AdCache.a(mmadimpl.j(), mmadimpl.k(), null);
                cachedad.a(mmadimpl.j(), mmadimpl.h);
                HandShake.a(mmadimpl.j()).b(mmadimpl.j(), mmadimpl.f);
                return 0;
            } else
            {
                return a(mmadimpl, cachedad);
            }
        } else
        {
            return 20;
        }
    }

    public String getDefaultUserAgentString(Context context)
    {
        return System.getProperty("http.agent");
    }

    public String toString()
    {
        MMAdImpl mmadimpl = (MMAdImpl)c.get();
        StringBuilder stringbuilder = new StringBuilder();
        if (mmadimpl != null)
        {
            stringbuilder.append((new StringBuilder()).append(mmadimpl).append("-LinkInC=").append(a).toString());
        }
        return (new StringBuilder()).append(stringbuilder.toString()).append(" w/").append(b).toString();
    }


    private class RequestAdRunnable
        implements Runnable
    {

        HttpMMHeaders a;
        String b;
        final MMAdImplController c;

        private boolean a()
        {
            StringBuilder stringbuilder;
            b = null;
            WeakReference weakreference = c.c;
            MMAdImpl mmadimpl = null;
            if (weakreference != null)
            {
                mmadimpl = (MMAdImpl)c.c.get();
            }
            if (mmadimpl == null)
            {
                break MISSING_BLOCK_LABEL_268;
            }
            try
            {
                TreeMap treemap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                mmadimpl.a(treemap);
                MMSDK.a(mmadimpl.j(), treemap);
                treemap.put("ua", mmadimpl.k.b());
                stringbuilder = new StringBuilder(HandShake.a());
                MMLog.b("MMAdImplController", treemap.entrySet().toString());
                Object aobj1[];
                for (Iterator iterator = treemap.entrySet().iterator(); iterator.hasNext(); stringbuilder.append(String.format("%s=%s&", aobj1)))
                {
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                    aobj1 = new Object[2];
                    aobj1[0] = entry.getKey();
                    aobj1[1] = URLEncoder.encode((String)entry.getValue(), "UTF-8");
                }

            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                return a(new MMException(unsupportedencodingexception));
            }
            stringbuilder.delete(-1 + stringbuilder.length(), stringbuilder.length());
            b = stringbuilder.toString();
            Object aobj[] = new Object[1];
            aobj[0] = b;
            MMLog.b("MMAdImplController", String.format("Calling for an advertisement: %s", aobj));
            break MISSING_BLOCK_LABEL_282;
            b(new MMException(25));
            return true;
        }

        private boolean a(HttpEntity httpentity)
        {
            MMAdImpl mmadimpl;
            if (c.c != null)
            {
                mmadimpl = (MMAdImpl)c.c.get();
            } else
            {
                mmadimpl = null;
            }
            if (mmadimpl != null)
            {
                if (mmadimpl.isBanner())
                {
                    return a(new MMException("Millennial ad return unsupported format.", 15));
                }
                VideoAd videoad;
                try
                {
                    videoad = (VideoAd)CachedAd.a(HttpGetRequest.a(httpentity.getContent()));
                }
                catch (IllegalStateException illegalstateexception)
                {
                    illegalstateexception.printStackTrace();
                    return b(new MMException("Millennial ad return failed. Invalid response data.", illegalstateexception));
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                    return b(new MMException((new StringBuilder()).append("Millennial ad return failed. ").append(ioexception).toString(), ioexception));
                }
                if (videoad != null && videoad.b())
                {
                    MMLog.c("MMAdImplController", (new StringBuilder()).append("Cached video ad JSON received: ").append(videoad.e()).toString());
                    if (videoad.a())
                    {
                        MMLog.c("MMAdImplController", "New ad has expiration date in the past. Not downloading ad content.");
                        videoad.c(mmadimpl.j());
                        MMSDK.Event.a(mmadimpl, new MMException(15));
                    } else
                    if (AdCache.d(mmadimpl.j(), mmadimpl.k()) != null)
                    {
                        MMLog.c("MMAdImplController", "Previously fetched ad exists in the playback queue. Not downloading ad content.");
                        videoad.c(mmadimpl.j());
                        MMSDK.Event.a(mmadimpl, new MMException(17));
                    } else
                    {
                        AdCache.a(mmadimpl.j(), videoad);
                        if (!videoad.d(mmadimpl.j()))
                        {
                            MMSDK.Event.a(videoad.l);
                            MMLog.b("MMAdImplController", "Downloading ad...");
                            MMSDK.Event.b(mmadimpl);
                            videoad.e = 3;
                            AdCache.a(mmadimpl.j(), mmadimpl.k(), videoad, mmadimpl.k);
                        } else
                        {
                            MMLog.b("MMAdImplController", "Cached ad is valid. Moving it to the front of the queue.");
                            AdCache.a(mmadimpl.j(), mmadimpl.k(), videoad.e());
                            MMSDK.Event.b(mmadimpl);
                            MMSDK.Event.f(mmadimpl);
                        }
                    }
                }
            }
            return true;
        }

        private boolean a(HttpResponse httpresponse)
        {
            HttpEntity httpentity = httpresponse.getEntity();
            if (httpentity == null)
            {
                b(new MMException("Null HTTP entity", 14));
                return false;
            }
            if (httpentity.getContentLength() == 0L)
            {
                b(new MMException("Millennial ad return failed. Zero content length returned.", 14));
                return false;
            }
            b(httpresponse);
            Header header = httpentity.getContentType();
            if (header != null && header.getValue() != null)
            {
                if (header.getValue().toLowerCase().startsWith("application/json"))
                {
                    a(httpentity);
                } else
                if (header.getValue().toLowerCase().startsWith("text/html"))
                {
                    Header header1 = httpresponse.getFirstHeader("X-MM-Video");
                    a = new HttpMMHeaders(httpresponse.getAllHeaders());
                    if (header1 != null && header1.getValue().equalsIgnoreCase("true"))
                    {
                        WeakReference weakreference = c.c;
                        MMAdImpl mmadimpl = null;
                        if (weakreference != null)
                        {
                            mmadimpl = (MMAdImpl)c.c.get();
                        }
                        if (mmadimpl != null)
                        {
                            Context context = mmadimpl.j();
                            HandShake.a(context).b(context, mmadimpl.f);
                        }
                    }
                    b(httpentity);
                } else
                {
                    b(new MMException("Millennial ad return failed. Invalid (JSON/HTML expected) mime type returned.", 15));
                    return false;
                }
                return true;
            } else
            {
                b(new MMException("Millennial ad return failed. HTTP Header value null.", 15));
                return false;
            }
        }

        private void b(HttpResponse httpresponse)
        {
            Header aheader[] = httpresponse.getHeaders("Set-Cookie");
            int k = aheader.length;
            for (int l = 0; l < k; l++)
            {
                String s = aheader[l].getValue();
                int i1 = s.indexOf("MAC-ID=");
                if (i1 < 0)
                {
                    continue;
                }
                int j1 = s.indexOf(';', i1);
                if (j1 > i1)
                {
                    MMSDK.e = s.substring(i1 + 7, j1);
                }
            }

        }

        private boolean b(HttpEntity httpentity)
        {
            WeakReference weakreference;
            MMAdImpl mmadimpl;
            InterstitialAd interstitialad;
            Object aobj[];
            try
            {
                weakreference = c.c;
            }
            catch (IOException ioexception)
            {
                return a(new MMException((new StringBuilder()).append("Exception raised in HTTP stream: ").append(ioexception).toString(), ioexception));
            }
            mmadimpl = null;
            if (weakreference == null)
            {
                break MISSING_BLOCK_LABEL_30;
            }
            mmadimpl = (MMAdImpl)c.c.get();
            if (mmadimpl == null)
            {
                break MISSING_BLOCK_LABEL_264;
            }
            if (!mmadimpl.isBanner())
            {
                interstitialad = new InterstitialAd();
                interstitialad.g = HttpGetRequest.a(httpentity.getContent());
                interstitialad.b(mmadimpl.f);
                interstitialad.h = b;
                interstitialad.i = a;
                if (MMSDK.a >= 5)
                {
                    aobj = new Object[1];
                    aobj[0] = interstitialad.h;
                    MMLog.a("MMAdImplController", String.format("Received interstitial ad with url %s.", aobj));
                    MMLog.a("MMAdImplController", interstitialad.g);
                }
                AdCache.a(mmadimpl.j(), interstitialad);
                AdCache.a(mmadimpl.j(), mmadimpl.k(), interstitialad.e());
                MMSDK.Event.b(mmadimpl);
                MMSDK.Event.f(mmadimpl);
                break MISSING_BLOCK_LABEL_264;
            }
            if (mmadimpl.k != null)
            {
                mmadimpl.k.a(a);
                mmadimpl.k.a(HttpGetRequest.a(httpentity.getContent()), b);
            }
            MMSDK.Event.f(mmadimpl);
            return true;
        }

        boolean a(MMException mmexception)
        {
            MMLog.e("MMAdImplController", mmexception.getMessage());
            return c(mmexception);
        }

        boolean b(MMException mmexception)
        {
            MMLog.c("MMAdImplController", mmexception.getMessage());
            return c(mmexception);
        }

        boolean c(MMException mmexception)
        {
            WeakReference weakreference = c.c;
            MMAdImpl mmadimpl = null;
            if (weakreference != null)
            {
                mmadimpl = (MMAdImpl)c.c.get();
            }
            MMSDK.Event.a(mmadimpl, mmexception);
            return false;
        }

        public void run()
        {
            MMAdImpl mmadimpl;
            if (c.c == null)
            {
                break MISSING_BLOCK_LABEL_205;
            }
            mmadimpl = (MMAdImpl)c.c.get();
            if (mmadimpl == null)
            {
                break MISSING_BLOCK_LABEL_179;
            }
            boolean flag;
            if (!MMSDK.a(mmadimpl.j()))
            {
                break MISSING_BLOCK_LABEL_179;
            }
            flag = a();
            if (!flag)
            {
                c.d = null;
                return;
            }
            HttpResponse httpresponse = (new HttpGetRequest()).a(b);
            if (httpresponse != null)
            {
                break MISSING_BLOCK_LABEL_157;
            }
            a(new MMException("HTTP response is null.", 14));
            c.d = null;
            return;
            Exception exception2;
            exception2;
            a(new MMException((new StringBuilder()).append("Ad request HTTP error. ").append(exception2.getMessage()).toString(), 14));
            c.d = null;
            return;
            boolean flag1 = a(httpresponse);
            if (!flag1)
            {
                c.d = null;
                return;
            }
            break MISSING_BLOCK_LABEL_205;
            b(new MMException("No network available, can't call for ads.", 11));
            c.d = null;
            return;
            c.d = null;
            return;
            Exception exception1;
            exception1;
            b(new MMException("Request not filled, can't call for ads.", 14));
            c.d = null;
            return;
            Exception exception;
            exception;
            c.d = null;
            throw exception;
        }

        private RequestAdRunnable()
        {
            c = MMAdImplController.this;
            super();
        }

    }

}
