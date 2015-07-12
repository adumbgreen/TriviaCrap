// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.etermax.widget.a.b;
import java.text.Collator;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.etermax.widget:
//            b, c

public class a
{

    private AlertDialog a;

    public a(Context context, List list, c c, boolean flag)
    {
        android.app.AlertDialog.Builder builder = a(context);
        if (flag)
        {
            Collator collator = Collator.getInstance();
            collator.setStrength(0);
            Collections.sort(list, new com.etermax.widget.b(this, collator));
        }
        builder.setAdapter(new b(context, 0x1090011, 0x1020014, list), new android.content.DialogInterface.OnClickListener(c, list) {

            final c a;
            final List b;
            final a c;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.a(b.get(i));
            }

            
            {
                c = a.this;
                a = c1;
                b = list;
                super();
            }
        });
        builder.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final a a;

            public void onCancel(DialogInterface dialoginterface)
            {
            }

            
            {
                a = a.this;
                super();
            }
        });
        a = builder.create();
    }

    private android.app.AlertDialog.Builder a(Context context)
    {
        return new android.app.AlertDialog.Builder(context);
    }

    public void a()
    {
        a.show();
    }
}
