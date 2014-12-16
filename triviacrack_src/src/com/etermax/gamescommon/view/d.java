// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.etermax.i;
import com.etermax.k;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.view:
//            b, FlagsLayout

public class d
{

    ListView a;
    RelativeLayout b;
    View c;
    FlagsLayout d;
    PopupWindow e;
    b f;
    private final Context g;
    private final LayoutInflater h;
    private boolean i;

    public d(Context context, View view, FlagsLayout flagslayout, List list)
    {
        e = null;
        i = false;
        c = view;
        g = context;
        h = ((Activity)g).getLayoutInflater();
        b = (RelativeLayout)h.inflate(k.flags_list_layout, null);
        b.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-2, -2));
        a = (ListView)b.findViewById(i.list_languages);
        d = flagslayout;
        f = new b(list, flagslayout);
        a.setAdapter(f);
    }

    static void a(d d1)
    {
        d1.d();
    }

    static boolean a(d d1, boolean flag)
    {
        d1.i = flag;
        return flag;
    }

    private void d()
    {
        char c1;
        if (i)
        {
            c1 = '\377';
        } else
        {
            c1 = '\245';
        }
        ((ImageView)d.findViewById(i.flag_more_01)).setAlpha(c1);
        ((ImageView)d.findViewById(i.flag_more_02)).setAlpha(c1);
        ((ImageView)d.findViewById(i.flag_more_03)).setAlpha(c1);
        ((ImageView)d.findViewById(i.flag_more_04)).setAlpha(c1);
    }

    private boolean e()
    {
        return Build.MANUFACTURER.equals("Amazon") && (Build.MODEL.equals("Kindle Fire") || Build.MODEL.startsWith("KF"));
    }

    public void a()
    {
        i = true;
        d();
        e.setFocusable(false);
        e.setTouchable(true);
        e.setOutsideTouchable(true);
        e.setBackgroundDrawable(new ColorDrawable(0));
        e.setHeight(-2);
        e.setOnDismissListener(new android.widget.PopupWindow.OnDismissListener() {

            final d a;

            public void onDismiss()
            {
                d.a(a, false);
                d.a(a);
            }

            
            {
                a = d.this;
                super();
            }
        });
    }

    public void a(List list)
    {
        f.a(list);
    }

    public void b()
    {
        b.measure(0, 0);
        int j = b.getMeasuredHeight();
        int ai[] = new int[2];
        c.getLocationInWindow(ai);
        Display display = ((WindowManager)g.getSystemService("window")).getDefaultDisplay();
        int l;
        if (e())
        {
            e = new PopupWindow(b, -1, display.getHeight() - ai[1] - 2 * c.getHeight());
        } else
        {
            e = new PopupWindow(b, -1, display.getHeight() - ai[1] - c.getHeight());
        }
        a();
        l = j / 4;
        e.showAtLocation(c, 0, -10 + ai[0], (j + ai[1]) - l);
    }

    public void c()
    {
        if (e != null)
        {
            e.dismiss();
            e = null;
        }
    }
}
