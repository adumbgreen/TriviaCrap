// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.analytics.iat.impl;

import com.inmobi.commons.analytics.iat.impl.config.AdTrackerConfigParams;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerGoalRetryParams;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Iterator;
import java.util.Vector;

// Referenced classes of package com.inmobi.commons.analytics.iat.impl:
//            Goal, AdTrackerUtils

public class GoalList extends Vector
{

    public GoalList()
    {
    }

    public static GoalList getLoggedGoals()
    {
        boolean flag = FileOperations.isFileExist(InternalSDKUtil.getContext(), "eventlog");
        GoalList goallist = null;
        if (flag)
        {
            goallist = (GoalList)FileOperations.readFromFile(InternalSDKUtil.getContext(), "eventlog");
        }
        if (goallist == null)
        {
            goallist = new GoalList();
        }
        return goallist;
    }

    public boolean addGoal(String s, int i, long l, int j, boolean flag)
    {
        AdTrackerNetworkInterface.setSynced(false);
        if (s == null || "".equals(s.trim()))
        {
            Log.debug("[InMobi]-[AdTracker]-4.3.0", "GoalName is null");
            return false;
        }
        if (i < 1 || l < 0L)
        {
            Log.internal("[InMobi]-[AdTracker]-4.3.0", "GoalCount cant be 0 or RetryTime cannot be negative");
            return false;
        }
        Iterator iterator = iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Goal goal = (Goal)iterator.next();
        if (!goal.getGoalName().equals(s)) goto _L4; else goto _L3
_L3:
        if (!"download".equals(s))
        {
            goal.setGoalCount(i + goal.getGoalCount());
        }
        goal.setRetryCount(j);
        goal.setRetryTime(l);
        goal.setDuplicateGoal(flag);
        boolean flag1 = true;
_L6:
        if (!flag1)
        {
            try
            {
                add(new Goal(s, i, l, j, flag));
            }
            catch (Exception exception)
            {
                return false;
            }
        }
        return true;
_L2:
        flag1 = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public Goal getGoal(String s)
    {
        if (s == null || "".equals(s.trim()))
        {
            Log.debug("[InMobi]-[AdTracker]-4.3.0", "GoalName is null");
            return null;
        }
        Iterator iterator = iterator();
_L1:
        Goal goal;
        boolean flag;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_72;
        }
        goal = (Goal)iterator.next();
        flag = goal.getGoalName().equals(s);
        if (flag)
        {
            return goal;
        }
          goto _L1
        Exception exception;
        exception;
        return null;
        return null;
    }

    public boolean increaseRetryTime(String s, int i, boolean flag)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        if (!"".equals(s.trim()))
        {
            break MISSING_BLOCK_LABEL_25;
        }
        Log.internal("[InMobi]-[AdTracker]-4.3.0", "GoalName cannot be null");
        return false;
        Goal goal;
        int j;
        int k;
        goal = getGoal(s);
        j = AdTrackerInitializer.getConfigParams().getRetryParams().getMaxWaitTime();
        k = AdTrackerInitializer.getConfigParams().getRetryParams().getMaxRetry();
        if (goal == null)
        {
            break MISSING_BLOCK_LABEL_169;
        }
        long l;
        int i1;
        l = goal.getRetryTime();
        i1 = goal.getRetryCount();
        long l1;
        if (l < (long)j)
        {
            l1 = 30000L + l * 2L;
            if (l1 > (long)j)
            {
                l1 = j;
            }
        } else
        {
            l1 = j;
        }
        removeGoal(s, i);
        int j1 = i1 + 1;
        if (j1 < k)
        {
            try
            {
                addGoal(s, i, l1, j1, flag);
                break MISSING_BLOCK_LABEL_171;
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[AdTracker]-4.3.0", "Cant increase retry time", exception);
            }
            break MISSING_BLOCK_LABEL_169;
        }
        AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_DUMPED, goal, 0, 0L, 0, null);
        break MISSING_BLOCK_LABEL_171;
        return false;
        return true;
    }

    public boolean removeGoal(String s, int i)
    {
        AdTrackerNetworkInterface.setSynced(false);
        if (s == null || "".equals(s.trim()))
        {
            Log.debug("[InMobi]-[AdTracker]-4.3.0", "GoalName is null");
            return false;
        }
        if (i < 1)
        {
            Log.internal("[InMobi]-[AdTracker]-4.3.0", "GoalCount cannot be 0 or negative");
            return false;
        }
        Iterator iterator = iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Goal goal = (Goal)iterator.next();
            if (!goal.getGoalName().equals(s))
            {
                continue;
            }
            int j = goal.getGoalCount() - i;
            if (s.equals("download"))
            {
                remove(goal);
            } else
            if (j <= 0)
            {
                remove(goal);
            } else
            {
                goal.setGoalCount(j);
            }
            break;
        } while (true);
        return true;
    }

    public void saveGoals()
    {
        FileOperations.saveToFile(InternalSDKUtil.getContext(), "eventlog", this);
    }
}
