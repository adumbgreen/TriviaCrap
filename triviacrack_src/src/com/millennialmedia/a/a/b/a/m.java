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
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class m extends s
{

    public static final t a = new t() {

        public s a(e e, com.millennialmedia.a.a.c.a a1)
        {
            if (a1.a() == java/sql/Date)
            {
                return new m();
            } else
            {
                return null;
            }
        }

    };
    private final DateFormat b = new SimpleDateFormat("MMM d, yyyy");

    public m()
    {
    }

    public Date a(a a1)
    {
        this;
        JVM INSTR monitorenter ;
        if (a1.f() != b.i) goto _L2; else goto _L1
_L1:
        a1.j();
        Date date = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return date;
_L2:
        date = new Date(b.parse(a1.h()).getTime());
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
        a(c1, (Date)obj);
    }

    public void a(c c1, Date date)
    {
        this;
        JVM INSTR monitorenter ;
        if (date != null) goto _L2; else goto _L1
_L1:
        String s2 = null;
_L4:
        c1.b(s2);
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        String s1 = b.format(date);
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
