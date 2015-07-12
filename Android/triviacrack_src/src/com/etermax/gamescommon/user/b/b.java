// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user.b;

import com.etermax.gamescommon.h.a.e;
import com.etermax.o;

// Referenced classes of package com.etermax.gamescommon.user.b:
//            a, c

public class b extends a
{

    boolean c;

    public b(e e1, boolean flag)
    {
        super(c.a, e1);
        a(flag);
    }

    public void a(boolean flag)
    {
        c = flag;
    }

    public boolean c()
    {
        return c;
    }

    public int d()
    {
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[e.values().length];
                try
                {
                    a[e.f.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[e.g.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[e.e.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[e.a.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[e.b.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[b().ordinal()])
        {
        default:
            return 0;

        case 1: // '\001'
            return o.friends_who_play;

        case 2: // '\002'
        case 3: // '\003'
            return o.invite_to_play_app;

        case 4: // '\004'
            return o.suggested_opponent_plural;

        case 5: // '\005'
            return o.recent_opponent_plural;
        }
    }
}
