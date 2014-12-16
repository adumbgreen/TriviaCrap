// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.app.Dialog;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.b.a.aa;
import com.b.a.ak;
import com.b.a.f;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.user.c;
import com.etermax.p;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            f, g

public class e extends DialogFragment
{

    k a;
    ImageView b;
    ImageView c;
    ProgressBar d;

    public e()
    {
    }

    public static e a(k k1)
    {
        return f.b().a(k1).a();
    }

    protected void a()
    {
        Display display = getActivity().getWindowManager().getDefaultDisplay();
        int i;
        String s;
        String s1;
        if (android.os.Build.VERSION.SDK_INT >= 13)
        {
            Point point = new Point();
            display.getSize(point);
            i = point.x;
        } else
        {
            i = display.getWidth();
        }
        if (!TextUtils.isEmpty(a.getPhotoUrl()))
        {
            s1 = com.etermax.gamescommon.user.c.b(a.getPhotoUrl(), i);
            s = com.etermax.gamescommon.user.c.b(a.getPhotoUrl(), 0);
        } else
        if (a.isFbShowPicture() && !TextUtils.isEmpty(a.getFacebookId()))
        {
            s1 = com.etermax.gamescommon.user.c.a(a.getFacebookId(), i);
            s = com.etermax.gamescommon.user.c.a(a.getFacebookId(), 0);
        } else
        {
            s = null;
            s1 = null;
        }
        if (!TextUtils.isEmpty(s1))
        {
            aa.a(getActivity()).a(s).b().a(b, new f(s1) {

                final String a;
                final e b;

                public void a()
                {
                    aa.a(b.getActivity()).a(a).b().a(b.c, new f(this) {

                        final _cls1 a;

                        public void a()
                        {
                            a.b.b.setVisibility(4);
                            a.b.d.setVisibility(4);
                        }

                        public void b()
                        {
                            a.b.d.setVisibility(4);
                        }

            
            {
                a = _pcls1;
                super();
            }
                    });
                }

                public void b()
                {
                    b.dismiss();
                }

            
            {
                b = e.this;
                a = s;
                super();
            }
            });
            return;
        } else
        {
            dismiss();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setStyle(2, getTheme());
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        return new Dialog(getActivity(), p.Theme_BigPictureDialog);
    }
}
