// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import java.util.Stack;

// Referenced classes of package com.millennialmedia.android:
//            BridgeMMBanner, BridgeMMCachedVideo, BridgeMMCalendar, BridgeMMDevice, 
//            BridgeMMInlineVideo, BridgeMMInterstitial, BridgeMMMedia, BridgeMMNotification, 
//            BridgeMMSpeechkit

class ComponentRegistry
{

    static Stack a = new Stack();
    static Stack b = new Stack();
    static Stack c = new Stack();
    static Stack d = new Stack();
    static Stack e = new Stack();
    static Stack f = new Stack();
    static Stack g = new Stack();
    static Stack h = new Stack();
    static Stack i = new Stack();
    static Stack j = new Stack();
    static Stack k = new Stack();

    ComponentRegistry()
    {
    }

    static BridgeMMBanner a()
    {
        return (BridgeMMBanner)a(b);
    }

    private static Object a(Stack stack)
    {
        if (stack.isEmpty())
        {
            return null;
        } else
        {
            return stack.lastElement();
        }
    }

    static void a(BridgeMMBanner bridgemmbanner)
    {
        b.push(bridgemmbanner);
    }

    static void a(BridgeMMCachedVideo bridgemmcachedvideo)
    {
        c.push(bridgemmcachedvideo);
    }

    static void a(BridgeMMCalendar bridgemmcalendar)
    {
        d.push(bridgemmcalendar);
    }

    static void a(BridgeMMDevice bridgemmdevice)
    {
        e.push(bridgemmdevice);
    }

    static void a(BridgeMMInlineVideo bridgemminlinevideo)
    {
        f.push(bridgemminlinevideo);
    }

    static void a(BridgeMMInterstitial bridgemminterstitial)
    {
        g.push(bridgemminterstitial);
    }

    static void a(BridgeMMMedia bridgemmmedia)
    {
        h.push(bridgemmmedia);
    }

    static void a(BridgeMMNotification bridgemmnotification)
    {
        i.push(bridgemmnotification);
    }

    static void a(BridgeMMSpeechkit bridgemmspeechkit)
    {
        j.push(bridgemmspeechkit);
    }

    static void a(MMLog.LoggingComponent loggingcomponent)
    {
        k.push(loggingcomponent);
    }

    static BridgeMMCachedVideo b()
    {
        return (BridgeMMCachedVideo)a(c);
    }

    static BridgeMMCalendar c()
    {
        return (BridgeMMCalendar)a(d);
    }

    static BridgeMMDevice d()
    {
        return (BridgeMMDevice)a(e);
    }

    static BridgeMMInlineVideo e()
    {
        return (BridgeMMInlineVideo)a(f);
    }

    static BridgeMMInterstitial f()
    {
        return (BridgeMMInterstitial)a(g);
    }

    static BridgeMMMedia g()
    {
        return (BridgeMMMedia)a(h);
    }

    static BridgeMMNotification h()
    {
        return (BridgeMMNotification)a(i);
    }

    static BridgeMMSpeechkit i()
    {
        return (BridgeMMSpeechkit)a(j);
    }

    static MMLog.LoggingComponent j()
    {
        return (MMLog.LoggingComponent)a(k);
    }

}
