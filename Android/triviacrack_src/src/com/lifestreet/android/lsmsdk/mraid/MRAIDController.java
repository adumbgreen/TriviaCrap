// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.Utils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDView

public final class MRAIDController
{

    private static final Pattern sBodyTagPattern = Pattern.compile("(?mi)<body([>]|([\\s]+[^>]*[>])|(/>))");
    private static final Handler sHandler = new Handler(Looper.getMainLooper());
    private static final Pattern sHeadTagPattern = Pattern.compile("(?mi)<head([>]|([\\s]+[^>]*[>])|(/>))");
    private static final Pattern sHtmlTagPattern = Pattern.compile("(?mi)<html([>]|([\\s]+[^>]*[>])|(/>))");
    private BroadcastReceiver mBroadcastReceiver;
    private final WeakReference mContextRef;
    private final WeakReference mMraidViewRef;
    private MRAIDPlacementType mPlacementType;
    private boolean mUrlLoading;
    private boolean mUseCustomClose;

    public MRAIDController(Context context, MRAIDView mraidview)
    {
        mUrlLoading = false;
        mUseCustomClose = false;
        mPlacementType = MRAIDPlacementType.INLINE;
        mBroadcastReceiver = new BroadcastReceiver() {

            final MRAIDController this$0;

            private void runAction(String s)
            {
                if ("com.lifestreet.action.PRESENT_SCREEN".equals(s))
                {
                    onExpandView();
                } else
                if ("com.lifestreet.action.DISMISS_SCREEN".equals(s))
                {
                    MRAIDView mraidview1 = getMraidView();
                    if (mraidview1 != null)
                    {
                        mraidview1.onCloseMraidActivity();
                        return;
                    }
                }
            }

            public void onReceive(Context context1, Intent intent)
            {
                if (intent != null)
                {
                    String s = intent.getAction();
                    if (intent.getCategories().contains("com.lifestreet.category.MRAIDActivity"))
                    {
                        long l = intent.getLongExtra("com.lifestreet.extra.VIEW_ID", -1L);
                        MRAIDView mraidview1 = getMraidView();
                        if (mraidview1 != null && mraidview1.getViewId() == l)
                        {
                            runAction(s);
                        }
                    }
                }
            }

            
            {
                this$0 = MRAIDController.this;
                super();
            }
        };
        mContextRef = new WeakReference(context);
        mMraidViewRef = new WeakReference(mraidview);
        registerReceiver();
    }

    private void broadcastAction(String s)
    {
        Context context = getContext();
        MRAIDView mraidview = getMraidView();
        if (context != null && mraidview != null)
        {
            Intent intent = new Intent();
            intent.setAction(s);
            intent.addCategory("com.lifestreet.category.MRAIDActivity");
            intent.putExtra("com.lifestreet.extra.VIEW_ID", mraidview.getViewId());
            context.sendBroadcast(intent);
        }
    }

    private String convertToHtml(String s)
    {
        return (new StringBuilder()).append("<html><head>\n<meta name=\"viewport\" content=\"initial-scale=1.0,user-scalable=no\"/></head>\n<body style=\"background-color: transparent; margin: 0; padding: 0; overflow: hidden;\">\n").append(s).append("\n").append("</body></html>").toString();
    }

    private void evalJS(String s)
    {
        MRAIDView mraidview = getMraidView();
        if (mraidview != null)
        {
            mraidview.evaluateJavaScriptString(s);
        }
    }

    private Context getContext()
    {
        return (Context)mContextRef.get();
    }

    private int getHtmlTagPosition(String s, Pattern pattern)
    {
        int i = -1;
        Matcher matcher = pattern.matcher(s);
        if (matcher.find())
        {
            i = matcher.end();
        }
        return i;
    }

