// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.Button;

// Referenced classes of package com.admarvel.android.ads:
//            w

public class a extends Button
{

    final w a;

    public void setBackgroundDrawable(Drawable drawable)
    {
        class a extends LayerDrawable
        {

            protected int a;
            protected ColorFilter b;
            final w.a c;

            public boolean isStateful()
            {
                return true;
            }

            protected boolean onStateChange(int ai[])
            {
                boolean flag = false;
                int i = ai.length;
                int j = 0;
                boolean flag1 = false;
                while (j < i) 
                {
                    int k = ai[j];
                    if (k == 0x101009e)
                    {
                        flag1 = true;
                    } else
                    if (k == 0x10100a7)
                    {
                        flag = true;
                    }
                    j++;
                }
                if (flag1 && flag)
                {
                    setColorFilter(b);
                } else
                if (!flag1)
                {
                    setColorFilter(null);
                    setAlpha(a);
                } else
                {
                    setColorFilter(null);
                }
                invalidateSelf();
                return super.onStateChange(ai);
            }

            public a(Drawable drawable)
            {
                c = w.a.this;
                super(new Drawable[] {
                    drawable
                });
                a = 100;
                b = new LightingColorFilter(0x3980c2, 1);
            }
        }

        super.setBackgroundDrawable(new a(drawable));
    }

    public wable(w w, Context context)
    {
        a = w;
        super(context);
    }
}
