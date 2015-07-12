// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.os.Bundle;
import java.util.ArrayList;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            p, n

public class q
{

    private Bundle a;

    private q()
    {
        a = new Bundle();
    }

    q(p._cls1 _pcls1)
    {
        this();
    }

    public n a()
    {
        p p1 = new p();
        p1.setArguments(a);
        return p1;
    }

    public q a(ArrayList arraylist)
    {
        a.putSerializable("mAchievements", arraylist);
        return this;
    }
}
