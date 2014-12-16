// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.StateListDrawable;
import android.media.MediaScannerConnection;
import android.os.Environment;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
import com.mopub.common.util.ResponseHeader;
import com.mopub.common.util.Streams;
import com.mopub.mobileads.factories.HttpClientFactory;
import com.mopub.mobileads.util.HttpResponses;
import com.mopub.mobileads.util.Interstitials;
import com.mopub.mobileads.util.Mraids;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.mopub.mobileads:
//            ae, ay, bb, MraidView, 
//            bg, bc, ak, MraidVideoPlayerActivity, 
//            bd, ax

class aw extends ae
{

    private static final String d[] = {
        "yyyy-MM-dd'T'HH:mm:ssZZZZZ", "yyyy-MM-dd'T'HH:mmZZZZZ"
    };
    protected float a;
    protected int b;
    protected int c;
    private MraidView.ViewState e;
    private final MraidView.ExpansionStyle f;
    private final MraidView.NativeCloseButtonStyle g;
    private MraidView h;
    private FrameLayout i;
    private Handler j;
    private final int k;
    private ay l;
    private ImageView m;
    private boolean n;
    private int o;
    private FrameLayout p;
    private FrameLayout q;
    private RelativeLayout r;
    private final android.view.View.OnClickListener s = new android.view.View.OnClickListener() {

        final aw a;

        public void onClick(View view)
        {
            a.b();
        }

            
            {
                a = aw.this;
                super();
            }
    };

    aw(MraidView mraidview, MraidView.ExpansionStyle expansionstyle, MraidView.NativeCloseButtonStyle nativeclosebuttonstyle)
    {
        super(mraidview);
        e = MraidView.ViewState.HIDDEN;
        j = new Handler();
        l = new ay(this);
        b = -1;
        c = -1;
        f = expansionstyle;
        g = nativeclosebuttonstyle;
        Context context = p();
        int i1;
        if (context instanceof Activity)
        {
            i1 = ((Activity)context).getRequestedOrientation();
        } else
        {
            i1 = -1;
        }
        k = i1;
        k();
        q = g();
        r = h();
        p = i();
    }

    static Context a(aw aw1)
    {
        return aw1.p();
    }

    static String a(aw aw1, URI uri, HttpResponse httpresponse)
    {
        return aw1.a(uri, httpresponse);
    }

