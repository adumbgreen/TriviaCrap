// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.os.Bundle;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            d, a

public class e
{

    private Bundle a;

    private e()
    {
        a = new Bundle();
    }

    e(d._cls1 _pcls1)
    {
        this();
    }

    public a a()
    {
        d d1 = new d();
        d1.setArguments(a);
        return d1;
    }

    public e a(int i)
    {
        a.putInt("mBackgroundColor", i);
        return this;
    }

    public e b(int i)
    {
        a.putInt("mSubtitleResource", i);
        return this;
    }

    public e c(int i)
    {
        a.putInt("mTextColor", i);
        return this;
    }

    public e d(int i)
    {
        a.putInt("mTitleResource", i);
        return this;
    }
}
