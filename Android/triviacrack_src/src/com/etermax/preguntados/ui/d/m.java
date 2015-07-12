// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.d;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

// Referenced classes of package com.etermax.preguntados.ui.d:
//            l, k

public class m
{

    private Bundle a;

    private m()
    {
        a = new Bundle();
    }

    m(l._cls1 _pcls1)
    {
        this();
    }

    public k a()
    {
        l l1 = new l();
        l1.setArguments(a);
        return l1;
    }

    public m a(QuestionCategory questioncategory)
    {
        a.putSerializable("mSelectedCrown", questioncategory);
        return this;
    }
}