    private String httpGet(String s, String s1)
    {
        DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
        HttpGet httpget = new HttpGet(s);
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        httpget.addHeader("User-Agent", s1);
        HttpResponse httpresponse;
        httpresponse = defaulthttpclient.execute(httpget);
        if (httpresponse.getStatusLine().getStatusCode() != 200)
        {
            throw new Exception("Bad status");
        }
        break MISSING_BLOCK_LABEL_92;
        Exception exception1;
        exception1;
        LSMLogger.LOGGER.log(Level.SEVERE, "Error loading content from URL", exception1);
        defaulthttpclient.getConnectionManager().shutdown();
        return null;
        org.apache.http.HttpEntity httpentity = httpresponse.getEntity();
        if (httpentity != null)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        throw new Exception("Empty response body");
        Exception exception;
        exception;
        defaulthttpclient.getConnectionManager().shutdown();
        throw exception;
        String s2 = EntityUtils.toString(httpentity, "UTF-8");
        defaulthttpclient.getConnectionManager().shutdown();
        return s2;
    }

    private String insertMRAIDScript(String s)
    {
        int i = getHtmlTagPosition(s, sBodyTagPattern);
        int j = getHtmlTagPosition(s, sHeadTagPattern);
        IOException ioexception;
        String s1;
        StringBuilder stringbuilder;
        String s2;
        if (j == -1)
        {
            if (i != -1)
            {
                j = i;
            } else
            {
                j = -1;
            }
        }
        s2 = Utils.readInputStream(getClass().getResourceAsStream("mraid.js"));
        s1 = s2;
_L2:
        stringbuilder = new StringBuilder(s);
        if (j != -1)
        {
            stringbuilder.insert(j, (new StringBuilder()).append("<script type=\"text/javascript\">\n").append(s1).append("\n</script>").toString());
        }
        return stringbuilder.toString();
        ioexception;
        LSMLogger.LOGGER.warning((new StringBuilder()).append("Error while loading mraid script: ").append(ioexception.getMessage()).toString());
        s1 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void onExpandView()
    {
        showHideCloseButton();
        expandedState();
    }

    private void registerReceiver()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.lifestreet.action.PRESENT_SCREEN");
        intentfilter.addAction("com.lifestreet.action.DISMISS_SCREEN");
        intentfilter.addCategory("com.lifestreet.category.MRAIDActivity");
        Context context = getContext();
        if (context != null)
        {
            context.registerReceiver(mBroadcastReceiver, intentfilter);
        }
    }

    public void closeExpandedView()
    {
        broadcastAction("com.lifestreet.action.CLOSE");
    }

    public void defaultState()
    {
        LSMLogger.LOGGER.info("defaultState");
        evalJS("mraid._bridge.defaultState();");
    }

    public void destroy()
    {
        Context context = getContext();
        if (context != null)
        {
            context.unregisterReceiver(mBroadcastReceiver);
        }
        mBroadcastReceiver = null;
    }

    public void expandedState()
    {
        LSMLogger.LOGGER.info("expandedState");
        evalJS("mraid._bridge.expandedState();");
    }

    public MRAIDView getMraidView()
    {
        return (MRAIDView)mMraidViewRef.get();
    }

    public void hiddenState()
    {
        LSMLogger.LOGGER.info("hiddenState");
        evalJS("mraid._bridge.hiddenState();");
    }

    public boolean isInterstitial()
    {
        return mPlacementType == MRAIDPlacementType.INTERSTITIAL;
    }

    public boolean isUseCustomClose()
    {
        return mUseCustomClose;
    }

