// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.pulltorefresh;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.etermax.o;

// Referenced classes of package com.etermax.tools.widget.pulltorefresh:
//            b, f, e, c

public abstract class PullToRefreshBase extends LinearLayout
{

    protected float a;
    protected boolean b;
    protected int c;
    protected int d;
    View e;
    protected int f;
    private float g;
    private float h;
    private int i;
    private boolean j;
    private boolean k;
    private b l;
    private b m;
    private final Handler n = new Handler();
    private e o;
    private f p;

    public PullToRefreshBase(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = false;
        c = 0;
        d = 1;
        j = true;
        k = true;
        b(context, attributeset);
    }

    private boolean g()
    {
        int i1;
        int j1;
        i1 = getScrollY();
        switch (i)
        {
        default:
            j1 = Math.round(Math.min(a - h, 0.0F) / 2.0F);
            break;

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_106;
        }
_L1:
        setHeaderScroll(j1);
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        if (c == 0 && f < Math.abs(j1))
        {
            c = 1;
            switch (i)
            {
            default:
                return true;

            case 2: // '\002'
                m.b();
                return true;

            case 1: // '\001'
                l.b();
                return true;
            }
        }
        break MISSING_BLOCK_LABEL_146;
        j1 = Math.round(Math.max(a - h, 0.0F) / 2.0F);
          goto _L1
        if (c == 1 && f >= Math.abs(j1))
        {
            c = 0;
            switch (i)
            {
            default:
                return true;

            case 1: // '\001'
                l.d();
                return true;

            case 2: // '\002'
                m.d();
                break;
            }
            return true;
        }
        boolean flag;
        if (i1 != j1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    private boolean h()
    {
        d;
        JVM INSTR tableswitch 1 3: default 32
    //                   1 34
    //                   2 39
    //                   3 44;
           goto _L1 _L2 _L3 _L4
_L1:
        return false;
_L2:
        return a();
_L3:
        return b();
_L4:
        if (b() || a())
        {
            return true;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    protected abstract View a(Context context, AttributeSet attributeset);

    protected final void a(int i1)
    {
        if (p != null)
        {
            p.a();
        }
        if (getScrollY() != i1)
        {
            p = new f(this, n, getScrollY(), i1);
            n.post(p);
        }
    }

    protected void a(Context context, View view)
    {
        addView(view, new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0F));
    }

    protected void a(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        if (layoutparams == null)
        {
            layoutparams = new android.view.ViewGroup.LayoutParams(-1, -2);
        }
        int i1 = ViewGroup.getChildMeasureSpec(0, 0, layoutparams.width);
        int j1 = layoutparams.height;
        int k1;
        if (j1 > 0)
        {
            k1 = android.view.View.MeasureSpec.makeMeasureSpec(j1, 0x40000000);
        } else
        {
            k1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(i1, k1);
    }

    protected abstract boolean a();

    protected final boolean a(MotionEvent motionevent)
    {
        if (c() && j)
        {
            return true;
        }
        if (motionevent.getAction() == 0 && motionevent.getEdgeFlags() != 0)
        {
            return false;
        }
        switch (motionevent.getAction())
        {
        default:
            return false;

        case 2: // '\002'
            h = motionevent.getY();
            g();
            return true;

        case 1: // '\001'
        case 3: // '\003'
            b = false;
            break;
        }
        if (c == 1 && o != null)
        {
            setRefreshingInternal(true);
            o.a();
            return true;
        } else
        {
            a(0);
            return true;
        }
    }

    protected void b(Context context, AttributeSet attributeset)
    {
        setOrientation(1);
        d = 1;
        e = a(context, attributeset);
        a(context, e);
        String s = context.getString(o.pull_down_refresh);
        String s1 = context.getString(o.loading);
        String s2 = context.getString(o.release_refresh);
        if (d == 1 || d == 3)
        {
            l = new b(context, 1, s2, s, s1);
            addView(l, 0, new android.widget.LinearLayout.LayoutParams(-1, -2));
            a(l);
            f = l.getMeasuredHeight();
        }
        if (d == 2 || d == 3)
        {
            m = new b(context, 2, s2, s, s1);
            addView(m, new android.widget.LinearLayout.LayoutParams(-1, -2));
            a(m);
            f = m.getMeasuredHeight();
        }
        d;
        JVM INSTR tableswitch 2 3: default 224
    //                   2 272
    //                   3 253;
           goto _L1 _L2 _L3
_L1:
        setPadding(0, -f, 0, 0);
_L5:
        if (d != 3)
        {
            i = d;
        }
        return;
_L3:
        setPadding(0, -f, 0, -f);
        continue; /* Loop/switch isn't completed */
_L2:
        setPadding(0, 0, 0, -f);
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected abstract boolean b();

    protected boolean b(MotionEvent motionevent)
    {
        if (k) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        float f1 = motionevent.getY();
        float f2 = f1 - h;
        float f3 = Math.abs(motionevent.getX() - g);
        g = motionevent.getX();
        h = f1;
        switch (motionevent.getAction())
        {
        default:
            return false;

        case 2: // '\002'
            break;
        }
        if (!h() || Math.abs(f2) <= f3)
        {
            continue; /* Loop/switch isn't completed */
        }
        if ((d == 1 || d == 3) && f2 >= 1E-04F && a())
        {
            if (d == 3)
            {
                i = 1;
                return true;
            }
            break; /* Loop/switch isn't completed */
        }
        if (d != 2 && d != 3 || f2 > 1E-04F || !b())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (d == 3)
        {
            i = 2;
        }
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public final boolean c()
    {
        return c == 2 || c == 3;
    }

    public void d()
    {
        if (c != 0)
        {
            f();
        }
    }

    public final void e()
    {
        setRefreshing(true);
    }

    protected void f()
    {
        c = 0;
        b = false;
        if (l != null)
        {
            l.a();
        }
        if (m != null)
        {
            m.a();
        }
        a(0);
    }

    public final View getAdapterView()
    {
        return e;
    }

    protected final int getCurrentMode()
    {
        return i;
    }

    protected final b getFooterLayout()
    {
        return m;
    }

    protected final int getHeaderHeight()
    {
        return f;
    }

    protected final b getHeaderLayout()
    {
        return l;
    }

    protected final int getMode()
    {
        return d;
    }

    public final View getRefreshableView()
    {
        return e;
    }

    public final void setDisableScrollingWhileRefreshing(boolean flag)
    {
        j = flag;
    }

    protected final void setHeaderScroll(int i1)
    {
        scrollTo(0, i1);
    }

    public void setLoadingAnimation(c c1)
    {
        if (l != null)
        {
            l.setLoadingListener(c1);
        }
        if (m != null)
        {
            m.setLoadingListener(c1);
        }
    }

    public void setLongClickable(boolean flag)
    {
        getRefreshableView().setLongClickable(flag);
    }

    public final void setOnRefreshListener(e e1)
    {
        o = e1;
    }

    public void setPullLabel(String s)
    {
        if (l != null)
        {
            l.setPullLabel(s);
        }
        if (m != null)
        {
            m.setPullLabel(s);
        }
    }

    public final void setPullToRefreshEnabled(boolean flag)
    {
        k = flag;
    }

    public final void setRefreshing(boolean flag)
    {
        if (!c())
        {
            setRefreshingInternal(flag);
            c = 3;
        }
    }

    protected void setRefreshingInternal(boolean flag)
    {
        c = 2;
        if (l != null)
        {
            l.c();
        }
        if (m != null)
        {
            m.c();
        }
        if (flag)
        {
            int i1;
            if (i == 1)
            {
                i1 = -f;
            } else
            {
                i1 = f;
            }
            a(i1);
        }
    }

    public void setRefreshingLabel(String s)
    {
        if (l != null)
        {
            l.setRefreshingLabel(s);
        }
        if (m != null)
        {
            m.setRefreshingLabel(s);
        }
    }

    public void setReleaseLabel(String s)
    {
        if (l != null)
        {
            l.setReleaseLabel(s);
        }
        if (m != null)
        {
            m.setReleaseLabel(s);
        }
    }
}
