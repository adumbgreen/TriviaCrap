// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.TextView;
import com.etermax.i;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion.report:
//            m, l, j

public class k extends BaseAdapter
{

    private Context a;
    private List b;
    private int c;

    public k(Context context, List list)
    {
        c = -1;
        a = context;
        b = list;
    }

    public void a(int i1)
    {
        if (c != -1)
        {
            ((m)b.get(c)).a(false);
        }
        c = i1;
        ((m)b.get(i1)).a(true);
        notifyDataSetChanged();
    }

    public m b(int i1)
    {
        return (m)b.get(i1);
    }

    public int getCount()
    {
        return b.size();
    }

    public Object getItem(int i1)
    {
        return b(i1);
    }

    public long getItemId(int i1)
    {
        return 0L;
    }

    public View getView(int i1, View view, ViewGroup viewgroup)
    {
        l l1;
        m m1;
        if (view == null)
        {
            view = LayoutInflater.from(a).inflate(com.etermax.k.rate_question_reason_list_item_layout, viewgroup, false);
            l l2 = new l(this);
            l2.a = (CheckedTextView)view.findViewById(i.item_checkbox_unselected);
            l2.b = (CheckedTextView)view.findViewById(i.item_checkbox_selected);
            l2.c = (TextView)view.findViewById(i.item_hint);
            view.setTag(l2);
            l1 = l2;
        } else
        {
            l1 = (l)view.getTag();
        }
        m1 = b(i1);
        l1.a.setText(a.getString(m1.a().b()));
        l1.b.setText(a.getString(m1.a().b()));
        l1.c.setText(a.getString(m1.a().c()));
        if (m1.b())
        {
            l1.b.setVisibility(0);
            l1.a.setVisibility(4);
            return view;
        } else
        {
            l1.b.setVisibility(4);
            l1.a.setVisibility(0);
            return view;
        }
    }
}
