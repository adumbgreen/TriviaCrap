// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ViewSwitcher;
import com.b.a.aa;
import com.b.a.ak;
import com.b.a.f;
import com.etermax.gamescommon.k;
import com.etermax.h;
import com.etermax.i;

// Referenced classes of package com.etermax.gamescommon.dashboard:
//            c

public class b
{

    public b()
    {
    }

    private Drawable a(Context context)
    {
        return context.getResources().getDrawable(h.dashboard_item_default_icon);
    }

    private void a(ViewSwitcher viewswitcher)
    {
        viewswitcher.setDisplayedChild(1);
        viewswitcher.findViewById(i.tile_default).setBackgroundDrawable(a(viewswitcher.getContext()));
    }

    private void b(ViewSwitcher viewswitcher)
    {
        ImageView imageview = (ImageView)viewswitcher.findViewById(i.tile_image_icon);
        aa.a(imageview.getContext()).a(imageview);
        viewswitcher.setDisplayedChild(1);
        View view = viewswitcher.findViewById(i.tile_default);
        if (view instanceof c)
        {
            ((c)view).a();
            return;
        } else
        {
            a(viewswitcher);
            return;
        }
    }

    private void b(ViewSwitcher viewswitcher, String s, String s1)
    {
        boolean flag;
        String s2;
        flag = TextUtils.isEmpty(s);
        s2 = null;
        if (flag) goto _L2; else goto _L1
_L1:
        String s3;
        String s4;
        s3 = (new StringBuilder()).append("https://graph.facebook.com/").append(s).append("/picture?width=%s&height=%s").toString();
        s4 = "120";
        if (viewswitcher.getWidth() < 720) goto _L4; else goto _L3
_L3:
        s4 = "720";
_L6:
        s2 = String.format(s3, new Object[] {
            s4, s4
        });
_L2:
        d(viewswitcher, s2, s1);
        return;
_L4:
        if (viewswitcher.getWidth() >= 250)
        {
            s4 = "250";
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void c(ViewSwitcher viewswitcher, String s, String s1)
    {
        boolean flag = TextUtils.isEmpty(s);
        String s2 = null;
        if (!flag)
        {
            StringBuilder stringbuilder = new StringBuilder();
            String s3;
            String s4;
            String s5;
            if (s.startsWith("http"))
            {
                s3 = "";
            } else
            {
                s3 = "http://";
            }
            s4 = stringbuilder.append(s3).append(s).toString();
            if (viewswitcher.getWidth() > 200)
            {
                s5 = (new StringBuilder()).append(s4).append("_l").toString();
            } else
            if (viewswitcher.getWidth() > 160)
            {
                s5 = (new StringBuilder()).append(s4).append("_p").toString();
            } else
            {
                s5 = (new StringBuilder()).append(s4).append("_t").toString();
            }
            s2 = (new StringBuilder()).append(s5).append(".jpg").toString();
        }
        d(viewswitcher, s2, s1);
    }

    private void d(ViewSwitcher viewswitcher, String s, String s1)
    {
        if (!TextUtils.isEmpty(s))
        {
            b(viewswitcher, s1);
            ImageView imageview = (ImageView)viewswitcher.findViewById(i.tile_image_icon);
            aa.a(imageview.getContext()).a(s).b().a(imageview, new f(viewswitcher, s1) {

                final ViewSwitcher a;
                final String b;
                final b c;

                public void a()
                {
                    a.setDisplayedChild(0);
                }

                public void b()
                {
                    c.a(a, b);
                }

            
            {
                c = b.this;
                a = viewswitcher;
                b = s;
                super();
            }
            });
            return;
        } else
        {
            a(viewswitcher, s1);
            return;
        }
    }

    public void a(ViewSwitcher viewswitcher, k k1)
    {
        a(viewswitcher, k1, k1.getName());
    }

    public void a(ViewSwitcher viewswitcher, k k1, String s)
    {
        if (k1.getId().longValue() == 0L)
        {
            b(viewswitcher);
            return;
        }
        if (!TextUtils.isEmpty(k1.getPhotoUrl()))
        {
            c(viewswitcher, k1.getPhotoUrl(), s);
            return;
        }
        boolean flag;
        String s1;
        if (k1.getFacebookId() != null && !TextUtils.isEmpty(k1.getFacebookId()) && k1.isFbShowPicture())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            s1 = k1.getFacebookId();
        } else
        {
            s1 = null;
        }
        b(viewswitcher, s1, s);
    }

    public void a(ViewSwitcher viewswitcher, String s)
    {
        ImageView imageview = (ImageView)viewswitcher.findViewById(i.tile_image_icon);
        aa.a(imageview.getContext()).a(imageview);
        viewswitcher.setDisplayedChild(1);
        View view = viewswitcher.findViewById(i.tile_default);
        if (view instanceof c)
        {
            ((c)view).a(s);
            return;
        } else
        {
            a(viewswitcher);
            return;
        }
    }

    public void a(ViewSwitcher viewswitcher, String s, String s1)
    {
        b(viewswitcher, s, s1);
    }

    public void b(ViewSwitcher viewswitcher, String s)
    {
        viewswitcher.setDisplayedChild(1);
        View view = viewswitcher.findViewById(i.tile_default);
        if (view instanceof c)
        {
            ((c)view).b(s);
            return;
        } else
        {
            a(viewswitcher);
            return;
        }
    }
}
