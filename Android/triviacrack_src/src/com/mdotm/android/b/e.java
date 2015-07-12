// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.b;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.mdotm.android.d.a;
import com.mdotm.android.e.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.mdotm.android.b:
//            c

public class e
{

    private static e c = null;
    private static Handler d;
    c a;
    Context b;
    private Map e;
    private Map f;
    private List g;
    private List h;
    private boolean i;

    private e(Context context)
    {
        e = new HashMap();
        f = new HashMap();
        g = new ArrayList();
        h = new ArrayList();
        b = context;
        if (d == null)
        {
            com.mdotm.android.e.d.a(this, "Creating new handler");
            d = new Handler() {

                final e a;

                public void handleMessage(Message message)
                {
                    try
                    {
                        com.mdotm.android.e.d.b(this, "Handling the message");
                    }
                    catch (Exception exception)
                    {
                        try
                        {
                            com.mdotm.android.b.e.a(a).clear();
                            e.b(a).clear();
                            e.c(a).clear();
                            com.mdotm.android.b.e.d(a).clear();
                            return;
                        }
                        catch (Exception exception1)
                        {
                            return;
                        }
                    }
                    if (message == null) goto _L2; else goto _L1
_L1:
                    com.mdotm.android.e.d.c(this, (new StringBuilder(" message id ")).append(message.obj).toString());
                    if (!com.mdotm.android.b.e.a(a).contains(message.obj)) goto _L2; else goto _L3
_L3:
                    com.mdotm.android.e.d.b(this, "contains requested id ");
                    com.mdotm.android.b.e.a(a).remove(message.obj);
                    e.b(a).remove(message.obj);
                    e.c(a).remove(message.obj);
                    com.mdotm.android.b.e.d(a).remove(message.obj);
                    if (com.mdotm.android.b.e.d(a).size() <= 0) goto _L5; else goto _L4
_L4:
                    if (!a.a())
                    {
                        break MISSING_BLOCK_LABEL_546;
                    }
                    Long long3 = (Long)com.mdotm.android.b.e.d(a).get(0);
                    com.mdotm.android.e.d.c(this, "mapRequestQueue size > 0");
                    a.a((a)e.b(a).get(long3), (com.mdotm.android.c.e)e.c(a).get(long3), long3.longValue());
_L2:
                    super.handleMessage(message);
                    return;
_L7:
                    int j;
                    Long long1;
                    Long long2;
                    for (; j < com.mdotm.android.b.e.d(a).size(); j++)
                    {
                        break MISSING_BLOCK_LABEL_384;
                    }

                    if (com.mdotm.android.b.e.d(a).size() > 0)
                    {
                        com.mdotm.android.e.d.b(this, "still has some interstitial requests so processing");
                        long2 = (Long)com.mdotm.android.b.e.d(a).get(0);
                        a.a((a)e.b(a).get(long2), (com.mdotm.android.c.e)e.c(a).get(long2), long2.longValue());
                    }
                      goto _L2
                    long1 = (Long)com.mdotm.android.b.e.d(a).get(j);
                    if (!((a)e.b(a).get(long1)).d())
                    {
                        com.mdotm.android.e.d.b(this, "removing banner");
                        e.b(a).remove(long1);
                        e.c(a).remove(long1);
                        com.mdotm.android.b.e.d(a).remove(long1);
                    }
                    break MISSING_BLOCK_LABEL_552;
_L5:
                    if (com.mdotm.android.b.e.a(a).size() != 0) goto _L2; else goto _L6
_L6:
                    com.mdotm.android.b.e.a(a).clear();
                    e.b(a).clear();
                    e.c(a).clear();
                    com.mdotm.android.b.e.d(a).clear();
                      goto _L2
                    j = 0;
                      goto _L7
                }

            
            {
                a = e.this;
                super();
            }
            };
        }
    }

    public static e a(Context context)
    {
        if (c == null)
        {
            c = new e(context);
        }
        return c;
    }

    static List a(e e1)
    {
        return e1.h;
    }

    private long b()
    {
        return System.currentTimeMillis();
    }

    static Map b(e e1)
    {
        return e1.f;
    }

    static Map c(e e1)
    {
        return e1.e;
    }

    static List d(e e1)
    {
        return e1.g;
    }

    public void a(a a1, com.mdotm.android.c.e e1)
    {
        long l = b();
        com.mdotm.android.e.d.b(this, (new StringBuilder("** added to queue ")).append(l).toString());
        g.add(Long.valueOf(l));
        e.put(Long.valueOf(l), e1);
        f.put(Long.valueOf(l), a1);
        if (h.size() == 0)
        {
            a(a1, e1, l);
        }
    }

    protected void a(a a1, com.mdotm.android.c.e e1, long l)
    {
        com.mdotm.android.e.d.b(this, (new StringBuilder("** sending req for  ")).append(l).toString());
        a = com.mdotm.android.b.c.a(b, d);
        a.a(e1);
        a.a(a1, l);
        h.add(Long.valueOf(l));
    }

    public void a(boolean flag)
    {
        i = flag;
    }

    public boolean a()
    {
        return i;
    }

}
