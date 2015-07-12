// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.t;
import java.sql.Timestamp;
import java.util.Date;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class _cls1.a
    implements t
{

    public s a(e e1, a a1)
    {
        if (a1.a() != java/sql/Timestamp)
        {
            return null;
        } else
        {
            return new s(e1.a(java/util/Date)) {

                final s a;
                final p._cls15 b;

                public Timestamp a(com.millennialmedia.a.a.d.a a2)
                {
                    Date date = (Date)a.b(a2);
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

                public Object b(com.millennialmedia.a.a.d.a a2)
                {
                    return a(a2);
                }

            
            {
                b = p._cls15.this;
                a = s1;
                super();
            }
            };
        }
    }

    _cls1.a()
    {
    }
}
