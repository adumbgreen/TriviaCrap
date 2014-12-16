// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.a;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.b.c.a.e;
import org.b.c.b.f;
import org.b.c.c;
import org.b.c.k;

// Referenced classes of package org.b.e.a:
//            f, k

class l
    implements org.b.e.a.f
{

    final org.b.e.a.k a;
    private final Class b;

    private l(org.b.e.a.k k1, Class class1)
    {
        a = k1;
        super();
        b = class1;
    }

    l(org.b.e.a.k k1, Class class1, k._cls1 _pcls1)
    {
        this(k1, class1);
    }

    public void a(e e1)
    {
        if (b != null)
        {
            ArrayList arraylist = new ArrayList();
            Iterator iterator = a.c().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                f f1 = (f)iterator.next();
                if (f1.a(b, null))
                {
                    Iterator iterator1 = f1.a().iterator();
                    while (iterator1.hasNext()) 
                    {
                        k k1 = (k)iterator1.next();
                        if (k1.e() != null)
                        {
                            k1 = new k(k1.a(), k1.c());
                        }
                        arraylist.add(k1);
                    }
                }
            } while (true);
            if (!arraylist.isEmpty())
            {
                k.a(arraylist);
                if (Log.isLoggable("RestTemplate", 3))
                {
                    Log.d("RestTemplate", (new StringBuilder()).append("Setting request Accept header to ").append(arraylist).toString());
                }
                e1.d().a(arraylist);
            }
        }
    }
}
