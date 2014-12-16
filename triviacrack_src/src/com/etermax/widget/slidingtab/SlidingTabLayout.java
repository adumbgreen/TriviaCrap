// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget.slidingtab;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.q;

// Referenced classes of package com.etermax.widget.slidingtab:
//            e, b, d, a, 
//            c

public class SlidingTabLayout extends HorizontalScrollView
{

    private int a;
    private boolean b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private ViewPager h;
    private android.support.v4.view.ViewPager.OnPageChangeListener i;
    private final e j;

    public SlidingTabLayout(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeset, int k)
    {
        super(context, attributeset, k);
        b = false;
        a(context, attributeset);
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        c = (int)(24F * getResources().getDisplayMetrics().density);
        j = new e(context, a);
        j.getLayoutParams();
        addView(j, -1, -2);
    }

    static e a(SlidingTabLayout slidingtablayout)
    {
        return slidingtablayout.j;
    }

    private void a(int k, int l)
    {
        int i1 = j.getChildCount();
        View view;
        if (i1 != 0 && k >= 0 && k < i1)
        {
            if ((view = j.getChildAt(k)) != null)
            {
                int j1 = l + view.getLeft();
                if (k > 0 || l > 0)
                {
                    j1 -= c;
                }
                if (!b)
                {
                    scrollTo(j1, 0);
                    return;
                }
            }
        }
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.SlidingTabLayout);
        a = typedarray.getInt(0, 1);
        b = typedarray.getBoolean(1, false);
        typedarray.recycle();
    }

    static void a(SlidingTabLayout slidingtablayout, int k, int l)
    {
        slidingtablayout.a(k, l);
    }

    static android.support.v4.view.ViewPager.OnPageChangeListener b(SlidingTabLayout slidingtablayout)
    {
        return slidingtablayout.i;
    }

    static ViewPager c(SlidingTabLayout slidingtablayout)
    {
        return slidingtablayout.h;
    }

    protected TextView a(Context context)
    {
        PagerAdapter pageradapter = h.getAdapter();
        TextView textview = new TextView(context);
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        if (b)
        {
            textview.setWidth(displaymetrics.widthPixels / pageradapter.getCount());
        }
        textview.setGravity(17);
        textview.setTextSize(2, 12F);
        textview.setTypeface(Typeface.DEFAULT_BOLD);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            TypedValue typedvalue = new TypedValue();
            getContext().getTheme().resolveAttribute(0x101030e, typedvalue, true);
            textview.setBackgroundResource(typedvalue.resourceId);
        }
        if (android.os.Build.VERSION.SDK_INT < 14);
        int k = (int)(16F * getResources().getDisplayMetrics().density);
        textview.setPadding(k, k, k, k);
        return textview;
    }

    protected void a()
    {
        PagerAdapter pageradapter;
        b b1;
        int k;
        pageradapter = h.getAdapter();
        b1 = new b(this);
        k = 0;
_L10:
        if (k >= pageradapter.getCount())
        {
            break MISSING_BLOCK_LABEL_392;
        }
        TextView textview;
        Object obj;
        ViewGroup viewgroup;
        ImageView imageview;
        View view;
        if (d != 0)
        {
            View view1 = LayoutInflater.from(getContext()).inflate(d, j, false);
            view1.setTag((new StringBuilder()).append("tab_").append(k).toString());
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            if (b)
            {
                view1.setLayoutParams(new android.view.ViewGroup.LayoutParams(displaymetrics.widthPixels / pageradapter.getCount(), -2));
            }
            textview = (TextView)view1.findViewById(e);
            ImageView imageview1 = (ImageView)view1.findViewById(f);
            viewgroup = (ViewGroup)view1.findViewById(g);
            obj = view1;
            imageview = imageview1;
        } else
        {
            textview = null;
            obj = null;
            viewgroup = null;
            imageview = null;
        }
        if (obj == null)
        {
            obj = a(getContext());
        }
        if (textview == null && android/widget/TextView.isInstance(obj))
        {
            textview = (TextView)obj;
        }
        if (!TextUtils.isEmpty(pageradapter.getPageTitle(k)))
        {
            textview.setText(pageradapter.getPageTitle(k));
            textview.setVisibility(0);
        } else
        {
            textview.setVisibility(8);
        }
        if (imageview == null || !(pageradapter instanceof d)) goto _L2; else goto _L1
_L1:
        imageview.setImageDrawable(((d)pageradapter).a(k));
_L6:
        if (viewgroup == null || !(pageradapter instanceof d)) goto _L4; else goto _L3
_L3:
        view = ((d)pageradapter).b(k);
        if (view != null)
        {
            viewgroup.addView(view);
        }
_L8:
        ((View) (obj)).setOnClickListener(b1);
        j.addView(((View) (obj)));
        k++;
        continue; /* Loop/switch isn't completed */
_L2:
        if (imageview == null || (pageradapter instanceof d)) goto _L6; else goto _L5
_L5:
        throw new RuntimeException("Must use SlidingTabPagerAdapter when setCustomTabView to have tabs with images");
_L4:
        if (viewgroup == null || (pageradapter instanceof d)) goto _L8; else goto _L7
_L7:
        throw new RuntimeException("Must use SlidingTabPagerAdapter when setCustomTabView to have tabs with badges");
        return;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void a(int k, int l, int i1)
    {
        d = k;
        e = l;
        f = i1;
    }

    public e getTabStrip()
    {
        return j;
    }

    public ViewPager getViewPager()
    {
        return h;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (h != null)
        {
            a(h.getCurrentItem(), 0);
        }
    }

    public void setBottomBorderThickness(float f1)
    {
        j.setBottomBorderThickness(f1);
    }

    public void setCustomTabColorizer(c c1)
    {
        j.setCustomTabColorizer(c1);
    }

    public transient void setDividerColors(int ai[])
    {
        j.setDividerColors(ai);
    }

    public void setOnPageChangeListener(android.support.v4.view.ViewPager.OnPageChangeListener onpagechangelistener)
    {
        i = onpagechangelistener;
    }

    public transient void setSelectedIndicatorColors(int ai[])
    {
        j.setSelectedIndicatorColors(ai);
    }

    public void setSelectedIndicatorThickness(int k)
    {
        j.setSelectedIndicatorThickness(k);
    }

    public void setViewPager(ViewPager viewpager)
    {
        j.removeAllViews();
        h = viewpager;
        if (viewpager != null)
        {
            viewpager.setOnPageChangeListener(new a(this));
            a();
        }
    }
}
