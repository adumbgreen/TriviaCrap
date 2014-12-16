// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui.adapter.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.chat.a.f;
import com.etermax.i;
import com.etermax.k;
import java.text.SimpleDateFormat;
import java.util.Locale;

// Referenced classes of package com.etermax.chat.ui.adapter.a:
//            b

public class a
    implements b
{

    public a()
    {
    }

    public View a(int j, View view, ViewGroup viewgroup, LayoutInflater layoutinflater, com.etermax.chat.ui.f f1)
    {
        ViewGroup viewgroup1;
        if (view == null)
        {
            viewgroup1 = (ViewGroup)layoutinflater.inflate(k.list_item_date_section, viewgroup, false);
        } else
        {
            viewgroup1 = (ViewGroup)view;
        }
        if (f1 instanceof f)
        {
            f f2 = (f)f1;
            SimpleDateFormat simpledateformat = new SimpleDateFormat("d MMMM ", Locale.getDefault());
            if (f2.f() != null)
            {
                String s = simpledateformat.format(f2.f()).toUpperCase(Locale.getDefault());
                ((TextView)viewgroup1.findViewById(i.tv_date_section)).setText(s);
            }
            viewgroup1.setEnabled(false);
            viewgroup1.setOnClickListener(null);
        }
        return viewgroup1;
    }
}
