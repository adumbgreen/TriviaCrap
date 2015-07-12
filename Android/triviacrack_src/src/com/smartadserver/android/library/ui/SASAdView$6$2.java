// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.graphics.Rect;
import android.view.View;
import com.smartadserver.android.library.controller.a;
import com.smartadserver.android.library.h.b;
import com.smartadserver.android.library.h.c;
import java.net.MalformedURLException;
import java.net.URL;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASAdView, g

class a
    implements Runnable
{

    final eight a;

    public void run()
    {
        a.a.g.a.a(a.a.getWidth(), a.a.getHeight());
    }

    a(a a1)
    {
        a = a1;
        super();
    }

    // Unreferenced inner class com/smartadserver/android/library/ui/SASAdView$6

/* anonymous class */
    class SASAdView._cls6
        implements Runnable
    {

        final String a;
        final int b;
        final int c;
        final int d;
        final int e;
        final boolean f;
        final boolean g;
        final boolean h;
        final SASAdView i;

        public void run()
        {
            int j;
            int k;
            android.widget.FrameLayout.LayoutParams layoutparams;
            boolean flag1;
            android.widget.FrameLayout framelayout;
            com.smartadserver.android.library.d.a a1 = i.l;
            boolean flag = false;
            if (a1 != null)
            {
                flag = i.l.f();
            }
            if (a != null && !com.smartadserver.android.library.ui.SASAdView.a(i) && i.k.d() || com.smartadserver.android.library.ui.SASAdView.a(i) && flag)
            {
                i.m = true;
            }
            if (b == -1)
            {
                j = -1;
            } else
            {
                j = b;
            }
            if (c == -1)
            {
                k = -1;
            } else
            {
                k = c;
            }
            layoutparams = new android.widget.FrameLayout.LayoutParams(j, k);
            if (i.k.getVisibility() == 8)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            framelayout = i.getExpandParentView();
            if (b != -1 || c != -1) goto _L2; else goto _L1
_L1:
            if (!com.smartadserver.android.library.ui.SASAdView.a(i))
            {
                com.smartadserver.android.library.ui.SASAdView.a(i, SASAdView.d(i));
            }
            if (!com.smartadserver.android.library.ui.SASAdView.a(i))
            {
                return;
            }
            break MISSING_BLOCK_LABEL_841;
_L2:
            new Rect();
            Rect rect = new Rect();
            framelayout.getGlobalVisibleRect(rect);
            rect.top = rect.top + framelayout.getPaddingTop();
            rect.bottom = rect.bottom - framelayout.getPaddingBottom();
            rect.left = rect.left + framelayout.getPaddingLeft();
            rect.right = rect.right - framelayout.getPaddingRight();
            int ai[] = new int[2];
            i.getLocationOnScreen(ai);
            Rect rect1 = i.getDefaultBounds();
            rect1.top = rect1.top + rect.top;
            rect1.left = rect1.left + rect.left;
            int l = d;
            int i1 = e;
            int j1;
            int k1;
            int l1;
            int i2;
            int j2;
            if (f)
            {
                j1 = com.smartadserver.android.library.ui.SASAdView.b(i);
            } else
            {
                j1 = 5;
            }
            if (!g)
            {
                double d1 = 1.0D;
                if (j > 0)
                {
                    d1 = Math.min(d1, (double)rect.width() / (double)j);
                }
                double d2;
                int i3;
                int j3;
                if (k > 0)
                {
                    d2 = Math.min(d1, (double)(rect.height() - i.getNeededTopPadding()) / (double)k);
                } else
                {
                    d2 = d1;
                }
                if (d2 < 1.0D)
                {
                    byte byte0;
                    int k2;
                    int l2;
                    android.view.ViewGroup.LayoutParams layoutparams1;
                    android.widget.RelativeLayout.LayoutParams layoutparams2;
                    MalformedURLException malformedurlexception;
                    if (j > 0)
                    {
                        j3 = (int)(d2 * (double)j);
                    } else
                    {
                        j3 = j;
                    }
                    if (k > 0)
                    {
                        k = (int)(d2 * (double)k);
                    }
                    i.g.a.a("Resize properties are wider than max size but offscreen is not allowed => cropping", null);
                    i3 = k;
                } else
                {
                    i3 = k;
                    j3 = j;
                }
                if (j3 > 0)
                {
                    l1 = Math.min(Math.max(l, -rect1.left), rect.width() - j3 - rect1.left);
                } else
                {
                    l1 = l;
                }
                if (i3 > 0)
                {
                    j2 = Math.min(Math.max(i1, -(rect1.top - (rect.top + i.getNeededTopPadding()))), (rect.height() + rect.top) - i3 - rect1.top);
                    k1 = i3;
                    i2 = j3;
                } else
                {
                    j2 = i1;
                    i2 = j3;
                    k1 = i3;
                }
            } else
            {
                k1 = k;
                l1 = l;
                i2 = j;
                j2 = i1;
            }
            layoutparams.width = i2;
            layoutparams.height = k1;
            if ((j1 & 2) > 0)
            {
                layoutparams.bottomMargin = j2 + (rect.bottom - rect1.bottom);
                byte0 = 80;
            } else
            {
                layoutparams.topMargin = j2 + (rect1.top - rect.top);
                byte0 = 48;
            }
            if ((j1 & 4) <= 0 && i2 >= 0) goto _L4; else goto _L3
_L3:
            k2 = byte0 | 3;
            layoutparams.leftMargin = l1 + (rect1.left - rect.left);
_L5:
            layoutparams.gravity = k2;
            if (flag1)
            {
                com.smartadserver.android.library.ui.SASAdView.a(i, layoutparams);
            } else
            {
                com.smartadserver.android.library.ui.SASAdView.c(i).height = layoutparams.height;
                com.smartadserver.android.library.ui.SASAdView.c(i).width = layoutparams.width;
            }
            if (true) goto _L1; else goto _L4
_L4:
            if ((0x10 & com.smartadserver.android.library.ui.SASAdView.b(i)) > 0)
            {
                k2 = byte0 | 5;
                layoutparams.rightMargin = l1 + (rect.right - rect1.right);
            } else
            {
                k2 = byte0 | 3;
                layoutparams.leftMargin = l1 + (rect1.centerX() - i2 / 2 - -rect.left);
            }
              goto _L5
            l2 = i.getNeededTopPadding();
            if (f)
            {
                i.setPadding(0, l2, 0, 0);
            }
            layoutparams1 = i.getLayoutParams();
            layoutparams2 = new android.widget.RelativeLayout.LayoutParams(layoutparams1.width, layoutparams1.height);
            if (flag1)
            {
                i.setLayoutParams(layoutparams);
            }
            if (a != null)
            {
                if (flag1)
                {
                    i.j.setLayoutParams(layoutparams2);
                    i.k.setVisibility(0);
                }
                if (!i.k.d())
                {
                    try
                    {
                        (new SASAdView._cls6._cls1(new URL(a))).start();
                    }
                    // Misplaced declaration of an exception variable
                    catch (MalformedURLException malformedurlexception)
                    {
                        i.k.a(a);
                    }
                } else
                {
                    i.k.a(a);
                }
            }
            if (h)
            {
                SASAdView.e(i).setVisibility(0);
            }
            i.post(new SASAdView._cls6._cls2(this));
            return;
        }

            
            {
                i = sasadview;
                a = s;
                b = j;
                c = k;
                d = l;
                e = i1;
                f = flag;
                g = flag1;
                h = flag2;
                super();
            }

        // Unreferenced inner class com/smartadserver/android/library/ui/SASAdView$6$1

/* anonymous class */
        class SASAdView._cls6._cls1 extends Thread
        {

            final URL a;
            final SASAdView._cls6 b;

            public void run()
            {
                String as[] = new String[1];
                String s = com.smartadserver.android.library.h.b.a(a, as);
                String s1;
                if (as[0] != null)
                {
                    s1 = com.smartadserver.android.library.h.c.f(as[0]);
                } else
                {
                    s1 = com.smartadserver.android.library.h.c.f(b.a);
                }
                if (s != null && s.contains("\"mraid.js\""))
                {
                    s = s.replace("\"mraid.js\"", (new StringBuilder()).append("\"").append(com.smartadserver.android.library.controller.mraid.a.a).append("\"").toString());
                }
                b.i.a(new SASAdView._cls6._cls1._cls1(this, s1, s));
            }

                    
                    {
                        b = SASAdView._cls6.this;
                        a = url;
                        super();
                    }
        }


        // Unreferenced inner class com/smartadserver/android/library/ui/SASAdView$6$1$1

/* anonymous class */
        class SASAdView._cls6._cls1._cls1
            implements Runnable
        {

            final String a;
            final String b;
            final SASAdView._cls6._cls1 c;

            public void run()
            {
                c.b.i.k.a(a, b, "text/html", "UTF-8", null);
            }

                    
                    {
                        c = _pcls1;
                        a = s;
                        b = s1;
                        super();
                    }
        }

    }

}
