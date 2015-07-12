// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.TvShowQuestionDTO;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            j, g

public class k
{

    private Bundle a;

    private k()
    {
        a = new Bundle();
    }

    k(j._cls1 _pcls1)
    {
        this();
    }

    public g a()
    {
        j j1 = new j();
        j1.setArguments(a);
        return j1;
    }

    public k a(TvShowQuestionDTO tvshowquestiondto)
    {
        a.putSerializable("mQuestion", tvshowquestiondto);
        return this;
    }
}
