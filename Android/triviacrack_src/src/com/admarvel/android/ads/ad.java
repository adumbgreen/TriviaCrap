// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Handler;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.admarvel.android.util.AdMarvelBitmapDrawableUtils;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedHashMap;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelXMLReader, AdMarvelXMLElement, AdMarvelVideoActivity, AdMarvelInternalWebView, 
//            AdMarvelInterstitialAds, AdMarvelActivity, i, ac, 
//            ab, p

class ad extends LinearLayout
{

    static int a = 0x186a1;
    public boolean b;
    LinearLayout c;
    final String d;
    AdMarvelXMLReader e;
    AdMarvelXMLElement f;
    private final WeakReference g;
    private final WeakReference h;
    private boolean i;
    private boolean j;

    ad(p p1, AdMarvelVideoActivity admarvelvideoactivity, Context context, String s, String s1)
    {
        super(context);
        b = false;
        j = false;
        g = new WeakReference(admarvelvideoactivity);
        h = new WeakReference(p1);
        i = false;
        d = s1;
        setId(a);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        layoutparams.gravity = 16;
        setLayoutParams(layoutparams);
        setGravity(16);
        float f1 = TypedValue.applyDimension(1, 40F, getResources().getDisplayMetrics());
        ShapeDrawable shapedrawable = new ShapeDrawable(new RectShape());
        android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(-2, -1);
        layoutparams1.gravity = 3;
        android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, (int)TypedValue.applyDimension(1, 32F, getResources().getDisplayMetrics()));
        layoutparams2.addRule(5);
        android.widget.RelativeLayout.LayoutParams layoutparams3 = new android.widget.RelativeLayout.LayoutParams(-2, (int)TypedValue.applyDimension(1, 36F, getResources().getDisplayMetrics()));
        int k = (int)TypedValue.applyDimension(1, a(5F), getResources().getDisplayMetrics());
        layoutparams3.addRule(5);
        layoutparams3.setMargins(k, 0, k, 0);
        layoutparams2.setMargins(k, 0, k, 0);
        e = new AdMarvelXMLReader();
        e.parseXMLString(s);
        f = e.getParsedXMLData();
        if (f != null && f.c().containsKey("toolbar"))
        {
            AdMarvelXMLElement admarvelxmlelement = (AdMarvelXMLElement)((ArrayList)f.c().get("toolbar")).get(0);
            String s2;
            String s3;
            int l;
            if (admarvelxmlelement == null)
            {
                s2 = null;
            } else
            {
                s2 = (String)admarvelxmlelement.getAttributes().get("background");
            }
            if (s2 != null)
            {
                shapedrawable.getPaint().setColor(Color.parseColor(s2));
            } else
            {
                shapedrawable.getPaint().setColor(Color.parseColor("#3E3E3E"));
            }
            if (admarvelxmlelement == null)
            {
                s3 = null;
            } else
            {
                s3 = (String)admarvelxmlelement.getAttributes().get("alpha");
            }
            if (s3 != null)
            {
                l = Integer.parseInt(s3);
            } else
            {
                l = 175;
            }
            shapedrawable.setAlpha(l);
            setBackgroundDrawable(shapedrawable);
            if (admarvelxmlelement != null && admarvelxmlelement.c().containsKey("item"))
            {
                ArrayList arraylist = (ArrayList)admarvelxmlelement.c().get("item");
                int i1 = 0;
                while (i1 < arraylist.size()) 
                {
                    AdMarvelXMLElement admarvelxmlelement1 = (AdMarvelXMLElement)arraylist.get(i1);
                    String s4 = (String)admarvelxmlelement1.getAttributes().get("type");
                    String s5 = (String)admarvelxmlelement1.getAttributes().get("subtype");
                    if ("SystemItem".equalsIgnoreCase(s4))
                    {
                        if (!"UIBarButtonSystemItemFlexibleSpace".equalsIgnoreCase(s5) && !"UIBarButtonSystemItemFixedSpace".equalsIgnoreCase(s5))
                        {
                            a(context, layoutparams2, layoutparams1, admarvelxmlelement1, this);
                        }
                    } else
                    if ("Title".equalsIgnoreCase(s4))
                    {
                        b(context, layoutparams3, layoutparams1, admarvelxmlelement1, this);
                    } else
                    if ("Image".equalsIgnoreCase(s4))
                    {
                        c(context, layoutparams2, layoutparams1, admarvelxmlelement1, this);
                    } else
                    if ("Timer".equalsIgnoreCase(s4) && admarvelvideoactivity.k > 0)
                    {
                        j = true;
                    } else
                    if ("Toggle".equalsIgnoreCase(s4))
                    {
                        a(context, layoutparams3, layoutparams2, layoutparams1, admarvelxmlelement1, this);
                    }
                    i1++;
                }
            }
        }
        android.widget.RelativeLayout.LayoutParams layoutparams4 = new android.widget.RelativeLayout.LayoutParams(-1, (int)f1);
        layoutparams4.addRule(12);
        layoutparams4.addRule(3, AdMarvelInternalWebView.VIEW_ID);
        setLayoutParams(layoutparams4);
        if (j)
        {
            a(context, layoutparams3, layoutparams1);
        }
    }

    private float a(float f1)
    {
        return TypedValue.applyDimension(1, f1, getResources().getDisplayMetrics());
    }

    private void a(Context context, android.widget.RelativeLayout.LayoutParams layoutparams, android.widget.LinearLayout.LayoutParams layoutparams1)
    {
        LinearLayout linearlayout = new LinearLayout(context);
        linearlayout.setVisibility(4);
        android.widget.LinearLayout.LayoutParams layoutparams2 = new android.widget.LinearLayout.LayoutParams(-2, -1);
        layoutparams2.gravity = 5;
        linearlayout.setOrientation(0);
        layoutparams2.weight = 1.0F;
        layoutparams.addRule(15);
        linearlayout.setLayoutParams(layoutparams2);
        linearlayout.setTag((new StringBuilder()).append(d).append("TIMER_BUTTON_LAYOUT").toString());
        linearlayout.setClickable(false);
        linearlayout.addStatesFromChildren();
        linearlayout.setGravity(5);
        TextView textview = new TextView(context);
        android.widget.LinearLayout.LayoutParams layoutparams3 = new android.widget.LinearLayout.LayoutParams(-2, -1);
        layoutparams3.setMargins((int)a(5F), 0, (int)a(5F), 0);
        textview.setTextColor(Color.parseColor("#0e78b9"));
        textview.setLayoutParams(layoutparams);
        textview.setGravity(16);
        textview.setTypeface(Typeface.DEFAULT_BOLD);
        textview.setSingleLine(true);
        android.graphics.drawable.BitmapDrawable bitmapdrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable("time", getContext());
        ImageView imageview = new ImageView(context);
        imageview.setImageDrawable(bitmapdrawable);
        android.widget.LinearLayout.LayoutParams layoutparams4 = new android.widget.LinearLayout.LayoutParams((int)a(32F), (int)a(32F));
        layoutparams4.gravity = 16;
        linearlayout.addView(textview, layoutparams3);
        linearlayout.addView(imageview, layoutparams4);
        addView(linearlayout);
    }

    private void a(Context context, android.widget.RelativeLayout.LayoutParams layoutparams, android.widget.LinearLayout.LayoutParams layoutparams1, AdMarvelXMLElement admarvelxmlelement, ViewGroup viewgroup)
    {
        ShapeDrawable shapedrawable = new ShapeDrawable(new RectShape());
        shapedrawable.getPaint().setShader(new LinearGradient(0.0F, 0.0F, 0.0F, a(40F), Color.parseColor("#AAFFFFFF"), Color.parseColor("#AA3E3E3E"), android.graphics.Shader.TileMode.REPEAT));
        StateListDrawable statelistdrawable = new StateListDrawable();
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, shapedrawable);
        d d1 = new d(context, admarvelxmlelement, layoutparams1);
        if (d1.c == null)
        {
            return;
        }
        ImageView imageview = new ImageView(context);
        imageview.setLayoutParams(layoutparams);
        d1.setBackgroundDrawable(statelistdrawable);
        android.graphics.drawable.BitmapDrawable bitmapdrawable;
        if (d1.c.equalsIgnoreCase("done"))
        {
            bitmapdrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable("close", getContext());
            LinearLayout linearlayout = new LinearLayout(context);
            android.widget.LinearLayout.LayoutParams layoutparams2 = new android.widget.LinearLayout.LayoutParams((int)a(36F), (int)a(36F));
            layoutparams1.gravity = 53;
            linearlayout.addView(imageview, layoutparams2);
            imageview.setTag("ADM_VIDEO_SYSTEM_ICON_DONE_BUTTON");
            a(linearlayout);
        } else
        {
            layoutparams.addRule(15);
            bitmapdrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable(d1.c, getContext());
            d1.addView(imageview);
            viewgroup.addView(d1);
        }
        imageview.setImageDrawable(bitmapdrawable);
    }

    private void a(Context context, android.widget.RelativeLayout.LayoutParams layoutparams, android.widget.RelativeLayout.LayoutParams layoutparams1, android.widget.LinearLayout.LayoutParams layoutparams2, AdMarvelXMLElement admarvelxmlelement, ViewGroup viewgroup)
    {
        ViewSwitcher viewswitcher;
        viewswitcher = new ViewSwitcher(context);
        viewswitcher.setLayoutParams(layoutparams2);
        viewswitcher.addStatesFromChildren();
        if (admarvelxmlelement == null) goto _L2; else goto _L1
_L1:
        if (!admarvelxmlelement.c().containsKey("subitem")) goto _L2; else goto _L3
_L3:
        ArrayList arraylist;
        b = true;
        arraylist = (ArrayList)admarvelxmlelement.c().get("subitem");
        int k = 0;
_L13:
        if (k >= arraylist.size()) goto _L2; else goto _L4
_L4:
        AdMarvelXMLElement admarvelxmlelement1;
        String s;
        admarvelxmlelement1 = (AdMarvelXMLElement)arraylist.get(k);
        s = (String)admarvelxmlelement1.getAttributes().get("type");
        if (!"SystemItem".equalsIgnoreCase(s)) goto _L6; else goto _L5
_L5:
        a(context, layoutparams1, layoutparams2, admarvelxmlelement1, ((ViewGroup) (viewswitcher)));
          goto _L7
_L6:
        if (!"Title".equalsIgnoreCase(s)) goto _L9; else goto _L8
_L8:
        b(context, layoutparams, layoutparams2, admarvelxmlelement1, viewswitcher);
          goto _L7
        Exception exception;
        exception;
        Logging.log((new StringBuilder()).append("Exception in addToggleButton API").append(exception.getMessage()).toString());
_L11:
        return;
_L9:
        if ("Image".equalsIgnoreCase(s))
        {
            c(context, layoutparams1, layoutparams2, admarvelxmlelement1, viewswitcher);
        }
          goto _L7
_L2:
        if (viewswitcher.getChildCount() != 2) goto _L11; else goto _L10
_L10:
        viewgroup.addView(viewswitcher);
        return;
_L7:
        k++;
        if (true) goto _L13; else goto _L12
_L12:
    }

    private void a(View view)
    {
_L2:
        return;
        if (view == null || !(view instanceof d)) goto _L2; else goto _L1
_L1:
        d d1;
        AdMarvelVideoActivity admarvelvideoactivity;
        d1 = (d)view;
        admarvelvideoactivity = (AdMarvelVideoActivity)g.get();
        if (admarvelvideoactivity != null)
        {
            admarvelvideoactivity.onUserInteraction();
            if (d1.e != null)
            {
                admarvelvideoactivity.a(d1.e);
            }
        }
        if (view.getParent() instanceof ViewSwitcher)
        {
            ViewSwitcher viewswitcher = (ViewSwitcher)view.getParent();
            if (viewswitcher != null)
            {
                if (viewswitcher.getDisplayedChild() == 0)
                {
                    viewswitcher.showNext();
                } else
                {
                    viewswitcher.showPrevious();
                }
            }
        }
        if (d1.c != null && d1.c.equalsIgnoreCase("open_url"))
        {
            a(d1);
            return;
        }
        if (d1.c == null || !d1.c.equalsIgnoreCase("play_movie"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (d1.b != null)
        {
            a(d1.b);
            return;
        }
        if (true) goto _L2; else goto _L3
_L3:
        if (d1.c == null || !d1.c.equalsIgnoreCase("done"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (admarvelvideoactivity != null)
        {
            admarvelvideoactivity.c();
            return;
        }
        if (true) goto _L2; else goto _L4
_L4:
        if (d1.c != null && d1.c.equalsIgnoreCase("stop"))
        {
            d();
            return;
        }
        if (d1.c != null && d1.c.equalsIgnoreCase("replay"))
        {
            c();
            return;
        }
        if (d1.c != null && d1.c.equalsIgnoreCase("pause"))
        {
            a(true);
            return;
        }
        if (d1.c != null && d1.c.equalsIgnoreCase("resume"))
        {
            e();
            return;
        }
        if (d1.c != null && d1.c.equalsIgnoreCase("mute"))
        {
            f();
            return;
        }
        if (d1.c != null && d1.c.equalsIgnoreCase("unmute"))
        {
            g();
            return;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private void a(d d1)
    {
        if (d1 != null) goto _L2; else goto _L1
_L1:
        AdMarvelVideoActivity admarvelvideoactivity;
        return;
_L2:
        if ((admarvelvideoactivity = (AdMarvelVideoActivity)g.get()) == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (d1.d != c.a)
        {
            break; /* Loop/switch isn't completed */
        }
        a(false);
_L4:
        if (d1.a != null && d1.a.length() > 0)
        {
            if (AdMarvelInterstitialAds.getEnableClickRedirect())
            {
                admarvelvideoactivity.d = true;
                Intent intent = new Intent(admarvelvideoactivity, com/admarvel/android/ads/AdMarvelActivity);
                intent.addFlags(0x10000000);
                intent.putExtra("url", d1.a);
                intent.putExtra("isInterstitial", false);
                intent.putExtra("isInterstitialClick", false);
                intent.putExtra("GUID", d);
                admarvelvideoactivity.startActivity(intent);
            }
            AdMarvelInterstitialAds.getListener().a(admarvelvideoactivity, d1.a, "", 0, null, "");
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (d1.d == c.b)
        {
            d();
        } else
        if (d1.d == c.c)
        {
            admarvelvideoactivity.c();
        }
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    static void a(ad ad1, View view)
    {
        ad1.a(view);
    }

    private void a(String s)
    {
        AdMarvelVideoActivity admarvelvideoactivity;
        if (s != null)
        {
            if ((admarvelvideoactivity = (AdMarvelVideoActivity)g.get()) != null)
            {
                admarvelvideoactivity.c(s);
                return;
            }
        }
    }

    private void a(boolean flag)
    {
        AdMarvelVideoActivity admarvelvideoactivity = (AdMarvelVideoActivity)g.get();
        if (admarvelvideoactivity != null)
        {
            admarvelvideoactivity.a(flag);
        }
    }

    static boolean a(ad ad1, boolean flag)
    {
        ad1.i = flag;
        return flag;
    }

    private void b(Context context, android.widget.RelativeLayout.LayoutParams layoutparams, android.widget.LinearLayout.LayoutParams layoutparams1, AdMarvelXMLElement admarvelxmlelement, ViewGroup viewgroup)
    {
        d d1 = new d(context, admarvelxmlelement, layoutparams1);
        layoutparams.addRule(15);
        ShapeDrawable shapedrawable = new ShapeDrawable(new RectShape());
        ShapeDrawable shapedrawable1 = new ShapeDrawable(new RectShape());
        shapedrawable1.getPaint().setColor(Color.parseColor("#000000FF"));
        shapedrawable.getPaint().setColor(Color.parseColor("#AA3E3E3E"));
        StateListDrawable statelistdrawable = new StateListDrawable();
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, shapedrawable);
        statelistdrawable.addState(new int[] {
            0xfefeff5f
        }, shapedrawable1);
        statelistdrawable.addState(new int[] {
            0x10100a1
        }, shapedrawable);
        StateListDrawable statelistdrawable1 = new StateListDrawable();
        statelistdrawable1.addState(new int[] {
            0x10100a7
        }, shapedrawable);
        if (d1.c == null)
        {
            return;
        }
        String s = (String)admarvelxmlelement.getAttributes().get("title");
        TextView textview = new TextView(context);
        textview.setLayoutParams(layoutparams);
        textview.setBackgroundColor(0xff0000ff);
        textview.setGravity(17);
        layoutparams.addRule(15);
        textview.setDuplicateParentStateEnabled(true);
        textview.setClickable(false);
        textview.setSingleLine();
        textview.setTextColor(Color.parseColor("#84c043"));
        textview.setTypeface(Typeface.DEFAULT_BOLD);
        textview.setTextSize(17F);
        String s1 = (String)admarvelxmlelement.getAttributes().get("color");
        String s2 = (String)admarvelxmlelement.getAttributes().get("textSize");
        if (s1 != null && s1.length() > 0)
        {
            textview.setTextColor(Color.parseColor(s1));
            textview.setTypeface(Typeface.DEFAULT_BOLD);
            LinearLayout linearlayout;
            android.widget.LinearLayout.LayoutParams layoutparams2;
            if (s2 != null)
            {
                try
                {
                    textview.setTextSize(Integer.parseInt(s2));
                }
                catch (Exception exception)
                {
                    textview.setTextSize(18F);
                    Logging.log((new StringBuilder()).append("Exception in setting Done button text size").append(exception.getMessage()).toString());
                }
            }
        }
        if (ac.a() >= 16)
        {
            textview.setBackground(statelistdrawable);
        } else
        {
            textview.setBackgroundDrawable(statelistdrawable);
        }
        if (s != null && s.length() > 0)
        {
            textview.setText(s);
        }
        d1.setBackgroundDrawable(statelistdrawable1);
        if (d1.c.equalsIgnoreCase("done"))
        {
            linearlayout = new LinearLayout(context);
            layoutparams2 = new android.widget.LinearLayout.LayoutParams(-2, -2);
            layoutparams1.gravity = 5;
            textview.setLayoutParams(layoutparams);
            linearlayout.setLayoutParams(layoutparams2);
            textview.setTag("ADM_VIDEO_CUSTOM_DONE_BUTTON");
            if (s != null && s.length() > 0)
            {
                textview.setText(s);
            }
            linearlayout.addView(textview);
            a(linearlayout);
            return;
        } else
        {
            d1.addView(textview);
            viewgroup.addView(d1, layoutparams);
            return;
        }
    }

    private void c()
    {
        AdMarvelVideoActivity admarvelvideoactivity = (AdMarvelVideoActivity)g.get();
        if (admarvelvideoactivity != null)
        {
            admarvelvideoactivity.f();
        }
    }

    private void c(Context context, android.widget.RelativeLayout.LayoutParams layoutparams, android.widget.LinearLayout.LayoutParams layoutparams1, AdMarvelXMLElement admarvelxmlelement, ViewGroup viewgroup)
    {
        ShapeDrawable shapedrawable = new ShapeDrawable(new RectShape());
        shapedrawable.getPaint().setShader(new LinearGradient(0.0F, 0.0F, 0.0F, a(40F), Color.parseColor("#AAFFFFFF"), Color.parseColor("#AA3E3E3E"), android.graphics.Shader.TileMode.REPEAT));
        StateListDrawable statelistdrawable = new StateListDrawable();
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, shapedrawable);
        d d1 = new d(context, admarvelxmlelement, layoutparams1);
        if (d1.c != null)
        {
            String s = (String)admarvelxmlelement.getAttributes().get("image");
            String s1 = (String)admarvelxmlelement.getAttributes().get("image_high");
            String s2 = (String)admarvelxmlelement.getAttributes().get("image_retina");
            AdMarvelVideoActivity admarvelvideoactivity = (AdMarvelVideoActivity)g.get();
            if (admarvelvideoactivity != null)
            {
                float f1 = ab.i(admarvelvideoactivity);
                ImageView imageview;
                if (f1 > 1.0F)
                {
                    if (f1 > 1.0F && f1 < 2.0F)
                    {
                        if (s1 != null && s1.length() > 0)
                        {
                            s = s1;
                        }
                    } else
                    if (s2 != null && s2.length() > 0)
                    {
                        s = s2;
                    }
                }
                layoutparams.width = (int)a(32F);
                layoutparams.height = (int)a(32F);
                layoutparams.addRule(13);
                imageview = new ImageView(context);
                imageview.setLayoutParams(layoutparams);
                if (ac.a() >= 11)
                {
                    admarvelvideoactivity.a().post(new b(imageview, s));
                } else
                {
                    (new a(imageview)).execute(new String[] {
                        s
                    });
                }
                d1.setBackgroundDrawable(statelistdrawable);
                if (d1.c.equalsIgnoreCase("done"))
                {
                    LinearLayout linearlayout = new LinearLayout(context);
                    android.widget.LinearLayout.LayoutParams layoutparams2 = new android.widget.LinearLayout.LayoutParams((int)a(40F), (int)a(40F));
                    layoutparams1.weight = 25F;
                    layoutparams1.gravity = 5;
                    linearlayout.addView(imageview, layoutparams2);
                    imageview.setTag("ADM_VIDEO_IMAGE_ICON_DONE_BUTTON");
                    a(linearlayout);
                    return;
                } else
                {
                    d1.addView(imageview);
                    viewgroup.addView(d1);
                    return;
                }
            }
        }
    }

    private void d()
    {
        AdMarvelVideoActivity admarvelvideoactivity = (AdMarvelVideoActivity)g.get();
        if (admarvelvideoactivity != null)
        {
            admarvelvideoactivity.d();
        }
    }

    private void e()
    {
        AdMarvelVideoActivity admarvelvideoactivity = (AdMarvelVideoActivity)g.get();
        if (admarvelvideoactivity != null)
        {
            admarvelvideoactivity.e();
        }
    }

    private void f()
    {
        AdMarvelVideoActivity admarvelvideoactivity = (AdMarvelVideoActivity)g.get();
        p p1 = (p)h.get();
        if (p1 != null)
        {
            p1.b();
        }
        if (admarvelvideoactivity != null)
        {
            admarvelvideoactivity.j = AdMarvelVideoActivity.m.a;
        }
    }

    private void g()
    {
        AdMarvelVideoActivity admarvelvideoactivity = (AdMarvelVideoActivity)g.get();
        p p1 = (p)h.get();
        if (p1 != null)
        {
            p1.c();
        }
        if (admarvelvideoactivity != null)
        {
            admarvelvideoactivity.j = AdMarvelVideoActivity.m.b;
        }
    }

    public LinearLayout a()
    {
        return c;
    }

    public void a(LinearLayout linearlayout)
    {
        c = linearlayout;
    }

    public boolean b()
    {
        return i;
    }


    private class d extends RelativeLayout
    {
        private class c extends Enum
        {

            public static final c a;
            public static final c b;
            public static final c c;
            private static final c d[];

            public static c valueOf(String s)
            {
                return (c)Enum.valueOf(com/admarvel/android/ads/ad$c, s);
            }

            public static c[] values()
            {
                return (c[])d.clone();
            }

            static 
            {
                a = new c("PauseVideo", 0);
                b = new c("StopVideo", 1);
                c = new c("CloseVideo", 2);
                c ac1[] = new c[3];
                ac1[0] = a;
                ac1[1] = b;
                ac1[2] = c;
                d = ac1;
            }

            private c(String s, int k)
            {
                super(s, k);
            }
        }


        public String a;
        public String b;
        public String c;
        public c d;
        public List e;
        final ad f;

        public d(Context context, AdMarvelXMLElement admarvelxmlelement, android.widget.LinearLayout.LayoutParams layoutparams)
        {
            f = ad.this;
            super(context);
            a = null;
            b = null;
            c = null;
            d = c.a;
            AdMarvelXMLElement admarvelxmlelement1;
            AdMarvelXMLElement admarvelxmlelement2;
            if (admarvelxmlelement.c().get("action") != null)
            {
                admarvelxmlelement1 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement.c().get("action")).get(0);
            } else
            {
                admarvelxmlelement1 = null;
            }
            if (admarvelxmlelement1 != null)
            {
                String s = (String)admarvelxmlelement1.getAttributes().get("type");
                c = s;
                if ("open_url".equalsIgnoreCase(s))
                {
                    a = admarvelxmlelement1.b();
                    String s1 = (String)admarvelxmlelement1.getAttributes().get("videoOpenUrlBehavior");
                    AdMarvelXMLElement admarvelxmlelement3;
                    ArrayList arraylist;
                    int k;
                    AdMarvelXMLElement admarvelxmlelement4;
                    if (s1 != null)
                    {
                        if (s1.equalsIgnoreCase("pauseVideo"))
                        {
                            d = c.a;
                        } else
                        if (s1.equalsIgnoreCase("stopVideo"))
                        {
                            d = c.b;
                        } else
                        if (s1.equalsIgnoreCase("closeVideo"))
                        {
                            d = c.c;
                        }
                    }
                } else
                if ("done".equalsIgnoreCase(s))
                {
                    ad.a(ad.this, true);
                } else
                if ("play_movie".equalsIgnoreCase(s))
                {
                    b = admarvelxmlelement1.b();
                }
            }
            if (admarvelxmlelement.c().get("clickTracking") != null)
            {
                admarvelxmlelement2 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement.c().get("clickTracking")).get(0);
            } else
            {
                admarvelxmlelement2 = null;
            }
            if (admarvelxmlelement2 != null)
            {
                admarvelxmlelement3 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement2.c().get("pixels")).get(0);
                if (admarvelxmlelement3 != null && admarvelxmlelement3.c().containsKey("pixel"))
                {
                    arraylist = (ArrayList)admarvelxmlelement3.c().get("pixel");
                    e = new ArrayList();
                    e.clear();
                    for (k = 0; k < arraylist.size(); k++)
                    {
                        admarvelxmlelement4 = (AdMarvelXMLElement)arraylist.get(k);
                        e.add(admarvelxmlelement4.b());
                    }

                }
            }
            setLayoutParams(layoutparams);
            setClickable(true);
            addStatesFromChildren();
            setGravity(17);
            setOnClickListener(new android.view.View.OnClickListener() {

                final ad a;
                final d b;

                public void onClick(View view)
                {
                    ad.a(b.f, view);
                }

                
                {
                    b = d.this;
                    a = ad.this;
                    super();
                }
            });
        }
    }


    private class b
        implements Runnable
    {

        final ad a;
        private final WeakReference b;
        private String c;

        public void run()
        {
            if (b.get() != null)
            {
                a a1 = a. new a((ImageView)b.get());
                java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
                String as[] = new String[1];
                as[0] = c;
                a1.executeOnExecutor(executor, as);
            }
        }

        public b(ImageView imageview, String s)
        {
            a = ad.this;
            super();
            b = new WeakReference(imageview);
            c = s;
        }
    }


    private class a extends AsyncTask
    {

        ImageView a;
        final ad b;

        protected transient Bitmap a(String as[])
        {
            String s = as[0];
            Bitmap bitmap;
            try
            {
                bitmap = BitmapFactory.decodeStream((new URL(s)).openStream());
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
                return null;
            }
            return bitmap;
        }

        protected void a(Bitmap bitmap)
        {
            a.setImageBitmap(bitmap);
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((String[])aobj);
        }

        protected void onPostExecute(Object obj)
        {
            a((Bitmap)obj);
        }

        public a(ImageView imageview)
        {
            b = ad.this;
            super();
            a = imageview;
        }
    }

}
