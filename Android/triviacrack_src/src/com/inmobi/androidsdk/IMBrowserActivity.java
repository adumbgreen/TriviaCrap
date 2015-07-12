// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.androidsdk;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController;
import com.inmobi.re.controller.JSUtilityController;
import com.inmobi.re.controller.util.StartActivityForResultCallback;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.inmobi.androidsdk:
//            g

public class IMBrowserActivity extends Activity
{

    public static final String EXTRA_BROWSER_ACTIVITY_TYPE = "extra_browser_type";
    public static final int EXTRA_BROWSER_STATUS_BAR = 101;
    public static final String EXTRA_URL = "extra_url";
    public static final int GET_IMAGE = 101;
    private static com.inmobi.re.container.IMWebView.IMWebViewListener b;
    private static Message c;
    private static Map h = new HashMap();
    private static int i = 0;
    private IMWebView a;
    private RelativeLayout d;
    private float e;
    private Boolean f;
    private CustomView g;
    private WebViewClient j;

    public IMBrowserActivity()
    {
        j = new g(this);
    }

    static IMWebView a(IMBrowserActivity imbrowseractivity)
    {
        return imbrowseractivity.a;
    }

    private String a(String s)
    {
        int k;
        String s1;
        k = 0;
        s1 = null;
        if (s == null) goto _L2; else goto _L1
_L1:
        boolean flag;
        flag = "".equals(s);
        s1 = null;
        if (flag) goto _L2; else goto _L3
_L3:
        SimpleDateFormat asimpledateformat[];
        int l;
        int i1;
        asimpledateformat = JSUtilityController.formats;
        l = asimpledateformat.length;
        i1 = 0;
_L5:
        SimpleDateFormat simpledateformat1;
        if (i1 >= l)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        simpledateformat1 = asimpledateformat[i1];
        Date date1 = simpledateformat1.parse(s);
        Date date = date1;
_L7:
        SimpleDateFormat asimpledateformat1[];
        int j1;
        asimpledateformat1 = JSUtilityController.calendarUntiFormats;
        j1 = asimpledateformat1.length;
_L6:
        s1 = null;
        if (k >= j1) goto _L2; else goto _L4
_L4:
        SimpleDateFormat simpledateformat = asimpledateformat1[k];
        String s2 = simpledateformat.format(Long.valueOf(date.getTime()));
        s1 = s2;
_L2:
        return s1;
        Exception exception1;
        exception1;
        i1++;
          goto _L5
        Exception exception;
        exception;
        k++;
          goto _L6
        date = null;
          goto _L7
    }

    private String a(JSONArray jsonarray)
    {
        int k;
        k = 0;
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        StringBuilder stringbuilder;
        if (jsonarray.length() == 0)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        stringbuilder = new StringBuilder();
_L1:
        if (k >= jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_69;
        }
        Object obj = jsonarray.get(k);
        stringbuilder.append((new StringBuilder()).append(obj).append(",").toString());
        k++;
          goto _L1
        String s;
        int l;
        s = stringbuilder.toString();
        l = s.length();
        if (l != 0) goto _L3; else goto _L2
_L2:
        s = null;
_L5:
        return s;
_L3:
        int i1 = l - 1;
        if (s.charAt(i1) != ',') goto _L5; else goto _L4
_L4:
        String s1 = s.substring(0, l - 1);
        return s1;
        Exception exception1;
        exception1;
        Log.internal("[InMobi]-4.3.0", "Couldn't parse json in create calendar event", exception1);
        return s;
        Exception exception;
        exception;
        exception.printStackTrace();
        Log.internal("[InMobi]-[RE]-4.3.0", "Exception parsing recurrence rule", exception);
        return null;
    }

    private String a(JSONArray jsonarray, int k, int l)
    {
        int i1 = 0;
        if (jsonarray == null) goto _L2; else goto _L1
_L1:
        if (jsonarray.length() == 0) goto _L2; else goto _L3
_L3:
        StringBuilder stringbuilder = new StringBuilder();
_L8:
        if (i1 >= jsonarray.length()) goto _L5; else goto _L4
_L4:
        int l1 = jsonarray.getInt(i1);
        if (l1 < k || l1 > l)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        try
        {
            stringbuilder.append((new StringBuilder()).append(l1).append(",").toString());
            break MISSING_BLOCK_LABEL_174;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.internal("[InMobi]-[RE]-4.3.0", "Exception parsing recurrence rule", exception);
        }
_L2:
        String s = null;
_L7:
        return s;
_L5:
        int j1;
        s = stringbuilder.toString();
        j1 = s.length();
        int k1;
        if (j1 == 0)
        {
            return null;
        }
        k1 = j1 - 1;
        if (s.charAt(k1) != ',') goto _L7; else goto _L6
_L6:
        String s1 = s.substring(0, j1 - 1);
        return s1;
        Exception exception1;
        exception1;
        Log.internal("[InMobi]-4.3.0", "Couldn't parse json in create calendar event", exception1);
        return s;
        i1++;
          goto _L8
    }

