// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui.adapter.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.a.b;
import com.etermax.chat.a.f;
import com.etermax.chat.a.h;
import com.etermax.gamescommon.d.a.c;
import com.etermax.i;
import com.etermax.k;
import java.text.SimpleDateFormat;

// Referenced classes of package com.etermax.chat.ui.adapter.a:
//            b

public class g
    implements com.etermax.chat.ui.adapter.a.b
{

    private Context a;

    public g(Context context)
    {
        a = context;
    }

    private void a(View view, int j)
    {
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            view.setBackgroundDrawable(a.getResources().getDrawable(j));
            return;
        } else
        {
            view.setBackground(a.getResources().getDrawable(j));
            return;
        }
    }

    public View a(int j, View view, ViewGroup viewgroup, LayoutInflater layoutinflater, com.etermax.chat.ui.f f1)
    {
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[h.values().length];
                try
                {
                    a[h.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[h.d.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[h.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[h.b.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        ViewGroup viewgroup1;
        f f2;
        TextView textview;
        ImageView imageview;
        if (view == null)
        {
            viewgroup1 = (ViewGroup)layoutinflater.inflate(k.list_item_simple_text_out, viewgroup, false);
        } else
        {
            viewgroup1 = (ViewGroup)view;
        }
        if (!(f1 instanceof f)) goto _L2; else goto _L1
_L1:
        f2 = (f)f1;
        textview = (TextView)viewgroup1.findViewById(i.tv_message);
        textview.setText(c.a(viewgroup1.getContext(), f2.c()));
        imageview = (ImageView)viewgroup1.findViewById(i.tick_message);
        if (imageview == null) goto _L4; else goto _L3
_L3:
        _cls1.a[f2.d().ordinal()];
        JVM INSTR tableswitch 1 4: default 124
    //                   1 265
    //                   2 276
    //                   3 276
    //                   4 287;
           goto _L5 _L6 _L7 _L7 _L8
_L5:
        break; /* Loop/switch isn't completed */
_L8:
        break MISSING_BLOCK_LABEL_287;
_L4:
        String s;
        if (f2.g() == com.etermax.chat.a.g.c || f2.g() == com.etermax.chat.a.g.d)
        {
            a(((View) (textview)), com.etermax.h.msg_out);
        } else
        {
            a(((View) (textview)), com.etermax.h.msg_out_2);
        }
        if (f2.g() == com.etermax.chat.a.g.a)
        {
            viewgroup1.setPadding((int)b.b(a, 5), (int)b.b(a, 10), (int)b.b(a, 5), 0);
        } else
        {
            viewgroup1.setPadding((int)b.b(a, 5), 0, (int)b.b(a, 5), 0);
        }
        s = (new SimpleDateFormat("HH:mm")).format(f2.f());
        ((TextView)viewgroup1.findViewById(i.hour_message)).setText((new StringBuilder()).append("").append(s).toString());
_L2:
        return viewgroup1;
_L6:
        imageview.setImageResource(com.etermax.h.chat_icon_reloj);
          goto _L4
_L7:
        imageview.setImageResource(com.etermax.h.chat_icon_check);
          goto _L4
        imageview.setImageResource(com.etermax.h.chat_icon_i);
          goto _L4
    }
}
