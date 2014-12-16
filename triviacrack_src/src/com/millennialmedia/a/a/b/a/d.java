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
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class d extends s
{

    public static final t a = new t() {

        public s a(e e, com.millennialmedia.a.a.c.a a1)
        {
            if (a1.a() == java/util/Date)
            {
                return new d();
            } else
            {
                return null;
            }
        }

    };
    private final DateFormat b;
    private final DateFormat c = DateFormat.getDateTimeInstance(2, 2);
    private final DateFormat d = a();

    public d()
    {
        b = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    }

    private static DateFormat a()
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpledateformat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpledateformat;
    }

    private Date a(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        Date date3 = c.parse(s1);
        Date date1 = date3;
_L1:
        this;
        JVM INSTR monitorexit ;
        return date1;
        ParseException parseexception;
        parseexception;
        Date date2 = b.parse(s1);
        date1 = date2;
          goto _L1
        ParseException parseexception1;
        parseexception1;
        Date date = d.parse(s1);
        date1 = date;
          goto _L1
        ParseException parseexception2;
        parseexception2;
        throw new q(s1, parseexception2);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Date a(a a1)
    {
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        } else
        {
            return a(a1.h());
        }
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (Date)obj);
    }

    public void a(c c1, Date date)
    {
        this;
        JVM INSTR monitorenter ;
        if (date != null) goto _L2; else goto _L1
_L1:
        c1.f();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        c1.b(b.format(date));
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
