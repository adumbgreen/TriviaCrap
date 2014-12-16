// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.net.Uri;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.millennialmedia.android:
//            BridgeMMBanner, ComponentRegistry, BridgeMMCachedVideo, BridgeMMCalendar, 
//            BridgeMMDevice, BridgeMMInlineVideo, BridgeMMInterstitial, BridgeMMMedia, 
//            BridgeMMNotification, BridgeMMSpeechkit, MMLog, MMWebView, 
//            MMJSObject, MMJSResponse, MMSDK

class MMCommand
    implements Runnable
{

    private WeakReference a;
    private String b;
    private String c;
    private String d;
    private Map e;

    MMCommand(MMWebView mmwebview, String s)
    {
        a = new WeakReference(mmwebview);
        String as[];
        as = Uri.parse(s).getHost().split("\\.");
        if (as.length != 2)
        {
            return;
        }
        String as1[];
        int i;
        b = as[0];
        c = as[1];
        e = new HashMap();
        as1 = s.substring(1 + s.indexOf('?')).split("&");
        i = as1.length;
        int j = 0;
_L2:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        String as2[] = as1[j].split("=");
        if (as2.length >= 2)
        {
            e.put(Uri.decode(as2[0]), Uri.decode(as2[1]));
            if (as2[0].equalsIgnoreCase("callback"))
            {
                d = Uri.decode(as2[1]);
            }
        }
        j++;
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        MMLog.a("MMCommand", String.format("Exception while executing javascript call %s ", new Object[] {
            s
        }), exception);
        exception.printStackTrace();
_L1:
    }

    private MMJSObject a(String s)
    {
        BridgeMMBanner bridgemmbanner = null;
        if (s != null)
        {
            if ("MMBanner".equals(s))
            {
                bridgemmbanner = ComponentRegistry.a();
            } else
            {
                if ("MMCachedVideo".equals(s))
                {
                    return ComponentRegistry.b();
                }
                if ("MMCalendar".equals(s))
                {
                    return ComponentRegistry.c();
                }
                if ("MMDevice".equals(s))
                {
                    return ComponentRegistry.d();
                }
                if ("MMInlineVideo".equals(s))
                {
                    return ComponentRegistry.e();
                }
                if ("MMInterstitial".equals(s))
                {
                    return ComponentRegistry.f();
                }
                if ("MMMedia".equals(s))
                {
                    return ComponentRegistry.g();
                }
                if ("MMNotification".equals(s))
                {
                    return ComponentRegistry.h();
                }
                boolean flag = "MMSpeechkit".equals(s);
                bridgemmbanner = null;
                if (flag)
                {
                    return ComponentRegistry.i();
                }
            }
        }
        return bridgemmbanner;
    }

    static String a(MMCommand mmcommand)
    {
        return mmcommand.c;
    }

    private String b()
    {
        return b.replaceFirst("Bridge", "");
    }

    static String b(MMCommand mmcommand)
    {
        return mmcommand.d;
    }

    boolean a()
    {
        if (c != null)
        {
            return "resize".equals(c);
        } else
        {
            return false;
        }
    }

    public void run()
    {
        if (b == null) goto _L2; else goto _L1
_L1:
        String s = c;
        if (s == null) goto _L2; else goto _L3
_L3:
        MMWebView mmwebview2 = (MMWebView)a.get();
        if (mmwebview2 == null) goto _L5; else goto _L4
_L4:
        MMJSObject mmjsobject = a(b);
        if (mmjsobject == null) goto _L7; else goto _L6
_L6:
        MMJSResponse mmjsresponse4;
        mmjsobject.c(mmwebview2.getContext());
        mmjsobject.a(mmwebview2);
        mmwebview2.a(e);
        mmjsresponse4 = mmjsobject.a(c, e);
        MMJSResponse mmjsresponse3 = mmjsresponse4;
_L11:
        MMJSResponse mmjsresponse2 = mmjsresponse3;
_L9:
        if (!TextUtils.isEmpty(d))
        {
            MMWebView mmwebview1 = (MMWebView)a.get();
            if (mmwebview1 != null)
            {
                if (mmjsresponse2 == null)
                {
                    mmjsresponse2 = MMJSResponse.b(c);
                }
                if (mmjsresponse2.b == null)
                {
                    mmjsresponse2.b = c;
                }
                if (mmjsresponse2.a == null)
                {
                    mmjsresponse2.a = b();
                }
                MMSDK.a(new Runnable(mmwebview1, mmjsresponse2) {

                    final MMWebView a;
                    final MMJSResponse b;
                    final MMCommand c;

                    public void run()
                    {
                        if (MMCommand.a(c).equals("expandWithProperties"))
                        {
                            a.b = true;
                        }
                        Object aobj[] = new Object[2];
                        aobj[0] = MMCommand.b(c);
                        aobj[1] = b.c();
                        String s1 = String.format("javascript:%s(%s);", aobj);
                        a.loadUrl(s1);
                    }

            
            {
                c = MMCommand.this;
                a = mmwebview;
                b = mmjsresponse;
                super();
            }
                });
            }
        }
        return;
_L7:
        MMJSResponse mmjsresponse5 = MMJSResponse.b((new StringBuilder()).append("Service: ").append(b).append(" does not exist.").toString());
        mmjsresponse3 = mmjsresponse5;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        MMLog.a("MMCommand", (new StringBuilder()).append("Exception while executing javascript call ").append(c).toString(), exception1);
        mmjsresponse3 = MMJSResponse.b((new StringBuilder()).append("Unexpected exception, ").append(exception1.getClass().getName()).append(" received.").toString());
        continue; /* Loop/switch isn't completed */
_L2:
        MMJSResponse mmjsresponse1 = MMJSResponse.b("The service or service method was not defined.");
        mmjsresponse2 = mmjsresponse1;
        if (true) goto _L9; else goto _L8
_L8:
        Exception exception;
        exception;
        if (!TextUtils.isEmpty(d))
        {
            MMWebView mmwebview = (MMWebView)a.get();
            if (mmwebview != null)
            {
                MMJSResponse mmjsresponse = null;
                if (true)
                {
                    mmjsresponse = MMJSResponse.b(c);
                }
                if (mmjsresponse.b == null)
                {
                    mmjsresponse.b = c;
                }
                if (mmjsresponse.a == null)
                {
                    mmjsresponse.a = b();
                }
                MMSDK.a(new _cls1(mmwebview, mmjsresponse));
            }
        }
        throw exception;
_L5:
        mmjsresponse3 = null;
        if (true) goto _L11; else goto _L10
_L10:
    }

    static 
    {
        ComponentRegistry.a(new BridgeMMBanner());
        ComponentRegistry.a(new BridgeMMCachedVideo());
        ComponentRegistry.a(new BridgeMMCalendar());
        ComponentRegistry.a(new BridgeMMDevice());
        ComponentRegistry.a(new BridgeMMInlineVideo());
        ComponentRegistry.a(new BridgeMMInterstitial());
        ComponentRegistry.a(new BridgeMMMedia());
        ComponentRegistry.a(new BridgeMMNotification());
        ComponentRegistry.a(new BridgeMMSpeechkit());
    }
}
