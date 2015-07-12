// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.etermax.i;
import com.etermax.k;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.c.a.f;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.dto.CategoryQuestionDTO;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            d

public class ProfileCategoryDetailsView extends RelativeLayout
{

    private LinearLayout a;
    private LinearLayout b;

    public ProfileCategoryDetailsView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public ProfileCategoryDetailsView(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        a();
    }

    private void a(d d1)
    {
        if (a.getChildCount() == 0)
        {
            a.addView(d1);
        } else
        if (a.getChildCount() != b.getChildCount())
        {
            b.addView(d1);
        } else
        {
            a.addView(d1);
        }
        if (a.getChildCount() == 3 || b.getChildCount() == 3)
        {
            d1.b();
        }
    }

    protected void a()
    {
        inflate(getContext(), k.profile_category_details, this);
        a = (LinearLayout)findViewById(i.categories_column_01);
        b = (LinearLayout)findViewById(i.categories_column_02);
    }

    public void a(List list, b b1)
    {
        a.removeAllViews();
        b.removeAllViews();
        ArrayList arraylist = new ArrayList();
        g ag[] = b1.a();
        int j = ag.length;
        int l = 0;
        while (l < j) 
        {
            g g1 = ag[l];
            d d1 = new d(getContext());
            if (list != null)
            {
                Iterator iterator1 = list.iterator();
                int i1 = 0;
                int j1 = 0;
                while (iterator1.hasNext()) 
                {
                    CategoryQuestionDTO categoryquestiondto = (CategoryQuestionDTO)iterator1.next();
                    Iterator iterator;
                    int k1;
                    int l1;
                    if (g1.getCategory() == categoryquestiondto.getCategory())
                    {
                        l1 = categoryquestiondto.getCorrect() + categoryquestiondto.getIncorrect();
                        k1 = (100 * categoryquestiondto.getCorrect()) / l1;
                    } else
                    {
                        k1 = i1;
                        l1 = j1;
                    }
                    j1 = l1;
                    i1 = k1;
                }
            } else
            {
                i1 = 0;
                j1 = 0;
            }
            d1.setPercentageTextColor(g1.getTextColorResource());
            d1.setCharacterImage(b1.d(g1.getCategory()).a());
            d1.setCategoryTitle(g1.getNameResource());
            d1.setQuantity(j1);
            d1.setPercentage(i1);
            arraylist.add(d1);
            l++;
        }
        Collections.sort(arraylist);
        for (iterator = arraylist.iterator(); iterator.hasNext(); a((d)iterator.next())) { }
    }
}
