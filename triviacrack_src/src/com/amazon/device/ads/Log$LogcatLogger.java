// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.util.Log;
import java.util.Iterator;

// Referenced classes of package com.amazon.device.ads:
//            ILog, Log

class <init>
    implements ILog
{

    private static final int MAX_LENGTH = 1000;

    public void d(String s, String s1)
    {
        for (Iterator iterator = Log.split(s1, 1000).iterator(); iterator.hasNext(); Log.d(s, (String)iterator.next())) { }
    }

    public transient void d(String s, String s1, Object aobj[])
    {
        d(s, String.format(s1, aobj));
    }

    public void e(String s, String s1)
    {
        for (Iterator iterator = Log.split(s1, 1000).iterator(); iterator.hasNext(); Log.e(s, (String)iterator.next())) { }
    }

    public transient void e(String s, String s1, Object aobj[])
    {
        e(s, String.format(s1, aobj));
    }

    public void i(String s, String s1)
    {
        for (Iterator iterator = Log.split(s1, 1000).iterator(); iterator.hasNext(); Log.i(s, (String)iterator.next())) { }
    }

    public transient void i(String s, String s1, Object aobj[])
    {
        i(s, String.format(s1, aobj));
    }

    public void v(String s, String s1)
    {
        for (Iterator iterator = Log.split(s1, 1000).iterator(); iterator.hasNext(); Log.v(s, (String)iterator.next())) { }
    }

    public transient void v(String s, String s1, Object aobj[])
    {
        v(s, String.format(s1, aobj));
    }

    public void w(String s, String s1)
    {
        for (Iterator iterator = Log.split(s1, 1000).iterator(); iterator.hasNext(); Log.w(s, (String)iterator.next())) { }
    }

    public transient void w(String s, String s1, Object aobj[])
    {
        w(s, String.format(s1, aobj));
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
