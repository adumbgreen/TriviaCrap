// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.h;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.widget.ArrayAdapter;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.h:
//            e

public class d
{

    private AlertDialog a;

    public d(Context context, List list, e e)
    {
        android.app.AlertDialog.Builder builder = a(context);
        builder.setAdapter(new ArrayAdapter(context, 0x1090011, 0x1020014, list), new android.content.DialogInterface.OnClickListener(e, list) {

            final e a;
            final List b;
            final d c;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.b((String)b.get(i));
            }

            
            {
                c = d.this;
                a = e1;
                b = list;
                super();
            }
        });
        builder.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final d a;

            public void onCancel(DialogInterface dialoginterface)
            {
            }

            
            {
                a = d.this;
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
