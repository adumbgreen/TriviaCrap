// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.io.Writer;

// Referenced classes of package com.millennialmedia.a.a.b:
//            u

final class t extends Writer
{

    private final Appendable a;
    private final u b;

    private t(Appendable appendable)
    {
        b = new u();
        a = appendable;
    }

    t(Appendable appendable, s._cls1 _pcls1)
    {
        this(appendable);
    }

    public void close()
    {
    }

    public void flush()
    {
    }

    public void write(int i)
    {
        a.append((char)i);
    }

    public void write(char ac[], int i, int j)
    {
        b.a = ac;
        a.append(b, i, i + j);
    }
}