    public void loadURLAndExpand(String s, String s1, final int expandWidth, final int expandHeight)
    {
        this;
        JVM INSTR monitorenter ;
        if (!mUrlLoading)
        {
            mUrlLoading = true;
            final String responseBody = httpGet(s, s1);
            sHandler.post(new Runnable() {

                final MRAIDController this$0;
                final int val$expandHeight;
                final int val$expandWidth;
                final String val$responseBody;

                public void run()
                {
                    MRAIDView mraidview = getMraidView();
                    if (mraidview != null)
                    {
                        mraidview.expandToSizeWithContent(responseBody, expandWidth, expandHeight);
                    }
                }

            
            {
                this$0 = MRAIDController.this;
                responseBody = s;
                expandWidth = i;
                expandHeight = j;
                super();
            }
            });
            mUrlLoading = false;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String prepareHtml(String s)
    {
        boolean flag = sHtmlTagPattern.matcher(s).find();
        boolean flag1 = sHeadTagPattern.matcher(s).find();
        boolean flag2 = sBodyTagPattern.matcher(s).find();
        if (!flag && !flag1 && !flag2)
        {
            s = convertToHtml(s);
        }
        return insertMRAIDScript(s);
    }

    public void ready()
    {
        LSMLogger.LOGGER.info("ready");
        evalJS("mraid._bridge.ready();");
    }

    public void reportError(String s, String s1)
    {
        LSMLogger.LOGGER.info((new StringBuilder()).append("Reporting error: ").append(s).append(" (").append(s1).append(")").toString());
        evalJS((new StringBuilder()).append("mraid._bridge.reportError(\"").append(s).append("\", \"").append(s1).append("\");").toString());
    }

    public void setDefaultExpandProperties()
    {
        LSMLogger.LOGGER.info("setDefaultExpandProperties");
        Context context = getContext();
        if (context != null)
        {
            DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
            int i = Math.round((float)displaymetrics.widthPixels / displaymetrics.density);
            int j = Math.round((float)displaymetrics.heightPixels / displaymetrics.density);
            evalJS((new StringBuilder()).append("mraid.setExpandProperties({width: ").append(i).append(", ").append("height: ").append(j).append(" });").toString());
        }
    }

    public void setPlacementType()
    {
        LSMLogger.LOGGER.info("setPlacementType");
        class _cls3
        {

            static final int $SwitchMap$com$lifestreet$android$lsmsdk$mraid$MRAIDController$MRAIDPlacementType[];

            static 
            {
                $SwitchMap$com$lifestreet$android$lsmsdk$mraid$MRAIDController$MRAIDPlacementType = new int[MRAIDPlacementType.values().length];
                try
                {
                    $SwitchMap$com$lifestreet$android$lsmsdk$mraid$MRAIDController$MRAIDPlacementType[MRAIDPlacementType.INLINE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$lifestreet$android$lsmsdk$mraid$MRAIDController$MRAIDPlacementType[MRAIDPlacementType.INTERSTITIAL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        switch (_cls3..SwitchMap.com.lifestreet.android.lsmsdk.mraid.MRAIDController.MRAIDPlacementType[mPlacementType.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            evalJS("mraid._bridge.placementTypeInline();");
            return;

        case 2: // '\002'
            evalJS("mraid._bridge.placementTypeInterstitial();");
            break;
        }
    }

    public void setPlacementType(MRAIDPlacementType mraidplacementtype)
    {
        mPlacementType = mraidplacementtype;
    }

    public void setUseCustomClose(boolean flag)
    {
        mUseCustomClose = flag;
    }

    public void showHideCloseButton()
    {
        if (isUseCustomClose())
        {
            broadcastAction("com.lifestreet.action.HIDE_CLOSE_BUTTON");
            return;
        } else
        {
            broadcastAction("com.lifestreet.action.SHOW_CLOSE_BUTTON");
            return;
        }
    }

    public void startActivityWithUrl(String s)
    {
        Context context = getContext();
        if (context != null)
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
            intent.addFlags(0x10000000);
            context.startActivity(intent);
        }
    }

    public void viewable()
    {
        LSMLogger.LOGGER.info("viewable");
        evalJS("mraid._bridge.viewable();");
    }



    private class MRAIDPlacementType extends Enum
    {

        private static final MRAIDPlacementType $VALUES[];
        public static final MRAIDPlacementType INLINE;
        public static final MRAIDPlacementType INTERSTITIAL;

        public static MRAIDPlacementType valueOf(String s)
        {
            return (MRAIDPlacementType)Enum.valueOf(com/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType, s);
        }

        public static MRAIDPlacementType[] values()
        {
            return (MRAIDPlacementType[])$VALUES.clone();
        }

        static 
        {
            INLINE = new MRAIDPlacementType("INLINE", 0);
            INTERSTITIAL = new MRAIDPlacementType("INTERSTITIAL", 1);
            MRAIDPlacementType amraidplacementtype[] = new MRAIDPlacementType[2];
            amraidplacementtype[0] = INLINE;
            amraidplacementtype[1] = INTERSTITIAL;
            $VALUES = amraidplacementtype;
        }

        private MRAIDPlacementType(String s, int i)
        {
            super(s, i);
        }
    }

}
