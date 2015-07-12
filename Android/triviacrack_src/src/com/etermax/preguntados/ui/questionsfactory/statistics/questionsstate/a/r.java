// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import java.util.Collection;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            e, a, n

public class r extends BaseAdapter
{

    private Context a;
    private e b;

    public r(Context context)
    {
        a = context;
        b = new e();
    }

    public int a(QuestionCategory questioncategory)
    {
        return b.a(questioncategory);
    }

    public a a(int i)
    {
        return b.a(i);
    }

    public void a()
    {
        b.b();
        notifyDataSetChanged();
    }

    public void a(QuestionCategory questioncategory, Collection collection)
    {
        b.a(questioncategory, collection);
        notifyDataSetChanged();
    }

    public void b(QuestionCategory questioncategory, Collection collection)
    {
        b.b(questioncategory, collection);
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return b.a();
    }

    public Object getItem(int i)
    {
        return a(i);
    }

    public long getItemId(int i)
    {
        return (long)b.a(i).hashCode();
    }

    public int getItemViewType(int i)
    {
        return b.a(i).a().ordinal();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        return a(i).a(a, view, this);
    }

    public int getViewTypeCount()
    {
        return n.values().length;
    }
}
