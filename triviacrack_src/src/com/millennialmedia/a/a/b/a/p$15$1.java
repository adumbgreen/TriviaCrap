// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.sql.Timestamp;
import java.util.Date;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

class a extends s
{

    final s a;
    final a b;

    public Timestamp a(a a1)
    {
        Date date = (Date)a.b(a1);
        if (date != null)
        {
            return new Timestamp(date.getTime());
        } else
        {
            return null;
        }
    }

    public volatile void a(c c, Object obj)
    {
        a(c, (Timestamp)obj);
    }

    public void a(c c, Timestamp timestamp)
    {
        a.a(c, timestamp);
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    ( , s s1)
    {
        b = ;
        a = s1;
        super();
    }

    // Unreferenced inner class com/millennialmedia/a/a/b/a/p$15

/* anonymous class */
    final class p._cls15
        implements t
    {

        public s a(e e1, com.millennialmedia.a.a.c.a a1)
        {
            if (a1.a() != java/sql/Timestamp)
            {
                return null;
            } else
            {
                return new p._cls15._cls1(this, e1.a(java/util/Date));
            }
        }

    }

}
