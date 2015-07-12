// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            f, j, i

public class h extends f
{

    public h(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        super(userfactorytranslationstatdto);
    }

    public View a(Context context, View view, BaseAdapter baseadapter)
    {
        i k;
        if (view == null)
        {
            k = j.a(context);
        } else
        {
            k = (i)view;
        }
        k.a(c);
        return k;
    }
}
