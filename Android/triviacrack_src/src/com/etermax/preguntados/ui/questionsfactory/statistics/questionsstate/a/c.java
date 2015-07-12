// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

public class c extends RelativeLayout
{

    b a;
    RelativeLayout b;
    ImageView c;
    TextView d;
    TextView e;

    public c(Context context)
    {
        super(context);
    }

    public void a(QuestionCategory questioncategory, int i)
    {
        b.setBackgroundColor(getResources().getColor(a.a(questioncategory).getHeaderColorResource()));
        c.setImageDrawable(getContext().getResources().getDrawable(a.b(questioncategory)));
        d.setText(a.a(questioncategory).getNameResource());
        e.setText(String.valueOf(i));
    }
}
