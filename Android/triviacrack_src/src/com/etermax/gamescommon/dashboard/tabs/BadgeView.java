// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.tabs;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.etermax.tools.widget.CustomFontTextView;
import java.util.Observable;
import java.util.Observer;

// Referenced classes of package com.etermax.gamescommon.dashboard.tabs:
//            a

public class BadgeView extends CustomFontTextView
    implements Observer
{

    protected a a;
    private String b;

    public BadgeView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = null;
    }

    public BadgeView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = null;
    }

    static String a(BadgeView badgeview)
    {
        return badgeview.b;
    }

    public void setNotificationKey(String s)
    {
        b = s;
    }

    public void update(Observable observable, Object obj)
    {
        if (TextUtils.isEmpty(b))
        {
            throw new RuntimeException("BadgeView necesita el notificationKey con el cual obtener las notificaciones del BadgeNotificationManager.");
        } else
        {
            post(new Runnable() {

                final BadgeView a;

                public void run()
                {
                    int i = 99;
                    int j = a.a.a(BadgeView.a(a));
                    if (j > 0)
                    {
                        a.setVisibility(0);
                        if (j <= i)
                        {
                            i = j;
                        }
                        a.setText((new StringBuilder()).append("").append(i).toString());
                    } else
                    {
                        a.setVisibility(8);
                    }
                    a.invalidate();
                }

            
            {
                a = BadgeView.this;
                super();
            }
            });
            return;
        }
    }
}
