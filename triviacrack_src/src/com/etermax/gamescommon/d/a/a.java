// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.d.a;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import com.etermax.gamescommon.b.f;
import com.etermax.gamescommon.b.h;
import com.etermax.o;
import com.etermax.tools.widget.b.e;

// Referenced classes of package com.etermax.gamescommon.d.a:
//            b

public class a extends e
{

    com.etermax.tools.f.a a;
    private b b;

    public a()
    {
    }

    public static a a(boolean flag, boolean flag1)
    {
        a a1 = new a();
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_blocked", flag);
        bundle.putBoolean("is_favourite", flag1);
        a1.setArguments(bundle);
        return a1;
    }

    static b a(a a1)
    {
        return a1.b;
    }

    public void a(b b1, com.etermax.tools.f.a a1)
    {
        b = b1;
        a = a1;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        boolean flag = getArguments().getBoolean("is_favourite");
        boolean flag1 = getArguments().getBoolean("is_blocked");
        int i = o.add_to_friends;
        int j = o.player_block;
        if (flag)
        {
            i = o.remove_from_friends;
        }
        if (flag1)
        {
            j = o.player_unblock;
        }
        String as[] = new String[4];
        as[0] = getString(i);
        as[1] = getString(j);
        as[2] = getString(o.delete_conversation);
        as[3] = getString(o.cancel);
        builder.setItems(as, new android.content.DialogInterface.OnClickListener(flag, flag1) {

            final boolean a;
            final boolean b;
            final a c;

            public void onClick(DialogInterface dialoginterface, int k)
            {
                com.etermax.gamescommon.b.e e1 = new com.etermax.gamescommon.b.e(h.c);
                k;
                JVM INSTR tableswitch 0 2: default 40
            //                           0 66
            //                           1 110
            //                           2 154;
                   goto _L1 _L2 _L3 _L4
_L1:
                e1.a(f.d);
                c.dismissAllowingStateLoss();
_L6:
                c.a.a(e1);
                return;
_L2:
                e1.a(f.a);
                if (a)
                {
                    a.a(c).c_();
                } else
                {
                    a.a(c).a();
                }
                continue; /* Loop/switch isn't completed */
_L3:
                e1.a(f.b);
                if (b)
                {
                    a.a(c).d_();
                } else
                {
                    a.a(c).c();
                }
                continue; /* Loop/switch isn't completed */
_L4:
                e1.a(f.c);
                a.a(c).f();
                if (true) goto _L6; else goto _L5
_L5:
            }

            
            {
                c = a.this;
                a = flag;
                b = flag1;
                super();
            }
        });
        return builder.create();
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        super.onDismiss(dialoginterface);
        b.b_();
    }

    public void onPause()
    {
        super.onPause();
        b.b_();
    }
}
