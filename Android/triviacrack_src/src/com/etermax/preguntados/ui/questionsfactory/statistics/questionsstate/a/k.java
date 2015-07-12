// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            f, m, l

public class k extends f
{

    public k(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        super(userfactorytranslationstatdto);
    }

    public View a(Context context, View view, BaseAdapter baseadapter)
    {
        l l1;
        if (view == null)
        {
            l1 = m.a(context);
        } else
        {
            l1 = (l)view;
        }
        l1.a(c);
        return l1;
    }
}
