// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.internal;

import android.app.Activity;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.bootstrapper.ThinICEConfig;
import com.inmobi.commons.cache.RetryMechanism;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEConfigSettings;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEListener;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Timer;

// Referenced classes of package com.inmobi.commons.internal:
//            b, CommonsException, ApplicationFocusManager, InternalSDKUtil, 
//            ActivityRecognitionSampler, Log, JSONPayloadCreator

public final class ThinICE
{

    private static boolean a = false;
    private static ThinICEListener b = new b();
    private static Timer c = new Timer();

    private ThinICE()
    {
    }

    static void a()
    {
        b();
    }

    private static void a(Activity activity)
    {
        if (!a && activity == null)
        {
            throw new CommonsException(1);
        }
        if (!a)
        {
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                ApplicationFocusManager.init(activity);
                final class a
                    implements ApplicationFocusManager.FocusChangedListener
                {

                    public void onFocusChanged(boolean flag)
                    {
                        if (flag)
                        {
                            IceDataCollector.start(InternalSDKUtil.getContext());
                            return;
                        } else
                        {
                            ThinICE.a();
                            return;
                        }
                    }

            a()
            {
            }
                }

                ApplicationFocusManager.addFocusChangedListener(new a());
                IceDataCollector.start(activity.getApplicationContext());
            } else
            {
                IceDataCollector.setListener(b);
            }
            a = true;
        }
        InternalSDKUtil.initialize(activity.getApplicationContext());
    }

    static void a(String s)
    {
        b(s);
    }

    static void a(List list)
    {
        b(list);
    }

    private static void b()
    {
        List list = IceDataCollector.getData();
        IceDataCollector.stop();
        b(list);
        ActivityRecognitionSampler.stop();
    }

    private static void b(String s)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(AnalyticsInitializer.getConfigParams().getThinIceConfig().getEndpointUrl())).openConnection();
        InternalSDKUtil.addCommonPropertiesToConnection(httpurlconnection);
        httpurlconnection.setDoOutput(true);
        httpurlconnection.setDoInput(false);
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(httpurlconnection.getOutputStream());
        outputstreamwriter.write(s);
        outputstreamwriter.flush();
        outputstreamwriter.close();
        httpurlconnection.getResponseCode();
    }

    private static void b(List list)
    {
        if (list.size() == 0 && ActivityRecognitionSampler.getCollectedList().size() == 0)
        {
            Log.internal("[InMobi]-4.3.0", "No ThinICE data is collected. NoOp.");
            return;
        }
        if (!AnalyticsInitializer.getConfigParams().getThinIceConfig().isEnabled())
        {
            Log.internal("[InMobi]-4.3.0", "ThisICE disabled. Not sending data. NoOp.");
            return;
        } else
        {
            RetryMechanism retrymechanism = new RetryMechanism((int)AnalyticsInitializer.getConfigParams().getThinIceConfig().getMaxRetry(), 1000 * (int)AnalyticsInitializer.getConfigParams().getThinIceConfig().getRetryInterval(), c);
            String s = (new JSONPayloadCreator()).toPayloadString(list, ActivityRecognitionSampler.getCollectedList(), InternalSDKUtil.getContext());
            Log.internal("[InMobi]-4.3.0", (new StringBuilder()).append("Sending ").append(list.size()).append(" ThinICE params to server ").append(s).toString());
            final class b
                implements com.inmobi.commons.cache.RetryMechanism.RetryRunnable
            {

                final String a;

                public void completed()
                {
                }

                public void run()
                {
                    Log.internal("[InMobi]-4.3.0", (new StringBuilder()).append("Sending ThinICE data to server ").append(AnalyticsInitializer.getConfigParams().getThinIceConfig().getEndpointUrl()).toString());
                    if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext()))
                    {
                        ThinICE.a(a);
                        return;
                    } else
                    {
                        throw new Exception("Device not connected.");
                    }
                }

            b(String s)
            {
                a = s;
                super();
            }
            }

            retrymechanism.rescheduleTimer(new b(s));
            return;
        }
    }

    public static void setConfig(ThinICEConfig thiniceconfig)
    {
        if (thiniceconfig != null)
        {
            ThinICEConfigSettings thiniceconfigsettings = new ThinICEConfigSettings();
            thiniceconfigsettings.setEnabled(thiniceconfig.isEnabled());
            thiniceconfigsettings.setSampleCellEnabled(thiniceconfig.isCellEnabled());
            thiniceconfigsettings.setSampleCellOperatorEnabled(thiniceconfig.isOperatorEnabled());
            thiniceconfigsettings.setSampleConnectedWifiEnabled(thiniceconfig.isConnectedWifiEnabled());
            thiniceconfigsettings.setSampleHistorySize(thiniceconfig.getSampleHistorySize());
            thiniceconfigsettings.setSampleInterval(1000L * thiniceconfig.getSampleInterval());
            thiniceconfigsettings.setSampleLocationEnabled(true);
            thiniceconfigsettings.setSampleVisibleWifiEnabled(thiniceconfig.isVisibleWifiEnabled());
            thiniceconfigsettings.setStopRequestTimeout(1000L * thiniceconfig.getStopRequestTimeout());
            thiniceconfigsettings.setWifiFlags(thiniceconfig.getWifiFlags());
            thiniceconfigsettings.setCellOpFlags(thiniceconfig.getCellOpsFlag());
            IceDataCollector.setConfig(thiniceconfigsettings);
        }
    }

    public static void start(Activity activity)
    {
        if (!InternalSDKUtil.isInitializedSuccessfully(false))
        {
            return;
        }
        a(activity);
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            IceDataCollector.start(activity);
        }
        ActivityRecognitionSampler.start();
    }

    public static void stop(Activity activity)
    {
        a(activity);
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            b();
        }
    }


    // Unreferenced inner class com/inmobi/commons/internal/b
    final class b
        implements ThinICEListener
    {

        public void onSamplingTerminated(List list)
        {
            ThinICE.a(list);
            IceDataCollector.stop();
            ActivityRecognitionSampler.stop();
        }

            b()
            {
            }
    }

}
