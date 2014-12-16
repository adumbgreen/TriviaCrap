// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Vector;

// Referenced classes of package com.amazon.device.ads:
//            Log, NumberUtils

class MetricsCollector
{

    private String adTypeMetricTag;
    protected Vector metricHits;

    public MetricsCollector()
    {
        metricHits = new Vector(60);
    }

    public String getAdTypeMetricTag()
    {
        return adTypeMetricTag;
    }

    public Vector getMetricHits()
    {
        return metricHits;
    }

    public void incrementMetric(Metrics.MetricType metrictype)
    {
        Log.d("MetricsCollector", (new StringBuilder()).append("METRIC Increment ").append(metrictype.toString()).toString());
        metricHits.add(new MetricHitIncrement(metrictype, 1));
    }

    public boolean isMetricsCollectorEmpty()
    {
        return metricHits.isEmpty();
    }

    public void publishMetricInMilliseconds(Metrics.MetricType metrictype, long l)
    {
        Log.d("MetricsCollector", (new StringBuilder()).append("METRIC Publish ").append(metrictype.toString()).toString());
        metricHits.add(new MetricHitTotalTime(metrictype, l));
    }

    public void publishMetricInMillisecondsFromNanoseconds(Metrics.MetricType metrictype, long l)
    {
        publishMetricInMilliseconds(metrictype, NumberUtils.convertToMillisecondsFromNanoseconds(l));
    }

    public void setAdType(AdProperties.AdType adtype)
    {
        adTypeMetricTag = adtype.getAdTypeMetricTag();
    }

    public void setMetricString(Metrics.MetricType metrictype, String s)
    {
        Log.d("MetricsCollector", (new StringBuilder()).append("METRIC Set ").append(metrictype.toString()).append(": ").append(s).toString());
        metricHits.add(new MetricHitString(metrictype, s));
    }

    public void startMetric(Metrics.MetricType metrictype)
    {
        startMetricInMillisecondsFromNanoseconds(metrictype, System.nanoTime());
    }

    public void startMetricInMillisecondsFromNanoseconds(Metrics.MetricType metrictype, long l)
    {
        Log.d("MetricsCollector", (new StringBuilder()).append("METRIC Start ").append(metrictype.toString()).toString());
        long l1 = NumberUtils.convertToMillisecondsFromNanoseconds(l);
        metricHits.add(new MetricHitStartTime(metrictype, l1));
    }

    public void stopMetric(Metrics.MetricType metrictype)
    {
        stopMetricInMillisecondsFromNanoseconds(metrictype, System.nanoTime());
    }

    public void stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType metrictype, long l)
    {
        Log.d("MetricsCollector", (new StringBuilder()).append("METRIC Stop ").append(metrictype.toString()).toString());
        long l1 = NumberUtils.convertToMillisecondsFromNanoseconds(l);
        metricHits.add(new MetricHitStopTime(metrictype, l1));
    }

    private class MetricHitIncrement extends MetricHit
    {
        private class MetricHit
        {

            public final Metrics.MetricType metric;

            public MetricHit(Metrics.MetricType metrictype)
            {
                metric = metrictype;
            }
        }


        public final int increment;

        public MetricHitIncrement(Metrics.MetricType metrictype, int i)
        {
            super(metrictype);
            increment = i;
        }
    }


    private class MetricHitTotalTime extends MetricHit
    {

        public final long totalTime;

        public MetricHitTotalTime(Metrics.MetricType metrictype, long l)
        {
            super(metrictype);
            totalTime = l;
        }
    }


    private class MetricHitString extends MetricHit
    {

        public final String text;

        public MetricHitString(Metrics.MetricType metrictype, String s)
        {
            super(metrictype);
            text = s;
        }
    }


    private class MetricHitStartTime extends MetricHit
    {

        public final long startTime;

        public MetricHitStartTime(Metrics.MetricType metrictype, long l)
        {
            super(metrictype);
            startTime = l;
        }
    }


    private class MetricHitStopTime extends MetricHit
    {

        public final long stopTime;

        public MetricHitStopTime(Metrics.MetricType metrictype, long l)
        {
            super(metrictype);
            stopTime = l;
        }
    }

}