    private void a(int k, String s, String s1, String s2, int l)
    {
        k;
        JVM INSTR tableswitch 1 3: default 28
    //                   1 110
    //                   2 117
    //                   3 124;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_124;
_L1:
        String s3 = null;
_L5:
        String s4;
        s4 = (new StringBuilder()).append(s).append(" ").append(s1).append(" ").append(s2).toString();
        Intent intent = new Intent();
        intent.setType("text/plain");
        intent.setPackage(s3);
        intent.putExtra("android.intent.extra.TEXT", s4);
        try
        {
            startActivityForResult(intent, l);
            return;
        }
        catch (Exception exception) { }
        break MISSING_BLOCK_LABEL_133;
_L2:
        s3 = "";
          goto _L5
_L3:
        s3 = "com.google.android.apps.plus";
          goto _L5
        s3 = "com.twitter.android";
          goto _L5
        k;
        JVM INSTR tableswitch 1 3: default 160
    //                   1 210
    //                   2 282
    //                   3 312;
           goto _L6 _L7 _L8 _L9
_L6:
        String s5 = null;
_L10:
        if (s5 != null)
        {
            Intent intent1 = new Intent("android.intent.action.VIEW");
            intent1.setData(Uri.parse(s5));
            try
            {
                startActivityForResult(intent1, l);
                return;
            }
            catch (Exception exception1)
            {
                onActivityResult(l, 0, null);
            }
            return;
        }
        break; /* Loop/switch isn't completed */
_L7:
        s5 = (new StringBuilder()).append("https://www.facebook.com/dialog/feed?app_id=181821551957328&link=").append(URLEncoder.encode(s1, "UTF-8")).append("&picture=").append(URLEncoder.encode(s2, "UTF-8")).append("&name=&description=").append(URLEncoder.encode(s, "UTF-8")).append("&redirect_uri=").append(URLEncoder.encode(s1, "UTF-8")).toString();
          goto _L10
_L8:
        s5 = (new StringBuilder()).append("https://m.google.com/app/plus/x/?v=compose&content=").append(URLEncoder.encode(s4, "UTF-8")).toString();
          goto _L10
_L9:
        String s6 = (new StringBuilder()).append("http://twitter.com/home?status=").append(URLEncoder.encode(s4, "UTF-8")).toString();
        s5 = s6;
          goto _L10
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        Log.internal("[InMobi]-[RE]-4.3.0", "UTF-8 encoding not supported? What sorcery is this?", unsupportedencodingexception);
        if (true) goto _L6; else goto _L11
_L11:
        Intent intent2 = new Intent();
        intent2.setType("text/plain");
        intent2.putExtra("android.intent.extra.TEXT", s4);
        try
        {
            startActivityForResult(intent2, l);
            return;
        }
        catch (Exception exception2)
        {
            onActivityResult(l, 0, null);
        }
        return;
    }

