// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.etermax.i;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.c.a.c;
import com.etermax.preguntados.c.a.f;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class CategoryCrownsView extends LinearLayout
{

    b a;
    private HashMap b;

    public CategoryCrownsView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        if (!isInEditMode())
        {
            a();
        }
    }

    public void a()
    {
        b = new HashMap();
        a = c.a(getContext());
        b.put(a.a(5), Integer.valueOf(i.crown_06));
        b.put(a.a(4), Integer.valueOf(i.crown_05));
        b.put(a.a(3), Integer.valueOf(i.crown_04));
        b.put(a.a(2), Integer.valueOf(i.crown_03));
        b.put(a.a(1), Integer.valueOf(i.crown_02));
        b.put(a.a(0), Integer.valueOf(i.crown_01));
    }

    public void setCrowns(List list)
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = b.entrySet().iterator(); iterator.hasNext(); ((ImageView)findViewById(((Integer)entry.getValue()).intValue())).setImageResource(a.d((QuestionCategory)entry.getKey()).d()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        if (list != null)
        {
            Iterator iterator1 = list.iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                QuestionCategory questioncategory = (QuestionCategory)iterator1.next();
                if ((Integer)b.get(questioncategory) != null)
                {
                    ((ImageView)findViewById(((Integer)b.get(questioncategory)).intValue())).setImageResource(a.d(questioncategory).e());
                }
            } while (true);
        }
    }
}
