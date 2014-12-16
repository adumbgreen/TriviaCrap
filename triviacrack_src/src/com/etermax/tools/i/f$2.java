// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.i;


// Referenced classes of package com.etermax.tools.i:
//            f

class a
    implements Runnable
{

    final Exception a;
    final f b;

    public void run()
    {
        Object obj;
        try
        {
            obj = b.i();
        }
        catch (ClassCastException classcastexception)
        {
            b.a(a);
            return;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        b.a(obj, a);
    }

    tion(f f1, Exception exception)
    {
        b = f1;
        a = exception;
        super();
    }
}
