// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.q;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class n extends s
{

    public static final t a = new t() {

        public s a(e e, com.millennialmedia.a.a.c.a a1)
        {
            if (a1.a() == java/sql/Time)
            {
                return new n();
            } else
            {
                return null;
            }
        }

    };
    private final DateFormat b = new SimpleDateFormat("hh:mm:ss a");

    public n()
    {
    }

    public Time a(a a1)
    {
        this;
        JVM INSTR monitorenter ;
        if (a1.f() != b.i) goto _L2; else goto _L1
_L1:
        a1.j();
        Time time = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return time;
_L2:
        time = new Time(b.parse(a1.h()).getTime());
        if (true) goto _L4; else goto _L3
_L3:
        ParseException parseexception;
        parseexception;
        throw new q(parseexception);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (Time)obj);
    }

    public void a(c c1, Time time)
    {
        this;
        JVM INSTR monitorenter ;
        if (time != null) goto _L2; else goto _L1
_L1:
        String s2 = null;
_L4:
        c1.b(s2);
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        String s1 = b.format(time);
        s2 = s1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public Object b(a a1)
    {
        return a(a1);
    }

}
