// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.management;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package twitter4j.management:
//            APIStatisticsMBean, InvocationStatisticsCalculator

public class APIStatistics
    implements APIStatisticsMBean
{

    private final InvocationStatisticsCalculator API_STATS_CALCULATOR;
    private final int HISTORY_SIZE;
    private final Map METHOD_STATS_MAP = new HashMap(100);

    public APIStatistics(int i)
    {
        API_STATS_CALCULATOR = new InvocationStatisticsCalculator("API", i);
        HISTORY_SIZE = i;
    }

    private InvocationStatisticsCalculator getMethodStatistics(String s)
    {
        this;
        JVM INSTR monitorenter ;
        InvocationStatisticsCalculator invocationstatisticscalculator = (InvocationStatisticsCalculator)METHOD_STATS_MAP.get(s);
        if (invocationstatisticscalculator != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        invocationstatisticscalculator = new InvocationStatisticsCalculator(s, HISTORY_SIZE);
        METHOD_STATS_MAP.put(s, invocationstatisticscalculator);
        this;
        JVM INSTR monitorexit ;
        return invocationstatisticscalculator;
        Exception exception;
        exception;
        throw exception;
    }

    public long getAverageTime()
    {
        return API_STATS_CALCULATOR.getAverageTime();
    }

    public long getCallCount()
    {
        return API_STATS_CALCULATOR.getCallCount();
    }

    public long getErrorCount()
    {
        return API_STATS_CALCULATOR.getErrorCount();
    }

    public Iterable getInvocationStatistics()
    {
        this;
        JVM INSTR monitorenter ;
        Collection collection = METHOD_STATS_MAP.values();
        this;
        JVM INSTR monitorexit ;
        return collection;
        Exception exception;
        exception;
        throw exception;
    }

    public Map getMethodLevelSummariesAsString()
    {
        this;
        JVM INSTR monitorenter ;
        HashMap hashmap;
        hashmap = new HashMap();
        InvocationStatisticsCalculator invocationstatisticscalculator;
        for (Iterator iterator = METHOD_STATS_MAP.values().iterator(); iterator.hasNext(); hashmap.put(invocationstatisticscalculator.getName(), invocationstatisticscalculator.toString()))
        {
            invocationstatisticscalculator = (InvocationStatisticsCalculator)iterator.next();
        }

        break MISSING_BLOCK_LABEL_70;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
        return hashmap;
    }

    public String getMethodLevelSummary(String s)
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ((InvocationStatisticsCalculator)METHOD_STATS_MAP.get(s)).toString();
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String getName()
    {
        return API_STATS_CALCULATOR.getName();
    }

    public long getTotalTime()
    {
        return API_STATS_CALCULATOR.getTotalTime();
    }

    public void methodCalled(String s, long l, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        getMethodStatistics(s).increment(l, flag);
        API_STATS_CALCULATOR.increment(l, flag);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void reset()
    {
        this;
        JVM INSTR monitorenter ;
        API_STATS_CALCULATOR.reset();
        METHOD_STATS_MAP.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
