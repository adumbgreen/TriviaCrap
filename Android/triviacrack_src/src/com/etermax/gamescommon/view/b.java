// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.view:
//            a, FlagsLayout

public class b extends BaseAdapter
{

    FlagsLayout a;
    private List b;

    public b(List list, FlagsLayout flagslayout)
    {
        b = list;
        a = flagslayout;
    }

    public void a(List list)
    {
        b = list;
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return b.size();
    }

    public Object getItem(int j)
    {
        return b.get(j);
    }

    public long getItemId(int j)
    {
        return (long)j;
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        a a1 = (a)getItem(j);
        ViewGroup viewgroup1;
        if (view == null)
        {
            viewgroup1 = (ViewGroup)LayoutInflater.from(viewgroup.getContext()).inflate(k.flags_list_item, viewgroup, false);
        } else
        {
            viewgroup1 = (ViewGroup)view;
        }
        viewgroup1.setOnClickListener(new android.view.View.OnClickListener(j) {

            final int a;
            final b b;

            public void onClick(View view1)
            {
                b.a.a(a);
            }

            
            {
                b = b.this;
                a = j;
                super();
            }
        });
        ((TextView)viewgroup1.findViewById(i.flag_name)).setText(a1.e);
        ((ImageView)viewgroup1.findViewById(i.flag_image)).setImageDrawable(viewgroup1.getResources().getDrawable(a1.b));
        return viewgroup1;
    }
}