    private void a(long l, long l1, String s, String s1, String s2, 
            String s3, String s4, int k)
    {
        Intent intent;
        intent = new Intent("android.intent.action.EDIT");
        intent.setType("vnd.android.cursor.item/event");
        intent.putExtra("beginTime", l);
        intent.putExtra("allDay", false);
        intent.putExtra("endTime", l1);
        intent.putExtra("title", s1);
        intent.putExtra("eventLocation", s);
        intent.putExtra("description", s2);
        if (!s3.equals("transparent")) goto _L2; else goto _L1
_L1:
        intent.putExtra("availability", 1);
_L11:
        if ("".equals(s4) || android.os.Build.VERSION.SDK_INT <= 8) goto _L4; else goto _L3
_L3:
        StringBuilder stringbuilder = new StringBuilder();
        JSONObject jsonobject;
        String s5;
        jsonobject = new JSONObject(s4);
        s5 = jsonobject.optString("frequency");
        if (s5 == null) goto _L6; else goto _L5
_L5:
        if ("".equals(s5)) goto _L6; else goto _L7
_L7:
        String s6;
        if ("daily".equals(s5) || "weekly".equals(s5) || "monthly".equals(s5) || "yearly".equals(s5))
        {
            stringbuilder.append((new StringBuilder()).append("freq=").append(s5).append(";").toString());
        }
        s6 = jsonobject.optString("interval");
        if (s6 == null)
        {
            break MISSING_BLOCK_LABEL_299;
        }
        if (!"".equals(s6))
        {
            stringbuilder.append((new StringBuilder()).append("interval=").append(Integer.parseInt(s6)).append(";").toString());
        }
_L13:
        String s7 = a(jsonobject.optString("expires"));
        if (s7 == null) goto _L9; else goto _L8
_L8:
        stringbuilder.append((new StringBuilder()).append("until=").append(s7.replace("+", "Z+").replace("-", "Z-")).append(";").toString());
_L15:
        String s8 = a(jsonobject.optJSONArray("daysInWeek"));
        if (s8 == null)
        {
            break MISSING_BLOCK_LABEL_421;
        }
        stringbuilder.append((new StringBuilder()).append("byday=").append(s8).append(";").toString());
        String s9 = a(jsonobject.optJSONArray("daysInMonth"), -30, 31);
        if (s9 == null)
        {
            break MISSING_BLOCK_LABEL_477;
        }
        stringbuilder.append((new StringBuilder()).append("bymonthday=").append(s9).append(";").toString());
        String s10 = a(jsonobject.optJSONArray("daysInYear"), -364, 365);
        if (s10 == null)
        {
            break MISSING_BLOCK_LABEL_535;
        }
        stringbuilder.append((new StringBuilder()).append("byyearday=").append(s10).append(";").toString());
        String s11 = a(jsonobject.optJSONArray("weeksInMonth"), -3, 4);
        if (s11 == null)
        {
            break MISSING_BLOCK_LABEL_590;
        }
        stringbuilder.append((new StringBuilder()).append("byweekno=").append(s11).append(";").toString());
        String s12 = a(jsonobject.optJSONArray("monthsInYear"), 1, 12);
        if (s12 == null)
        {
            break MISSING_BLOCK_LABEL_645;
        }
        stringbuilder.append((new StringBuilder()).append("bymonth=").append(s12).append(";").toString());
        Log.internal("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("Recurrence rule : ").append(stringbuilder.toString()).toString());
_L12:
        if (!"".equals(stringbuilder.toString()))
        {
            intent.putExtra("rrule", stringbuilder.toString());
        }
_L4:
        startActivityForResult(intent, k);
        return;
_L2:
        if (!s3.equals("opaque")) goto _L11; else goto _L10
_L10:
        Exception exception;
        intent.putExtra("availability", 0);
          goto _L11
_L6:
        try
        {
            if (a != null)
            {
                a.raiseError("Frequency is incorrect in recurrence rule", "createCalendarEvent");
            }
            startActivityForResult(intent, k);
            return;
        }
        catch (Exception exception1)
        {
            try
            {
                Log.internal("[InMobi]-[RE]-4.3.0", "Exception parsing recurrence rule", exception1);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                onActivityResult(k, 0, null);
                return;
            }
        }
          goto _L12
        Exception exception2;
        exception2;
        if (a != null)
        {
            a.raiseError("Interval is incorrect in recurrence rule", "createCalendarEvent");
        }
        Log.internal("[InMobi]-[RE]-4.3.0", "Invalid interval in recurrence rule", exception2);
          goto _L13
_L9:
        if (a == null) goto _L15; else goto _L14
_L14:
        a.raiseError("Date format is incorrect in until", "createCalendarEvent");
          goto _L15
    }

    private void a(Intent intent)
    {
        String s;
        int k;
        Intent intent2;
        s = intent.getStringExtra("action");
        k = intent.getIntExtra("id", 0);
        if (!s.equals("takeCameraPicture"))
        {
            break MISSING_BLOCK_LABEL_83;
        }
        Uri uri = (Uri)intent.getExtras().get("URI");
        intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
        intent2.putExtra("output", uri);
        startActivityForResult(intent2, k);
_L1:
        return;
        Exception exception1;
        exception1;
        onActivityResult(k, 0, null);
        return;
        if (s.equals("getGalleryImage"))
        {
            Intent intent1 = new Intent("android.intent.action.PICK", android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
            try
            {
                startActivityForResult(intent1, k);
                return;
            }
            catch (Exception exception)
            {
                onActivityResult(k, 0, null);
            }
            return;
        }
        if (s.equals("postToSocial"))
        {
            a(intent.getIntExtra("socialType", 0), intent.getStringExtra("text"), intent.getStringExtra("link"), intent.getStringExtra("image"), k);
            return;
        }
        if (s.equals("createCalendarEvent"))
        {
            a(intent.getLongExtra("start", 0L), intent.getLongExtra("end", 0L), intent.getStringExtra("location"), intent.getStringExtra("description"), intent.getStringExtra("summary"), intent.getStringExtra("transparency"), intent.getStringExtra("recurrence"), k);
            return;
        }
          goto _L1
    }

    private void a(ViewGroup viewgroup)
    {
        LinearLayout linearlayout = new LinearLayout(this);
        linearlayout.setOrientation(0);
        linearlayout.setId(100);
        linearlayout.setWeightSum(100F);
        class e
            implements android.view.View.OnTouchListener
        {

            final IMBrowserActivity a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return true;
            }

            e()
            {
                a = IMBrowserActivity.this;
                super();
            }
        }

        linearlayout.setOnTouchListener(new e());
        linearlayout.setBackgroundResource(0x108009a);
        linearlayout.setBackgroundColor(0xff888888);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), (int)(44F * e));
        layoutparams.addRule(12);
        viewgroup.addView(linearlayout, layoutparams);
        android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        layoutparams1.weight = 25F;
        CustomView customview = new CustomView(this, e, com.inmobi.re.container.CustomView.SwitchIconType.CLOSE_ICON);
        linearlayout.addView(customview, layoutparams1);
        class c
            implements android.view.View.OnTouchListener
        {

            final IMBrowserActivity a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 1)
                {
                    view.setBackgroundColor(0xff888888);
                    a.finish();
                } else
                if (motionevent.getAction() == 0)
                {
                    view.setBackgroundColor(0xff00ffff);
                    return true;
                }
                return true;
            }

            c()
            {
                a = IMBrowserActivity.this;
                super();
            }
        }

        customview.setOnTouchListener(new c());
        CustomView customview1 = new CustomView(this, e, com.inmobi.re.container.CustomView.SwitchIconType.REFRESH);
        linearlayout.addView(customview1, layoutparams1);
        class d
            implements android.view.View.OnTouchListener
        {

            final IMBrowserActivity a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 1)
                {
                    view.setBackgroundColor(0xff888888);
                    IMBrowserActivity.a(a).doHidePlayers();
                    IMBrowserActivity.a(a).reload();
                } else
                if (motionevent.getAction() == 0)
                {
                    view.setBackgroundColor(0xff00ffff);
                    return true;
                }
                return true;
            }

            d()
            {
                a = IMBrowserActivity.this;
                super();
            }
        }

        customview1.setOnTouchListener(new d());
        CustomView customview2 = new CustomView(this, e, com.inmobi.re.container.CustomView.SwitchIconType.BACK);
        linearlayout.addView(customview2, layoutparams1);
        class a
            implements android.view.View.OnTouchListener
        {

            final IMBrowserActivity a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() != 1) goto _L2; else goto _L1
