// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.management;

import java.util.Iterator;
import javax.management.Attribute;
import javax.management.AttributeList;
import javax.management.AttributeNotFoundException;
import javax.management.DynamicMBean;
import javax.management.MBeanInfo;
import javax.management.MBeanNotificationInfo;
import javax.management.ReflectionException;
import javax.management.openmbean.CompositeDataSupport;
import javax.management.openmbean.CompositeType;
import javax.management.openmbean.OpenDataException;
import javax.management.openmbean.OpenMBeanAttributeInfoSupport;
import javax.management.openmbean.OpenMBeanConstructorInfoSupport;
import javax.management.openmbean.OpenMBeanInfoSupport;
import javax.management.openmbean.OpenMBeanOperationInfoSupport;
import javax.management.openmbean.OpenMBeanParameterInfoSupport;
import javax.management.openmbean.OpenType;
import javax.management.openmbean.SimpleType;
import javax.management.openmbean.TabularDataSupport;
import javax.management.openmbean.TabularType;

// Referenced classes of package twitter4j.management:
//            APIStatisticsMBean, InvocationStatistics, APIStatistics

public class APIStatisticsOpenMBean
    implements DynamicMBean
{

    private static final String ITEM_DESCRIPTIONS[] = {
        "The method name", "The number of times this method has been called", "The number of calls that failed", "The total amount of time spent invoking this method in milliseconds", "The average amount of time spent invoking this method in milliseconds"
    };
    private static final String ITEM_NAMES[] = {
        "methodName", "callCount", "errorCount", "totalTime", "avgTime"
    };
    private static final OpenType ITEM_TYPES[];
    private final APIStatisticsMBean API_STATISTICS;
    private final TabularType API_STATISTICS_TYPE;
    private final CompositeType METHOD_STATS_TYPE;

    public APIStatisticsOpenMBean(APIStatistics apistatistics)
    {
        API_STATISTICS = apistatistics;
        try
        {
            METHOD_STATS_TYPE = new CompositeType("method statistics", "method statistics", ITEM_NAMES, ITEM_DESCRIPTIONS, ITEM_TYPES);
            String as[] = {
                "methodName"
            };
            API_STATISTICS_TYPE = new TabularType("API statistics", "list of methods", METHOD_STATS_TYPE, as);
            return;
        }
        catch (OpenDataException opendataexception)
        {
            throw new RuntimeException(opendataexception);
        }
    }

    public Object getAttribute(String s)
    {
        if (s.equals("statisticsTable"))
        {
            return getStatistics();
        }
        if (s.equals("callCount"))
        {
            return Long.valueOf(API_STATISTICS.getCallCount());
        }
        if (s.equals("errorCount"))
        {
            return Long.valueOf(API_STATISTICS.getErrorCount());
        }
        if (s.equals("totalTime"))
        {
            return Long.valueOf(API_STATISTICS.getTotalTime());
        }
        if (s.equals("averageTime"))
        {
            return Long.valueOf(API_STATISTICS.getAverageTime());
        } else
        {
            throw new AttributeNotFoundException((new StringBuilder()).append("Cannot find ").append(s).append(" attribute ").toString());
        }
    }

    public AttributeList getAttributes(String as[])
    {
        AttributeList attributelist = new AttributeList();
        if (as.length != 0)
        {
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                String s = as[j];
                try
                {
                    attributelist.add(new Attribute(s, getAttribute(s)));
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
                j++;
            }
        }
        return attributelist;
    }

    public MBeanInfo getMBeanInfo()
    {
        OpenMBeanAttributeInfoSupport aopenmbeanattributeinfosupport[] = new OpenMBeanAttributeInfoSupport[5];
        OpenMBeanConstructorInfoSupport aopenmbeanconstructorinfosupport[] = new OpenMBeanConstructorInfoSupport[1];
        OpenMBeanOperationInfoSupport aopenmbeanoperationinfosupport[] = new OpenMBeanOperationInfoSupport[1];
        MBeanNotificationInfo ambeannotificationinfo[] = new MBeanNotificationInfo[0];
        aopenmbeanattributeinfosupport[0] = new OpenMBeanAttributeInfoSupport("callCount", "Total number of API calls", SimpleType.LONG, true, false, false);
        aopenmbeanattributeinfosupport[1] = new OpenMBeanAttributeInfoSupport("errorCount", "The number of failed API calls", SimpleType.LONG, true, false, false);
        aopenmbeanattributeinfosupport[2] = new OpenMBeanAttributeInfoSupport("averageTime", "Average time spent invoking any API method", SimpleType.LONG, true, false, false);
        aopenmbeanattributeinfosupport[3] = new OpenMBeanAttributeInfoSupport("totalTime", "Average time spent invoking any API method", SimpleType.LONG, true, false, false);
        aopenmbeanattributeinfosupport[4] = new OpenMBeanAttributeInfoSupport("statisticsTable", "Table of statisics for all API methods", API_STATISTICS_TYPE, true, false, false);
        aopenmbeanconstructorinfosupport[0] = new OpenMBeanConstructorInfoSupport("APIStatisticsOpenMBean", "Constructs an APIStatisticsOpenMBean instance", new OpenMBeanParameterInfoSupport[0]);
        aopenmbeanoperationinfosupport[0] = new OpenMBeanOperationInfoSupport("reset", "reset the statistics", new OpenMBeanParameterInfoSupport[0], SimpleType.VOID, 0);
        return new OpenMBeanInfoSupport(getClass().getName(), "API Statistics Open MBean", aopenmbeanattributeinfosupport, aopenmbeanconstructorinfosupport, aopenmbeanoperationinfosupport, ambeannotificationinfo);
    }

    public TabularDataSupport getStatistics()
    {
        this;
        JVM INSTR monitorenter ;
        TabularDataSupport tabulardatasupport;
        Iterator iterator;
        tabulardatasupport = new TabularDataSupport(API_STATISTICS_TYPE);
        iterator = API_STATISTICS.getInvocationStatistics().iterator();
_L1:
        Object aobj[];
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_162;
        }
        InvocationStatistics invocationstatistics = (InvocationStatistics)iterator.next();
        aobj = new Object[5];
        aobj[0] = invocationstatistics.getName();
        aobj[1] = Long.valueOf(invocationstatistics.getCallCount());
        aobj[2] = Long.valueOf(invocationstatistics.getErrorCount());
        aobj[3] = Long.valueOf(invocationstatistics.getTotalTime());
        aobj[4] = Long.valueOf(invocationstatistics.getAverageTime());
        tabulardatasupport.put(new CompositeDataSupport(METHOD_STATS_TYPE, ITEM_NAMES, aobj));
          goto _L1
        OpenDataException opendataexception;
        opendataexception;
        throw new RuntimeException(opendataexception);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        this;
        JVM INSTR monitorexit ;
        return tabulardatasupport;
    }

    public Object invoke(String s, Object aobj[], String as[])
    {
        if (s.equals("reset"))
        {
            reset();
            return "Statistics reset";
        } else
        {
            throw new ReflectionException(new NoSuchMethodException(s), (new StringBuilder()).append("Cannot find the operation ").append(s).toString());
        }
    }

    public void reset()
    {
        API_STATISTICS.reset();
    }

    public void setAttribute(Attribute attribute)
    {
        throw new AttributeNotFoundException("No attributes can be set in this MBean");
    }

    public AttributeList setAttributes(AttributeList attributelist)
    {
        return new AttributeList();
    }

    static 
    {
        OpenType aopentype[] = new OpenType[5];
        aopentype[0] = SimpleType.STRING;
        aopentype[1] = SimpleType.LONG;
        aopentype[2] = SimpleType.LONG;
        aopentype[3] = SimpleType.LONG;
        aopentype[4] = SimpleType.LONG;
        ITEM_TYPES = aopentype;
    }
}
