// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.location.Location;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.b.e;
import com.smartadserver.android.library.controller.d;
import com.smartadserver.android.library.h.c;
import com.smartadserver.android.library.ui.SASAdView;
import com.smartadserver.android.library.ui.b;
import com.smartadserver.android.library.ui.g;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.smartadserver.android.library.controller.mraid:
//            b, d, c

public class a
{

    public static String a = "http://ak-ns.sascdn.com/diff/templates/js/mobile/mraid/bridges/android-sdk-mraid-bridge-2.1.js";
    public static String b = "mraidbridge";
    private static final String c = com/smartadserver/android/library/controller/mraid/a.getSimpleName();
    private SASAdView d;
    private com.smartadserver.android.library.controller.mraid.b e;
    private com.smartadserver.android.library.controller.mraid.d f;
    private com.smartadserver.android.library.controller.mraid.c g;
    private boolean h;
    private String i;
    private int j;
    private boolean k;
    private float l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private int q;

    public a(SASAdView sasadview)
    {
        m = false;
        d = sasadview;
        Context context = d.getContext();
        int i1 = d.getVisibility();
        boolean flag = false;
        if (i1 == 0)
        {
            flag = true;
        }
        h = flag;
        j = com.smartadserver.android.library.h.c.f(d.getContext());
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        l = displaymetrics.density;
        a();
    }

    static SASAdView a(a a1)
    {
        return a1.d;
    }

    static String b(a a1)
    {
        return a1.i;
    }

    static com.smartadserver.android.library.controller.mraid.c c(a a1)
    {
        return a1.g;
    }

    static com.smartadserver.android.library.controller.mraid.b d(a a1)
    {
        return a1.e;
    }

    static com.smartadserver.android.library.controller.mraid.d e(a a1)
    {
        return a1.f;
    }

    private void e()
    {
        f();
        e.a = n;
        e.b = o;
    }

    private void f()
    {
        android.widget.FrameLayout framelayout = d.getExpandParentView();
        Display display = ((WindowManager)d.getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        display.getMetrics(displaymetrics);
        p = (int)((float)displaymetrics.widthPixels / l);
        q = (int)((float)displaymetrics.heightPixels / l);
        if (framelayout != null)
        {
            n = (int)((float)framelayout.getWidth() / l);
            o = (int)((float)(framelayout.getHeight() - d.getNeededTopPadding()) / l);
            return;
        } else
        {
            n = p;
            o = q;
            return;
        }
    }

    private void g()
    {
        if (e.c && getPlacementType() == "interstitial")
        {
            d.j();
        }
    }

    public String a(Rect rect)
    {
        JSONObject jsonobject = new JSONObject();
        String s;
        try
        {
            jsonobject.put("x", (int)((float)rect.left / l));
            jsonobject.put("y", (int)((float)rect.top / l));
            jsonobject.put("width", (float)rect.width() / l);
            jsonobject.put("height", (float)rect.height() / l);
            s = jsonobject.toString();
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s;
    }

    public void a()
    {
        e = new com.smartadserver.android.library.controller.mraid.b();
        f = new com.smartadserver.android.library.controller.mraid.d();
        g = new com.smartadserver.android.library.controller.mraid.c();
        e();
        k = false;
    }

    public void a(int i1)
    {
        if (i1 != j)
        {
            com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("onConfigurationChange(\"").append(i1).append("\")").toString());
            j = i1;
            e();
            if ("resized".equals(i))
            {
                d.post(new Runnable() {

                    final a a;

                    public void run()
                    {
                        a.a(a).setEnableStateChangeEvent(false);
                        a.resize();
                        a.a(a).setEnableStateChangeEvent(true);
                    }

            
            {
                a = a.this;
                super();
            }
                });
            }
            if (!"loading".equals(i))
            {
                d.b((new StringBuilder()).append("if (typeof mraid != 'undefined') mraid.fireOrientationChangeEvent(\"").append(j).append("\")").toString());
            }
        }
    }

    public void a(int i1, int j1)
    {
        d.b((new StringBuilder()).append("if (typeof mraid != 'undefined') mraid.fireSizeChangeEvent(\"").append((int)((float)i1 / l)).append("\",\"").append((int)((float)j1 / l)).append("\")").toString());
    }

    public void a(String s, String s1)
    {
        String s2;
        if (s1 != null)
        {
            s2 = (new StringBuilder()).append("\",\"").append(s1).toString();
        } else
        {
            s2 = "";
        }
        d.b((new StringBuilder()).append("if (typeof mraid != 'undefined') mraid.fireErrorEvent(\"").append(s).append(s2).append("\")").toString());
    }

    public void a(String s, boolean flag)
    {
        if (i == null || !i.equals(s) || i.equals("resized"))
        {
            com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("setState(\"").append(s).append("\") from thread:").append(Thread.currentThread().getName()).toString());
            i = s;
            m = true;
            if (!flag)
            {
                c();
            }
        }
    }

