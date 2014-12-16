// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.content.ActivityNotFoundException;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDView, MRAIDController, MRAIDViewListener

public final class MRAIDNativeInterface
{

    private static final Handler sHandler = new Handler(Looper.getMainLooper());
    private final WeakReference mMraidControllerRef;
    private final boolean mTwoPartCreative;

    public MRAIDNativeInterface(boolean flag, MRAIDController mraidcontroller)
    {
        mTwoPartCreative = flag;
        mMraidControllerRef = new WeakReference(mraidcontroller);
    }

    private void expandToSizeWithUrl(final String url, final int width, final int height)
    {
        MRAIDView mraidview = getMraidView();
        final String browserUserAgent = null;
        if (mraidview != null)
        {
            browserUserAgent = mraidview.getWebView().getSettings().getUserAgentString();
        }
        (new Thread(new Runnable() {

            final MRAIDNativeInterface this$0;
            final String val$browserUserAgent;
            final int val$height;
            final String val$url;
            final int val$width;

            public void run()
            {
                MRAIDController mraidcontroller = getMraidController();
                if (mraidcontroller != null)
                {
                    mraidcontroller.loadURLAndExpand(url, browserUserAgent, width, height);
                }
            }

            
            {
                this$0 = MRAIDNativeInterface.this;
                url = s;
                browserUserAgent = s1;
                width = i;
                height = j;
                super();
            }
        })).start();
    }

    private MRAIDViewListener getListener()
    {
        MRAIDView mraidview = getMraidView();
        MRAIDViewListener mraidviewlistener = null;
        if (mraidview != null)
        {
            mraidviewlistener = mraidview.getListener();
        }
        return mraidviewlistener;
    }

    private MRAIDController getMraidController()
    {
        return (MRAIDController)mMraidControllerRef.get();
    }

    private MRAIDView getMraidView()
    {
        MRAIDController mraidcontroller = getMraidController();
        MRAIDView mraidview = null;
        if (mraidcontroller != null)
        {
            mraidview = mraidcontroller.getMraidView();
        }
        return mraidview;
    }

