// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.widget.a;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.widget.ListView;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.widget.a:
//            a, c, d

public class b
{

    private AlertDialog a;

    public b(FragmentActivity fragmentactivity, String s, List list, c c, boolean flag)
    {
        a a1 = new a(fragmentactivity, 0x1090011, list);
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(fragmentactivity);
        if (flag)
        {
            Collections.sort(list, new Comparator(fragmentactivity) {

                final FragmentActivity a;
                final b b;

                public int a(d d1, d d2)
                {
                    Resources resources = a.getResources();
                    return resources.getString(d1.a()).compareToIgnoreCase(resources.getString(d2.a()));
                }

                public int compare(Object obj, Object obj1)
                {
                    return a((d)obj, (d)obj1);
                }

            
            {
                b = b.this;
                a = fragmentactivity;
                super();
            }
            });
        }
        if (!TextUtils.isEmpty(s))
        {
            builder.setTitle(s);
        }
        builder.setAdapter(a1, new android.content.DialogInterface.OnClickListener(c, list) {

            final c a;
            final List b;
            final b c;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.a(b.get(i));
            }

            
            {
                c = b.this;
                a = c1;
                b = list;
                super();
            }
        });
        builder.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final b a;

            public void onCancel(DialogInterface dialoginterface)
            {
            }

            
            {
                a = b.this;
                super();
            }
        });
        a = builder.create();
    }

    public void a()
    {
        a.show();
    }

    public void b()
    {
        if (a.getListView().getAdapter() instanceof a)
        {
            ((a)a.getListView().getAdapter()).notifyDataSetChanged();
        }
    }
}
