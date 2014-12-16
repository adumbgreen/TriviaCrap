// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.Vector;
import org.json.JSONObject;

// Referenced classes of package com.amazon.device.ads:
//            MetricsCollector, JSONUtils, WebUtils, AdController, 
//            AdData, InternalAdRegistration, IInternalAdRegistration, RegistrationInfo, 
//            Log, Version, WebRequest

class AdMetrics
{

    public static final String LOG_TAG = "AdMetrics";
    private final AdController adController;
    private MetricsCollector globalMetrics;

    public AdMetrics(AdController adcontroller)
    {
        adController = adcontroller;
    }

    protected static void addMetricsToJSON(JSONObject jsonobject, MetricsCollector metricscollector)
    {
        if (metricscollector != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        HashMap hashmap = new HashMap();
        HashMap hashmap1 = new HashMap();
        String s = metricscollector.getAdTypeMetricTag();
        String s1;
        MetricsCollector.MetricHit ametrichit[];
        int i;
        int j;
        if (s != null)
        {
            s1 = (new StringBuilder()).append(s).append("_").toString();
        } else
        {
            s1 = s;
        }
        ametrichit = (MetricsCollector.MetricHit[])metricscollector.getMetricHits().toArray(new MetricsCollector.MetricHit[metricscollector.getMetricHits().size()]);
        i = ametrichit.length;
        j = 0;
        while (j < i) 
        {
            MetricsCollector.MetricHit metrichit = ametrichit[j];
            String s3 = metrichit.metric.getAaxName();
            Iterator iterator;
            java.util.Map.Entry entry;
            String s2;
            String s4;
            if (s1 != null && metrichit.metric.isAdTypeSpecific())
            {
                s4 = (new StringBuilder()).append(s1).append(s3).toString();
            } else
            {
                s4 = s3;
            }
            if (metrichit instanceof MetricsCollector.MetricHitStartTime)
            {
                MetricsCollector.MetricHitStartTime metrichitstarttime = (MetricsCollector.MetricHitStartTime)metrichit;
                hashmap.put(metrichit.metric, Long.valueOf(metrichitstarttime.startTime));
            } else
            if (metrichit instanceof MetricsCollector.MetricHitStopTime)
            {
                MetricsCollector.MetricHitStopTime metrichitstoptime = (MetricsCollector.MetricHitStopTime)metrichit;
                Long long1 = (Long)hashmap.get(metrichit.metric);
                if (long1 != null)
                {
                    JSONUtils.put(jsonobject, s4, metrichitstoptime.stopTime - long1.longValue());
                }
            } else
            if (metrichit instanceof MetricsCollector.MetricHitTotalTime)
            {
                JSONUtils.put(jsonobject, s4, ((MetricsCollector.MetricHitTotalTime)metrichit).totalTime);
            } else
            if (metrichit instanceof MetricsCollector.MetricHitIncrement)
            {
                MetricsCollector.MetricHitIncrement metrichitincrement = (MetricsCollector.MetricHitIncrement)metrichit;
                Integer integer = (Integer)hashmap1.get(metrichit.metric);
                int k;
                Integer integer1;
                if (integer == null)
                {
                    k = metrichitincrement.increment;
                } else
                {
                    k = integer.intValue() + metrichitincrement.increment;
                }
                integer1 = Integer.valueOf(k);
                hashmap1.put(metrichit.metric, integer1);
            } else
            if (metrichit instanceof MetricsCollector.MetricHitString)
            {
                JSONUtils.put(jsonobject, s4, ((MetricsCollector.MetricHitString)metrichit).text);
            }
            j++;
        }
        iterator = hashmap1.entrySet().iterator();
        while (iterator.hasNext()) 
        {
            entry = (java.util.Map.Entry)iterator.next();
            s2 = ((Metrics.MetricType)entry.getKey()).getAaxName();
            if (s1 != null && ((Metrics.MetricType)entry.getKey()).isAdTypeSpecific())
            {
                s2 = (new StringBuilder()).append(s1).append(s2).toString();
            }
            JSONUtils.put(jsonobject, s2, ((Integer)entry.getValue()).intValue());
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private String getAaxUrlAndResetAdMetrics()
    {
        String s = WebUtils.getURLEncodedString(getAaxJson());
        String s1 = (new StringBuilder()).append(adController.getAdData().getInstrumentationPixelUrl()).append(s).toString();
        adController.resetMetricsCollector();
        return s1;
    }

    public void addGlobalMetrics(MetricsCollector metricscollector)
    {
        globalMetrics = metricscollector;
    }

    public boolean canSubmit()
    {
        String s;
        if (adController.getAdData() != null)
        {
            if ((s = adController.getAdData().getInstrumentationPixelUrl()) != null && !s.equals(""))
            {
                String s1 = InternalAdRegistration.getInstance().getRegistrationInfo().getAppKey();
                if (s1 == null || s1.equals("123"))
                {
                    Log.d("AdMetrics", "Not submitting metrics because the AppKey is either not set or set to a test key.");
                    return false;
                } else
                {
                    return true;
                }
            }
        }
        return false;
    }

    protected String getAaxJson()
    {
        JSONObject jsonobject = new JSONObject();
        JSONUtils.put(jsonobject, "c", "msdk");
        JSONUtils.put(jsonobject, "v", Version.getRawSDKVersion());
        addMetricsToJSON(jsonobject, adController.getMetricsCollector());
        addMetricsToJSON(jsonobject, globalMetrics);
        String s = jsonobject.toString();
        return s.substring(1, -1 + s.length());
    }

    public WebRequest getAaxWebRequestAndResetAdMetrics()
    {
        WebRequest webrequest = WebRequest.createNewWebRequest();
        webrequest.setUrlString(getAaxUrlAndResetAdMetrics());
        return webrequest;
    }
}