    private void runMethod(String s, String s1)
    {
        JSONObject jsonobject;
        jsonobject = null;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        jsonobject = (JSONObject)(new JSONTokener(s1)).nextValue();
        Method method = com/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface.getDeclaredMethod(s, new Class[] {
            org/json/JSONObject
        });
        if (method == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        method.invoke(this, new Object[] {
            jsonobject
        });
_L1:
        return;
        JSONException jsonexception;
        jsonexception;
        LSMLogger.LOGGER.log(Level.SEVERE, "Error parsing JSON object", jsonexception);
        return;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        LSMLogger.LOGGER.log(Level.SEVERE, (new StringBuilder()).append("Native method '").append(s).append("' does not exist").toString(), nosuchmethodexception);
        MRAIDController mraidcontroller = getMraidController();
        if (mraidcontroller != null)
        {
            mraidcontroller.reportError("Native method not found", s);
            return;
        }
          goto _L1
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        LSMLogger.LOGGER.log(Level.SEVERE, "Error invoking native method", illegalaccessexception);
        return;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        String s2 = invocationtargetexception.getMessage();
        if (invocationtargetexception.getTargetException() != null)
        {
            s2 = invocationtargetexception.getTargetException().getMessage();
        }
        LSMLogger.LOGGER.log(Level.SEVERE, (new StringBuilder()).append("Error invoking native method: ").append(s2).toString(), invocationtargetexception);
        return;
    }

    public void callMethod(final String methodName, final String methodParams)
    {
        LSMLogger.LOGGER.info((new StringBuilder()).append("callMethod: ").append(methodName).append(" (").append(methodParams).append(")").toString());
        sHandler.post(new Runnable() {

            final MRAIDNativeInterface this$0;
            final String val$methodName;
            final String val$methodParams;

            public void run()
            {
                runMethod(methodName, methodParams);
            }

            
            {
                this$0 = MRAIDNativeInterface.this;
                methodName = s;
                methodParams = s1;
                super();
            }
        });
    }

    public void close(JSONObject jsonobject)
    {
        MRAIDController mraidcontroller = getMraidController();
        if (mraidcontroller != null && jsonobject != null)
        {
            MRAIDView mraidview = getMraidView();
            MRAIDViewListener mraidviewlistener = getListener();
            if (mraidviewlistener != null && mraidcontroller.isInterstitial())
            {
                mraidviewlistener.onClose(mraidview);
            } else
            if (mraidview != null)
            {
                String s = jsonobject.optString("state");
                if ("default".equals(s))
                {
                    mraidview.setVisibility(4);
                    mraidcontroller.hiddenState();
                    return;
                }
                if ("expanded".equals(s))
                {
                    mraidcontroller.closeExpandedView();
                    return;
                }
            }
        }
    }

    public void expand(JSONObject jsonobject)
    {
label0:
        {
            boolean flag;
            String s;
            int i;
            int j;
            MRAIDController mraidcontroller;
            boolean flag1;
            if (jsonobject != null)
            {
                s = jsonobject.optString("url", null);
                j = Integer.parseInt(jsonobject.optString("width", "0"));
                i = Integer.parseInt(jsonobject.optString("height", "0"));
                flag = Boolean.parseBoolean(jsonobject.optString("useCustomClose", "false"));
            } else
            {
                flag = false;
                s = null;
                i = 0;
                j = 0;
            }
            mraidcontroller = getMraidController();
            flag1 = false;
            if (mraidcontroller != null)
            {
                boolean flag2 = mraidcontroller.isInterstitial();
                flag1 = false;
                if (!flag2)
                {
                    flag1 = true;
                }
            }
            if (j > 0 && i > 0 && !mTwoPartCreative && flag1)
            {
                mraidcontroller.setUseCustomClose(flag);
                MRAIDView mraidview = getMraidView();
                MRAIDViewListener mraidviewlistener = getListener();
                if (mraidviewlistener != null && mraidview != null)
                {
                    mraidviewlistener.onExpand(mraidview);
                }
                if (s != null || mraidview == null)
                {
                    break label0;
                }
                mraidview.expandToSize(j, i);
            }
            return;
        }
        expandToSizeWithUrl(s, j, i);
    }

    public void onLoad(JSONObject jsonobject)
    {
        MRAIDController mraidcontroller;
label0:
        {
            mraidcontroller = getMraidController();
            if (mraidcontroller != null)
            {
                if (!mTwoPartCreative && !mraidcontroller.isInterstitial())
                {
                    mraidcontroller.setDefaultExpandProperties();
                }
                mraidcontroller.setPlacementType();
                mraidcontroller.ready();
                mraidcontroller.viewable();
                if (mTwoPartCreative)
                {
                    break label0;
                }
                MRAIDViewListener mraidviewlistener = getListener();
                if (mraidviewlistener != null)
                {
                    mraidviewlistener.onReceiveAd(getMraidView());
                }
            }
            return;
        }
        mraidcontroller.expandedState();
    }

    public void open(JSONObject jsonobject)
    {
        MRAIDController mraidcontroller = getMraidController();
        if (mraidcontroller == null || jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        MRAIDView mraidview = getMraidView();
        MRAIDViewListener mraidviewlistener = getListener();
        if (mraidviewlistener != null)
        {
            mraidviewlistener.onClick(mraidview);
        }
        String s = jsonobject.optString("url", null);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        try
        {
            mraidcontroller.closeExpandedView();
            mraidcontroller.startActivityWithUrl(s);
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            LSMLogger.LOGGER.log(Level.SEVERE, (new StringBuilder()).append("Activity not found for URL: ").append(s).toString(), activitynotfoundexception);
            return;
        }
        if (mraidviewlistener == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        mraidviewlistener.onLeaveApplication(mraidview);
    }

    public void useCustomClose(JSONObject jsonobject)
    {
        MRAIDController mraidcontroller = getMraidController();
        if (mraidcontroller != null && jsonobject != null)
        {
            String s = jsonobject.optString("customClose", null);
            if (s != null)
            {
                boolean flag = Boolean.parseBoolean(s);
                if (flag != mraidcontroller.isUseCustomClose())
                {
                    mraidcontroller.setUseCustomClose(flag);
                    mraidcontroller.showHideCloseButton();
                }
            }
        }
    }



}