    private String a(URI uri, HttpResponse httpresponse)
    {
        String s1 = uri.getPath();
        if (s1 != null) goto _L2; else goto _L1
_L1:
        String s2 = null;
_L4:
        return s2;
_L2:
        String as[];
        int i1;
        int j1;
        s2 = (new File(s1)).getName();
        Header header = httpresponse.getFirstHeader("Content-Type");
        if (header == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        as = header.getValue().split(";");
        i1 = as.length;
        j1 = 0;
_L5:
        if (j1 < i1)
        {
label0:
            {
                String s3 = as[j1];
                if (!s3.contains("image/"))
                {
                    break label0;
                }
                String s4 = (new StringBuilder()).append(".").append(s3.split("/")[1]).toString();
                if (!s2.endsWith(s4))
                {
                    return (new StringBuilder()).append(s2).append(s4).toString();
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        j1++;
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    private void a(int i1)
    {
        l();
        getMraidView().a(bb.createWithSize(b, c));
    }

    private void a(View view, int i1, int j1)
    {
        int k1 = (int)(0.5F + 50F * a);
        if (i1 < k1)
        {
            i1 = k1;
        }
        if (j1 < k1)
        {
            j1 = k1;
        }
        View view1 = new View(p());
        view1.setBackgroundColor(0);
        view1.setOnTouchListener(new android.view.View.OnTouchListener() {

            final aw a;

            public boolean onTouch(View view2, MotionEvent motionevent)
            {
                return true;
            }

            
            {
                a = aw.this;
                super();
            }
        });
        r.addView(view1, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        q.addView(view, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        a(q);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(i1, j1);
        layoutparams.addRule(13);
        r.addView(q, layoutparams);
    }

    static void a(aw aw1, int i1)
    {
        aw1.a(i1);
    }

    static void a(aw aw1, String s1)
    {
        aw1.c(s1);
    }

    static Handler b(aw aw1)
    {
        return aw1.j;
    }

    private String b(int i1)
    {
        switch (i1)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("invalid day of week ").append(i1).toString());

        case 0: // '\0'
            return "SU";

        case 1: // '\001'
            return "MO";

        case 2: // '\002'
            return "TU";

        case 3: // '\003'
            return "WE";

        case 4: // '\004'
            return "TH";

        case 5: // '\005'
            return "FR";

        case 6: // '\006'
            return "SA";
        }
    }

    private Map b(Map map)
    {
        HashMap hashmap = new HashMap();
        if (!map.containsKey("description") || !map.containsKey("start"))
        {
            throw new IllegalArgumentException("Missing start and description fields");
        }
        hashmap.put("title", map.get("description"));
        if (map.containsKey("start") && map.get("start") != null)
        {
            Date date = f((String)map.get("start"));
            if (date != null)
            {
                hashmap.put("beginTime", Long.valueOf(date.getTime()));
                if (map.containsKey("end") && map.get("end") != null)
                {
                    Date date1 = f((String)map.get("end"));
                    if (date1 == null)
                    {
                        break MISSING_BLOCK_LABEL_344;
                    }
                    hashmap.put("endTime", Long.valueOf(date1.getTime()));
                }
                if (map.containsKey("location"))
                {
                    hashmap.put("eventLocation", map.get("location"));
                }
                if (map.containsKey("summary"))
                {
                    hashmap.put("description", map.get("summary"));
                }
                if (map.containsKey("transparency"))
                {
                    int i1;
                    if (((String)map.get("transparency")).equals("transparent"))
                    {
                        i1 = 1;
                    } else
                    {
                        i1 = 0;
                    }
                    hashmap.put("availability", Integer.valueOf(i1));
                }
                hashmap.put("rrule", c(map));
                return hashmap;
            } else
            {
                throw new IllegalArgumentException("Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
            }
        } else
        {
            throw new IllegalArgumentException("Invalid calendar event: start is null.");
        }
        throw new IllegalArgumentException("Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
    }

    static void b(aw aw1, String s1)
    {
        aw1.d(s1);
    }

    static int c(aw aw1)
    {
        return aw1.m();
    }

    private String c(int i1)
    {
        if (i1 != 0 && i1 >= -31 && i1 <= 31)
        {
            return (new StringBuilder()).append("").append(i1).toString();
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid day of month ").append(i1).toString());
        }
    }

    private String c(Map map)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (!map.containsKey("frequency")) goto _L2; else goto _L1
_L1:
        String s1 = (String)map.get("frequency");
        int i1;
        String s2;
        String s3;
        if (map.containsKey("interval"))
        {
            i1 = Integer.parseInt((String)map.get("interval"));
        } else
        {
            i1 = -1;
        }
        if (!"daily".equals(s1)) goto _L4; else goto _L3
_L3:
        stringbuilder.append("FREQ=DAILY;");
        if (i1 != -1)
        {
            stringbuilder.append((new StringBuilder()).append("INTERVAL=").append(i1).append(";").toString());
        }
_L2:
        return stringbuilder.toString();
_L4:
        if ("weekly".equals(s1))
        {
            stringbuilder.append("FREQ=WEEKLY;");
            if (i1 != -1)
            {
                stringbuilder.append((new StringBuilder()).append("INTERVAL=").append(i1).append(";").toString());
            }
            if (map.containsKey("daysInWeek"))
            {
                s3 = g((String)map.get("daysInWeek"));
                if (s3 == null)
                {
                    throw new IllegalArgumentException("invalid ");
                }
                stringbuilder.append((new StringBuilder()).append("BYDAY=").append(s3).append(";").toString());
            }
            continue; /* Loop/switch isn't completed */
        }
        if (!"monthly".equals(s1))
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append("FREQ=MONTHLY;");
        if (i1 != -1)
        {
            stringbuilder.append((new StringBuilder()).append("INTERVAL=").append(i1).append(";").toString());
        }
        if (map.containsKey("daysInMonth"))
        {
            s2 = h((String)map.get("daysInMonth"));
            if (s2 == null)
            {
                throw new IllegalArgumentException();
            }
            stringbuilder.append((new StringBuilder()).append("BYMONTHDAY=").append(s2).append(";").toString());
        }
        if (true) goto _L2; else goto _L5
_L5:
        throw new IllegalArgumentException("frequency is only supported for daily, weekly, and monthly.");
    }

    private void c(String s1)
    {
        j.post(new Runnable(s1) {

            final String a;
            final aw b;

            public void run()
            {
                Toast.makeText(aw.a(b), a, 0).show();
            }

            
            {
                b = aw.this;
                a = s1;
                super();
            }
        });
    }

    private void c(boolean flag)
    {
        Context context = p();
        Activity activity;
        int i1;
        try
        {
            activity = (Activity)context;
        }
        catch (ClassCastException classcastexception)
        {
            Log.d("MraidDisplayController", "Unable to modify device orientation.");
            return;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        i1 = activity.getResources().getConfiguration().orientation;
_L2:
        activity.setRequestedOrientation(i1);
        return;
        i1 = k;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void d(String s1)
    {
        File file = q();
        file.mkdirs();
        (new Thread(new Runnable(s1, file) {

            final String a;
            final File b;
            final aw c;
            private URI d;
            private InputStream e;
            private OutputStream f;
            private MediaScannerConnection g;

            private void a(String s2)
            {
                ax ax1 = new ax(c, s2, null);
                g = new MediaScannerConnection(aw.a(c).getApplicationContext(), ax1);
                ax.a(ax1, g);
                g.connect();
            }

            public void run()
            {
                HttpResponse httpresponse;
                String s2;
                d = URI.create(a);
                httpresponse = HttpClientFactory.create().execute(new HttpGet(d));
                e = httpresponse.getEntity().getContent();
                s2 = HttpResponses.extractHeader(httpresponse, ResponseHeader.LOCATION);
                if (s2 == null)
                {
                    break MISSING_BLOCK_LABEL_72;
                }
                d = URI.create(s2);
                String s3 = aw.a(c, d, httpresponse);
                File file1 = new File(b, s3);
                String s4 = file1.toString();
                f = new FileOutputStream(file1);
                Streams.copyContent(e, f);
                a(s4);
                Streams.closeStream(e);
                Streams.closeStream(f);
                return;
                Exception exception1;
                exception1;
                aw.b(c).post(new Runnable(this) {

                    final _cls4 a;

                    public void run()
                    {
                        aw.a(a.c, "Image failed to download.");
                        a.c.getMraidView().a(ak.STORE_PICTURE, "Error downloading and saving image file.");
                        MoPubLog.d("Error downloading and saving image file.");
                    }

            
            {
                a = _pcls4;
                super();
            }
                });
                Streams.closeStream(e);
                Streams.closeStream(f);
                return;
                Exception exception;
                exception;
                Streams.closeStream(e);
                Streams.closeStream(f);
                throw exception;
            }

            
            {
                c = aw.this;
                a = s1;
                b = file;
                super();
            }
        })).start();
    }

    private void e(String s1)
    {
        (new android.app.AlertDialog.Builder(p())).setTitle("Save Image").setMessage("Download image to Picture gallery?").setNegativeButton("Cancel", null).setPositiveButton("Okay", new android.content.DialogInterface.OnClickListener(s1) {

            final String a;
            final aw b;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                aw.b(b, a);
            }

            
            {
                b = aw.this;
                a = s1;
                super();
            }
        }).setCancelable(true).show();
    }

    private Date f(String s1)
    {
        Date date;
        int i1;
        date = null;
        i1 = 0;
_L2:
        if (i1 >= d.length)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        Date date1 = (new SimpleDateFormat(d[i1])).parse(s1);
        date = date1;
        if (date == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        return date;
        ParseException parseexception;
        parseexception;
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String g(String s1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        boolean aflag[] = new boolean[7];
        String as[] = s1.split(",");
        for (int i1 = 0; i1 < as.length; i1++)
        {
            int j1 = Integer.parseInt(as[i1]);
            if (j1 == 7)
            {
                j1 = 0;
            }
            if (!aflag[j1])
            {
                stringbuilder.append((new StringBuilder()).append(b(j1)).append(",").toString());
                aflag[j1] = true;
            }
        }

        if (as.length == 0)
        {
            throw new IllegalArgumentException("must have at least 1 day of the week if specifying repeating weekly");
        } else
        {
            stringbuilder.deleteCharAt(-1 + stringbuilder.length());
            return stringbuilder.toString();
        }
    }

    private String h(String s1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        boolean aflag[] = new boolean[63];
        String as[] = s1.split(",");
        for (int i1 = 0; i1 < as.length; i1++)
        {
            int j1 = Integer.parseInt(as[i1]);
            if (!aflag[j1 + 31])
            {
                stringbuilder.append((new StringBuilder()).append(c(j1)).append(",").toString());
                aflag[j1 + 31] = true;
            }
        }

        if (as.length == 0)
        {
            throw new IllegalArgumentException("must have at least 1 day of the month if specifying repeating weekly");
        } else
        {
            stringbuilder.deleteCharAt(-1 + stringbuilder.length());
            return stringbuilder.toString();
        }
    }

    private void k()
    {
        e = MraidView.ViewState.LOADING;
        l();
        l.register(p());
    }

    private void l()
    {
        Context context = p();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        a = displaymetrics.density;
        int i1;
        int j1;
        int k1;
        int l1;
        if (context instanceof Activity)
        {
            Window window = ((Activity)context).getWindow();
            Rect rect = new Rect();
            window.getDecorView().getWindowVisibleDisplayFrame(rect);
            j1 = rect.top;
            i1 = window.findViewById(0x1020002).getTop() - j1;
        } else
        {
            i1 = 0;
            j1 = 0;
        }
        k1 = displaymetrics.widthPixels;
        l1 = displaymetrics.heightPixels - j1 - i1;
        b = (int)((double)k1 * (160D / (double)displaymetrics.densityDpi));
        c = (int)((double)l1 * (160D / (double)displaymetrics.densityDpi));
    }

    private int m()
    {
        return ((WindowManager)p().getSystemService("window")).getDefaultDisplay().getOrientation();
    }

    private void n()
    {
        a(false);
        q.removeAllViewsInLayout();
        r.removeAllViewsInLayout();
        i.removeView(r);
        getMraidView().requestLayout();
        ViewGroup viewgroup = (ViewGroup)p.getParent();
        viewgroup.addView(getMraidView(), o);
        viewgroup.removeView(p);
        viewgroup.invalidate();
    }

    private void o()
    {
        ViewGroup viewgroup = (ViewGroup)getMraidView().getParent();
        if (viewgroup == null)
        {
            return;
        }
        int i1 = viewgroup.getChildCount();
        int j1 = 0;
        do
        {
            if (j1 >= i1 || viewgroup.getChildAt(j1) == getMraidView())
            {
                o = j1;
                viewgroup.addView(p, j1, new android.view.ViewGroup.LayoutParams(getMraidView().getWidth(), getMraidView().getHeight()));
                viewgroup.removeView(getMraidView());
                return;
            }
            j1++;
        } while (true);
    }

    private Context p()
    {
        return getMraidView().getContext();
    }

    private File q()
    {
        return new File(Environment.getExternalStorageDirectory(), "Pictures");
    }

    protected void a()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(bb.createWithSize(b, c));
        arraylist.add(bg.createWithViewable(getMraidView().getIsVisible()));
        getMraidView().a(arraylist);
        e = MraidView.ViewState.DEFAULT;
        getMraidView().a(bc.createWithViewState(e));
        j();
    }

    void a(FrameLayout framelayout)
    {
        int i1 = Dips.dipsToIntPixels(50F, p());
        Interstitials.addCloseEventRegion(framelayout, new android.widget.FrameLayout.LayoutParams(i1, i1, 53), s);
    }

    protected void a(String s1)
    {
        Context context = p();
        if (!Mraids.isStorePictureSupported(context))
        {
            getMraidView().a(ak.STORE_PICTURE, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted.");
            MoPubLog.d("Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted.");
            return;
        }
        if (context instanceof Activity)
        {
            e(s1);
            return;
        } else
        {
            c("Downloading image to Picture gallery...");
            d(s1);
            return;
        }
    }

    protected void a(String s1, int i1, int j1, boolean flag, boolean flag1)
    {
        if (f != MraidView.ExpansionStyle.DISABLED)
        {
            if (s1 != null && !URLUtil.isValidUrl(s1))
            {
                getMraidView().a(ak.EXPAND, "URL passed to expand() was invalid.");
                return;
            }
            i = (FrameLayout)getMraidView().getRootView().findViewById(0x1020002);
            b(flag);
            c(flag1);
            o();
            MraidView mraidview = getMraidView();
            if (s1 != null)
            {
                h = new MraidView(p(), getMraidView().getAdConfiguration(), MraidView.ExpansionStyle.DISABLED, MraidView.NativeCloseButtonStyle.AD_CONTROLLED, MraidView.PlacementType.INLINE);
                h.setMraidListener(new MraidView.BaseMraidListener() {

                    final aw a;

                    public void onClose(MraidView mraidview1, MraidView.ViewState viewstate)
                    {
                        a.b();
                    }

            
            {
                a = aw.this;
                super();
            }
                });
                h.loadUrl(s1);
                mraidview = h;
            }
            a(((View) (mraidview)), (int)((float)i1 * a), (int)((float)j1 * a));
            i.addView(r, new android.widget.RelativeLayout.LayoutParams(-1, -1));
            if (g == MraidView.NativeCloseButtonStyle.ALWAYS_VISIBLE || !n && g != MraidView.NativeCloseButtonStyle.ALWAYS_HIDDEN)
            {
                a(true);
            }
            e = MraidView.ViewState.EXPANDED;
            getMraidView().a(bc.createWithViewState(e));
            if (getMraidView().getMraidListener() != null)
            {
                getMraidView().getMraidListener().onExpand(getMraidView());
                return;
            }
        }
    }

    protected void a(Map map)
    {
        Context context;
        context = getMraidView().getContext();
        if (!Mraids.isCalendarAvailable(context))
        {
            break MISSING_BLOCK_LABEL_274;
        }
        Map map1;
        Intent intent;
        Iterator iterator;
        map1 = b(map);
        intent = (new Intent("android.intent.action.INSERT")).setType("vnd.android.cursor.item/event");
        iterator = map1.keySet().iterator();
_L3:
        String s1;
        Object obj;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_258;
        }
        s1 = (String)iterator.next();
        obj = map1.get(s1);
        if (!(obj instanceof Long)) goto _L2; else goto _L1
_L1:
        ActivityNotFoundException activitynotfoundexception;
        intent.putExtra(s1, ((Long)obj).longValue());
          goto _L3
_L2:
        IllegalArgumentException illegalargumentexception;
label0:
        {
            if (!(obj instanceof Integer))
            {
                break label0;
            }
            intent.putExtra(s1, ((Integer)obj).intValue());
        }
          goto _L3
        try
        {
            intent.putExtra(s1, (String)obj);
        }
        // Misplaced declaration of an exception variable
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Log.d("MraidDisplayController", "no calendar app installed");
            getMraidView().a(ak.CREATE_CALENDAR_EVENT, "Action is unsupported on this device - no calendar app installed");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.d("MraidDisplayController", (new StringBuilder()).append("create calendar: invalid parameters ").append(illegalargumentexception.getMessage()).toString());
            getMraidView().a(ak.CREATE_CALENDAR_EVENT, illegalargumentexception.getMessage());
            return;
        }
        catch (Exception exception)
        {
            Log.d("MraidDisplayController", "could not create calendar event");
            getMraidView().a(ak.CREATE_CALENDAR_EVENT, "could not create calendar event");
            return;
        }
          goto _L3
        intent.setFlags(0x10000000);
        context.startActivity(intent);
        return;
        Log.d("MraidDisplayController", "unsupported action createCalendarEvent for devices pre-ICS");
        getMraidView().a(ak.CREATE_CALENDAR_EVENT, "Action is unsupported on this device (need Android version Ice Cream Sandwich or above)");
        return;
    }

    protected void a(boolean flag)
    {
        if (i != null)
        {
            MraidView mraidview;
            if (flag)
            {
                if (m == null)
                {
                    StateListDrawable statelistdrawable = new StateListDrawable();
                    statelistdrawable.addState(new int[] {
                        0xfefeff59
                    }, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.decodeImage(i.getContext()));
                    statelistdrawable.addState(new int[] {
                        0x10100a7
                    }, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.decodeImage(i.getContext()));
                    m = new ImageButton(p());
                    m.setImageDrawable(statelistdrawable);
                    m.setBackgroundDrawable(null);
                    m.setOnClickListener(new android.view.View.OnClickListener() {

                        final aw a;

                        public void onClick(View view)
                        {
                            a.b();
                        }

            
            {
                a = aw.this;
                super();
            }
                    });
                }
                int i1 = Dips.dipsToIntPixels(50F, p());
                android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(i1, i1, 5);
                q.addView(m, layoutparams);
            } else
            {
                q.removeView(m);
            }
            mraidview = getMraidView();
            if (mraidview.getOnCloseButtonStateChangeListener() != null)
            {
                mraidview.getOnCloseButtonStateChangeListener().onCloseButtonStateChange(mraidview, flag);
                return;
            }
        }
    }

    protected void b()
    {
        if (e != MraidView.ViewState.EXPANDED) goto _L2; else goto _L1
_L1:
        n();
        c(false);
        e = MraidView.ViewState.DEFAULT;
        getMraidView().a(bc.createWithViewState(e));
_L4:
        if (getMraidView().getMraidListener() != null)
        {
            getMraidView().getMraidListener().onClose(getMraidView(), e);
        }
        return;
_L2:
        if (e == MraidView.ViewState.DEFAULT)
        {
            getMraidView().setVisibility(4);
            e = MraidView.ViewState.HIDDEN;
            getMraidView().a(bc.createWithViewState(e));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void b(String s1)
    {
        MraidVideoPlayerActivity.a(p(), s1, getMraidView().getAdConfiguration());
    }

    protected void b(boolean flag)
    {
        n = flag;
        MraidView mraidview = getMraidView();
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (mraidview.getOnCloseButtonStateChangeListener() != null)
        {
            mraidview.getOnCloseButtonStateChangeListener().onCloseButtonStateChange(mraidview, flag1);
        }
    }

    protected void c()
    {
        getMraidView().a(ak.GET_CURRENT_POSITION, "Unsupported action getCurrentPosition");
    }

    protected void d()
    {
        getMraidView().a(ak.GET_DEFAULT_POSITION, "Unsupported action getDefaultPosition");
    }

    public void destroy()
    {
        l.unregister();
_L1:
        return;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        if (!illegalargumentexception.getMessage().contains("Receiver not registered"))
        {
            throw illegalargumentexception;
        }
          goto _L1
    }

    protected void e()
    {
        getMraidView().a(ak.GET_MAX_SIZE, "Unsupported action getMaxSize");
    }

    protected void f()
    {
        getMraidView().a(ak.GET_SCREEN_SIZE, "Unsupported action getScreenSize");
    }

    FrameLayout g()
    {
        return new FrameLayout(p());
    }

    public android.view.View.OnClickListener getCloseOnClickListener()
    {
        return s;
    }

    RelativeLayout h()
    {
        return new RelativeLayout(p());
    }

    FrameLayout i()
    {
        return new FrameLayout(p());
    }

    protected void j()
    {
        Context context = p();
        getMraidView().a((new bd()).withTel(Mraids.isTelAvailable(context)).withSms(Mraids.isSmsAvailable(context)).withCalendar(Mraids.isCalendarAvailable(context)).withInlineVideo(Mraids.isInlineVideoAvailable(context)).withStorePicture(Mraids.isStorePictureSupported(context)));
    }

}
