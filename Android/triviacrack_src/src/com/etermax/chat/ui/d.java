// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import com.etermax.chat.a.f;
import com.etermax.chat.a.h;
import com.etermax.o;
import com.etermax.tools.widget.b.e;

// Referenced classes of package com.etermax.chat.ui:
//            e

public class d extends e
{

    private com.etermax.chat.ui.e a;
    private f b;
    private int c;

    public d()
    {
    }

    static f a(d d1)
    {
        return d1.b;
    }

    public static d a()
    {
        return new d();
    }

    static com.etermax.chat.ui.e b(d d1)
    {
        return d1.a;
    }

    static int c(d d1)
    {
        return d1.c;
    }

    public void a(int i)
    {
        c = i;
    }

    public void a(f f1)
    {
        b = f1;
    }

    public void a(com.etermax.chat.ui.e e1)
    {
        a = e1;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        if (b.d() == h.b)
        {
            String as1[] = new String[4];
            as1[0] = getString(o.copy);
            as1[1] = getString(o.retry);
            as1[2] = getString(o.delete_);
            as1[3] = getString(o.cancel);
            builder.setItems(as1, new android.content.DialogInterface.OnClickListener() {

                final d a;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    switch (i)
                    {
                    default:
                        a.dismissAllowingStateLoss();
                        return;

                    case 0: // '\0'
                        d.b(a).b(d.a(a));
                        return;

                    case 1: // '\001'
                        d.b(a).a(d.a(a), d.c(a));
                        return;

                    case 2: // '\002'
                        d.b(a).b(d.a(a), d.c(a));
                        break;
                    }
                }

            
            {
                a = d.this;
                super();
            }
            });
        } else
        {
            String as[] = new String[3];
            as[0] = getString(o.copy);
            as[1] = getString(o.forward);
            as[2] = getString(o.cancel);
            builder.setItems(as, new android.content.DialogInterface.OnClickListener() {

                final d a;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    switch (i)
                    {
                    default:
                        a.dismissAllowingStateLoss();
                        return;

                    case 0: // '\0'
                        d.b(a).b(d.a(a));
                        return;

                    case 1: // '\001'
                        d.b(a).c(d.a(a));
                        break;
                    }
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        return builder.create();
    }
}