    public void a(boolean flag)
    {
        if (h != flag)
        {
            com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("setViewable(").append(flag).append(")").toString());
            h = flag;
            if (!"loading".equals(i))
            {
                com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("fireViewableChangeEvent(").append(h).append(")").toString());
                d.b((new StringBuilder()).append("if (typeof mraid != 'undefined') mraid.fireViewableChangeEvent(\"").append(h).append("\")").toString());
            }
        }
    }

    public void b()
    {
        if (!d.k())
        {
            a("expanded", false);
        }
        if ("expanded".equals(i) || "resized".equals(i))
        {
            close();
        }
        a();
        i = null;
    }

    public void c()
    {
        if (!"loading".equals(i) && m)
        {
            m = false;
            d.b((new StringBuilder()).append("if (typeof mraid != 'undefined') mraid.fireStateChangeEvent(\"").append(i).append("\")").toString());
            com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("mraid.fireStateChangeEvent(\"").append(i).append("\")").toString());
            if ("expanded".equals(i))
            {
                d.a(0);
            } else
            {
                if ("default".equals(i))
                {
                    d.a(1);
                    return;
                }
                if ("hidden".equals(i))
                {
                    d.a(2);
                    return;
                }
                if ("resized".equals(i))
                {
                    d.a(3);
                    return;
                }
            }
        }
    }

    public void callJS(String s)
    {
        d.b(s);
    }

    public void close()
    {
        com.smartadserver.android.library.h.c.a(c, "close()");
        boolean flag = com.smartadserver.android.library.h.c.a();
        if ("expanded".equals(i) || "resized".equals(i) || d.k.d())
        {
            a("default", flag);
            d.a();
            d.j();
            return;
        } else
        {
            a("hidden", flag);
            d.c();
            return;
        }
    }

    public void createCalendarEvent(String s)
    {
        String s1 = d.l.e();
        if (s1 != null && !s1.equals(""))
        {
            d.e.a(s1, true);
        }
        long l1;
        long l2;
        String s2;
        String s3;
        String s4;
        JSONObject jsonobject1;
        String s5;
        JSONObject jsonobject = new JSONObject(s);
        l1 = jsonobject.optLong("start", -1L);
        l2 = jsonobject.optLong("end", -1L);
        s2 = jsonobject.optString("description", "");
        s3 = jsonobject.optString("summary", "");
        s4 = jsonobject.optString("location", "");
        jsonobject1 = jsonobject.optJSONObject("recurrence");
        s5 = jsonobject.optString("transparency", "");
        boolean flag;
        Intent intent;
        String s6;
        if (l2 == -1L || l2 - l1 == 0x5265c00L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (l1 == -1L)
        {
            try
            {
                a("Can not create calendar event: invalid start date", "createCalendarEvent");
                return;
            }
            catch (JSONException jsonexception)
            {
                a("Can not create calendar event: incorrect JSON format", "createCalendarEvent");
            }
            break MISSING_BLOCK_LABEL_206;
        }
        if (l1 < l2 || l2 == -1L)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        a("Can not create calendar event: start date is posterior to end date", "createCalendarEvent");
        return;
        return;
        intent = new Intent("android.intent.action.EDIT");
        intent.setType("vnd.android.cursor.item/event");
        intent.putExtra("beginTime", l1);
        if (!flag) goto _L2; else goto _L1
_L1:
        intent.putExtra("allDay", true);
_L5:
        intent.putExtra("title", s3);
        intent.putExtra("description", s2);
        intent.putExtra("eventLocation", s4);
        if (!"opaque".equals(s5)) goto _L4; else goto _L3
_L3:
        intent.putExtra("availability", 0);
_L6:
        if (jsonobject1 == null)
        {
            break MISSING_BLOCK_LABEL_339;
        }
        s6 = com.smartadserver.android.library.h.c.a(jsonobject1);
        if (s6.length() > 0)
        {
            intent.putExtra("rrule", s6);
        }
        if (intent.resolveActivity(d.getContext().getPackageManager()) != null)
        {
            d.getContext().startActivity(intent);
            return;
        }
        break MISSING_BLOCK_LABEL_407;
_L2:
        intent.putExtra("allDay", false);
        intent.putExtra("endTime", l2);
          goto _L5
_L4:
        intent.putExtra("availability", 1);
          goto _L6
        com.smartadserver.android.library.h.c.c("Can not launch calendar activity");
        return;
          goto _L5
    }

    public void createEvent(long l1, String s, String s1, long l2)
    {
        String s2 = d.l.e();
        if (s2 != null && !s2.equals(""))
        {
            d.e.a(s2, true);
        }
        boolean flag;
        Intent intent;
        if (l2 == 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        intent = new Intent("android.intent.action.EDIT");
        intent.setType("vnd.android.cursor.item/event");
        intent.putExtra("beginTime", l1);
        if (flag)
        {
            intent.putExtra("allDay", true);
        } else
        {
            intent.putExtra("allDay", false);
            intent.putExtra("endTime", l2);
        }
        intent.putExtra("title", s);
        intent.putExtra("description", s1);
        if (intent.resolveActivity(d.getContext().getPackageManager()) != null)
        {
            d.getContext().startActivity(intent);
            return;
        } else
        {
            com.smartadserver.android.library.h.c.c("Can not launch calendar activity");
            return;
        }
    }

    public void d()
    {
        String s = (new StringBuilder()).append("if (typeof mraid != 'undefined') mraid.fireLocationChangeEvent(").append(getLocation()).append(");").toString();
        d.b(s);
    }

    public void executeJSFromNative(String s)
    {
        com.smartadserver.android.library.h.c.a(c, "executeJS");
        d.b(s);
    }

    public void expand()
    {
        expand(null);
    }

    public void expand(String s)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("expand():url:").append(s).toString());
        if ("hidden".equals(i))
        {
            return;
        } else
        {
            d.m = e.e;
            boolean flag = d.h.b();
            d.a(new Runnable(s, flag) {

                final String a;
                final boolean b;
                final a c;

                public void run()
                {
                    boolean flag1 = true;
                    if (a.a(c).k())
                    {
                        c.a("expanded", flag1);
                    }
                    if (!"default".equals(com.smartadserver.android.library.controller.mraid.a.b(c)) && !"expanded".equals(com.smartadserver.android.library.controller.mraid.a.b(c)) && !"resized".equals(com.smartadserver.android.library.controller.mraid.a.b(c)))
                    {
                        return;
                    }
                    SASAdView sasadview = a.a(c);
                    String s1 = a;
                    if (com.smartadserver.android.library.controller.mraid.a.c(c).a)
                    {
                        flag1 = false;
                    }
                    sasadview.a(s1, -1, -1, flag1, com.smartadserver.android.library.controller.mraid.a.c(c).b);
                    a.a(c).postDelayed(new Runnable(this) {

                        final _cls2 a;

                        public void run()
                        {
                            if (a.a == null && (!com.smartadserver.android.library.controller.mraid.a.d(a.c).c || a.b))
                            {
                                a.a(a.c).a(new android.view.View.OnClickListener(this) {

                                    final _cls1 a;

                                    public void onClick(View view)
                                    {
                                        a.a.c.close();
                                    }

            
            {
                a = _pcls1;
                super();
            }
                                });
                            } else
                            if (a.a == null && !"interstitial".equals(a.c.getPlacementType()))
                            {
                                a.a(a.c).b(new android.view.View.OnClickListener(this) {

                                    final _cls1 a;

                                    public void onClick(View view)
                                    {
                                        a.a.c.close();
                                    }

            
            {
                a = _pcls1;
                super();
            }
                                });
                                return;
                            }
                        }

            
            {
                a = _pcls2;
                super();
            }
                    }, 200L);
                }

            
            {
                c = a.this;
                a = s;
                b = flag;
                super();
            }
            });
            return;
        }
    }

    public String getCurrentPosition()
    {
        Rect rect = d.getCurrentBounds();
        rect.top = rect.top - d.getNeededTopPadding();
        rect.bottom = rect.bottom - d.getNeededTopPadding();
        return a(rect);
    }

    public String getDefaultPosition()
    {
        Rect rect = d.getDefaultBounds();
        rect.top = rect.top - d.getNeededTopPadding();
        rect.bottom = rect.bottom - d.getNeededTopPadding();
        return a(rect);
    }

    public int getExpandPolicy()
    {
        int i1 = d.getExpandPolicy();
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("getExpandPolicy return: ").append(i1).toString());
        return i1;
    }

    public String getExpandProperties()
    {
        return e.a();
    }

    public String getLocation()
    {
        Location location = d.getLocation();
        String s = null;
        if (location != null)
        {
            s = (new StringBuilder()).append("{lat:").append(location.getLatitude()).append(",").append("lon:").append(location.getLongitude()).append(",").append("acc:").append(location.getAccuracy()).append("}").toString();
        }
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("getLocation: ").append(s).toString());
        return s;
    }

    public String getMaxSizeString()
    {
        JSONObject jsonobject = new JSONObject();
        String s;
        try
        {
            jsonobject.put("width", n);
            jsonobject.put("height", o);
            s = jsonobject.toString();
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s;
    }

    public int getOrientation()
    {
        int i1 = com.smartadserver.android.library.h.c.f(d.getContext());
        if (i1 != j)
        {
            j = i1;
        }
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("getOrientation() return ").append(j).toString());
        return j;
    }

    public String getOrientationProperties()
    {
        return g.a();
    }

    public String getPlacementType()
    {
        String s;
        if (d instanceof SASInterstitialView)
        {
            s = "interstitial";
        } else
        {
            s = "inline";
        }
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("getPlacementType() return: ").append(s).toString());
        return s;
    }

    public String getResizeProperties()
    {
        return f.a();
    }

    public String getScreenSizeString()
    {
        JSONObject jsonobject = new JSONObject();
        String s;
        try
        {
            jsonobject.put("width", p);
            jsonobject.put("height", q);
            s = jsonobject.toString();
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s;
    }

    public String getState()
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("getState() return: ").append(i).toString());
        return i;
    }

    public boolean isLandscapeDevice()
    {
        return com.smartadserver.android.library.h.c.g(d.getContext());
    }

    public boolean isViewable()
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("isViewable() return: ").append(h).toString());
        return h;
    }

    public void open(String s)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("open(\"").append(s).append("\")").toString());
        d.a(s);
    }

    public void request(String s, String s1)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("request(\"").append(s).append("\", \"").append(s1).append("\")").toString());
        d.e.a(s, "proxy".equals(s1));
    }

    public void resize()
    {
        com.smartadserver.android.library.h.c.a(c, "resize method called");
        if ("hidden".equals(i))
        {
            return;
        }
        if ("expanded".equals(i))
        {
            a("Can not resize a container in EXPANDED state", ((String) (null)));
            return;
        }
        if (!k)
        {
            a("Can not resize a container with no resize properties set first", "Call mraid.setResizeProperties(properties) first");
            return;
        }
        int i1;
        int j1;
        int k1;
        int l1;
        if (f.a < 0)
        {
            i1 = f.a;
        } else
        {
            i1 = (int)((float)f.a * l);
        }
        if (f.b < 0)
        {
            j1 = f.b;
        } else
        {
            j1 = (int)((float)f.b * l);
        }
        k1 = (int)((float)f.d * l);
        l1 = (int)((float)f.e * l);
        d.a(new Runnable(i1, j1, k1, l1) {

            final int a;
            final int b;
            final int c;
            final int d;
            final a e;

            public void run()
            {
                if (a.a(e).k())
                {
                    e.a("resized", true);
                }
                a.a(e).a(null, a, b, c, d, false, com.smartadserver.android.library.controller.mraid.a.e(e).f, false, "none", false);
                if (!"none".equals(com.smartadserver.android.library.controller.mraid.a.e(e).c))
                {
                    a.a(e).b(new android.view.View.OnClickListener(this) {

                        final _cls3 a;

                        public void onClick(View view)
                        {
                            a.e.close();
                        }

            
            {
                a = _pcls3;
                super();
            }
                    });
                    a.a(e).j.setCloseButtonPosition(com.smartadserver.android.library.controller.mraid.a.e(e).b());
                }
            }

            
            {
                e = a.this;
                a = i1;
                b = j1;
                c = k1;
                d = l1;
                super();
            }
        });
    }

    public void sendMessage(String s)
    {
        b b1 = d.getMessageHandler();
        if (b1 != null)
        {
            b1.a(s);
        }
    }

    public void setCollapseAfterAdClicked(boolean flag)
    {
        e.e = flag;
    }

    public void setEnableStateChangeEvent(boolean flag)
    {
        d.a(new Runnable(flag) {

            final boolean a;
            final a b;

            public void run()
            {
                a.a(b).setEnableStateChangeEvent(a);
            }

            
            {
                b = a.this;
                a = flag;
                super();
            }
        });
    }

    public void setExpandPolicy(int i1)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("setExpandPolicy(").append(i1).append(")").toString());
        d.setExpandPolicy(i1);
    }

    public void setExpandProperties(String s)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("setExpandProperties(").append(s).append(")").toString());
        try
        {
            e = new com.smartadserver.android.library.controller.mraid.b(s);
        }
        catch (JSONException jsonexception)
        {
            com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("Fail setting expand properties: ").append(s).toString());
        }
        g();
    }

    public void setExpandUseCustomCloseProperty(boolean flag)
    {
        if (e != null)
        {
            e.c = flag;
        }
        g();
    }

    public void setOrientationProperties(String s)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("setOrientationProperties(").append(s).append(")").toString());
        try
        {
            g = new com.smartadserver.android.library.controller.mraid.c(s);
            return;
        }
        catch (JSONException jsonexception)
        {
            com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("Fail setting orientation properties: ").append(s).toString());
        }
    }

    public void setResizeProperties(String s)
    {
        com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("setResizeProperties(").append(s).append(")").toString());
        try
        {
            f = new com.smartadserver.android.library.controller.mraid.d(s);
            k = true;
            return;
        }
        catch (JSONException jsonexception)
        {
            com.smartadserver.android.library.h.c.a(c, (new StringBuilder()).append("Fail setting resize properties: ").append(s).toString());
        }
    }

    public void setState(String s)
    {
        a(s, false);
    }

}
