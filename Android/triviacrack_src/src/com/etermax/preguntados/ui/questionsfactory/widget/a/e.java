// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.widget.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.widget.a:
//            d

public class e extends d
{

    private b a;
    private QuestionCategory b;

    public e(b b1, QuestionCategory questioncategory)
    {
        a = b1;
        b = questioncategory;
    }

    public int a()
    {
        return a.a(b).getNameResource();
    }

    public Drawable a(Context context)
    {
        return context.getResources().getDrawable(a.a(b).getColouredIconResource());
    }

    public QuestionCategory b()
    {
        return b;
    }
}