_L1:
                view.setBackgroundColor(0xff888888);
                if (!IMBrowserActivity.a(a).canGoBack()) goto _L4; else goto _L3
_L3:
                IMBrowserActivity.a(a).goBack();
_L6:
                return true;
_L4:
                a.finish();
                return true;
_L2:
                if (motionevent.getAction() == 0)
                {
                    view.setBackgroundColor(0xff00ffff);
                    return true;
                }
                if (true) goto _L6; else goto _L5
_L5:
            }

            a()
            {
                a = IMBrowserActivity.this;
                super();
            }
        }

        customview2.setOnTouchListener(new a());
        g = new CustomView(this, e, com.inmobi.re.container.CustomView.SwitchIconType.FORWARD_INACTIVE);
        linearlayout.addView(g, layoutparams1);
        class b
            implements android.view.View.OnTouchListener
        {

            final IMBrowserActivity a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 1)
                {
                    view.setBackgroundColor(0xff888888);
                    if (IMBrowserActivity.a(a).canGoForward())
                    {
                        IMBrowserActivity.a(a).goForward();
                    }
                } else
                if (motionevent.getAction() == 0)
                {
                    view.setBackgroundColor(0xff00ffff);
                    return true;
                }
                return true;
            }

            b()
            {
                a = IMBrowserActivity.this;
                super();
            }
        }

        g.setOnTouchListener(new b());
    }

    static CustomView b(IMBrowserActivity imbrowseractivity)
    {
        return imbrowseractivity.g;
    }

    public static int generateId(StartActivityForResultCallback startactivityforresultcallback)
    {
        i = 1 + i;
        h.put(Integer.valueOf(i), startactivityforresultcallback);
        return i;
    }

    public static void requestOnAdDismiss(Message message)
    {
        c = message;
    }

    public static void setWebViewListener(com.inmobi.re.container.IMWebView.IMWebViewListener imwebviewlistener)
    {
        b = imwebviewlistener;
    }

    protected void onActivityResult(int k, int l, Intent intent)
    {
        super.onActivityResult(k, l, intent);
        try
        {
            ((StartActivityForResultCallback)h.get(Integer.valueOf(k))).onActivityResult(l, intent);
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[RE]-4.3.0", "onActivityResult failed", exception);
        }
        h.remove(Integer.valueOf(l));
        finish();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if (a != null)
        {
            a.onOrientationEventChange();
        }
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        if (android.os.Build.VERSION.SDK_INT < 9 || android.os.Build.VERSION.SDK_INT >= 11)
        {
            getWindow().setFlags(1024, 1024);
        }
        WindowManager windowmanager = (WindowManager)getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        Intent intent = getIntent();
        if (intent.getStringExtra("action") != null)
        {
            a(intent);
        }
        e = getResources().getDisplayMetrics().density;
        String s = intent.getStringExtra("extra_url");
        f = Boolean.valueOf(intent.getBooleanExtra("FIRST_INSTANCE", false));
        Log.debug("[InMobi]-[RE]-4.3.0", "IMBrowserActivity-> onCreate");
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
        if (s != null)
        {
            boolean flag = intent.getBooleanExtra("QAMODE", false);
            d = new RelativeLayout(this);
            a = new IMWebView(this, b, true, true);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
            layoutparams.addRule(10);
            layoutparams.addRule(2, 100);
            d.setBackgroundColor(-1);
            d.addView(a, layoutparams);
            a(d);
            a.getSettings().setJavaScriptEnabled(true);
            a.setExternalWebViewClient(j);
            a.getSettings().setLoadWithOverviewMode(true);
            a.getSettings().setUseWideViewPort(true);
            HashMap hashmap = null;
            if (flag)
            {
                hashmap = new HashMap();
                hashmap.put("mk-carrier", "117.97.87.6");
                hashmap.put("x-real-ip", "117.97.87.6");
            }
            if (android.os.Build.VERSION.SDK_INT >= 8)
            {
                a.loadUrl(s, hashmap);
            } else
            {
                a.loadUrl(s);
            }
            setContentView(d);
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        try
        {
            b = null;
            if (a != null)
            {
                a.mAudioVideoController.releaseAllPlayers();
            }
            if (c != null && f.booleanValue())
            {
                c.sendToTarget();
                c = null;
            }
            return;
        }
        catch (Exception exception)
        {
            Log.debug("[InMobi]-[RE]-4.3.0", "Exception in onDestroy ", exception);
        }
    }

    protected void onPause()
    {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
    }

    protected void onResume()
    {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
    }


    // Unreferenced inner class com/inmobi/androidsdk/g
    class g extends WebViewClient
    {

        final IMBrowserActivity a;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            if (IMBrowserActivity.b(a) != null)
            {
                if (webview.canGoForward())
                {
                    IMBrowserActivity.b(a).setSwitchInt(com.inmobi.re.container.CustomView.SwitchIconType.FORWARD_ACTIVE);
                    IMBrowserActivity.b(a).invalidate();
                } else
                {
                    IMBrowserActivity.b(a).setSwitchInt(com.inmobi.re.container.CustomView.SwitchIconType.FORWARD_INACTIVE);
                    IMBrowserActivity.b(a).invalidate();
                }
            }
            CookieSyncManager.getInstance().sync();
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            super.onPageStarted(webview, s, bitmap);
            if (IMBrowserActivity.b(a) != null)
            {
                IMBrowserActivity.b(a).setSwitchInt(com.inmobi.re.container.CustomView.SwitchIconType.FORWARD_INACTIVE);
                IMBrowserActivity.b(a).invalidate();
            }
        }

            g()
            {
                a = IMBrowserActivity.this;
                super();
            }
    }

}
