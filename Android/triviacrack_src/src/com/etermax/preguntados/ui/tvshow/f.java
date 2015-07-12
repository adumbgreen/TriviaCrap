// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            TvShowQuestionActivity_

public class f
{

    private Context a;
    private final Intent b;

    public f(Context context)
    {
        a = context;
        b = new Intent(context, com/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_);
    }

    public Intent a()
    {
        return b;
    }

    public f a(int i)
    {
        b.putExtra("mPollingIntervalSeconds", i);
        return this;
    }
}
