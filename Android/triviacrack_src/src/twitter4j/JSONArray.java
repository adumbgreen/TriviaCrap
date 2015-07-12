// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package twitter4j:
//            JSONObject, JSONException, JSONTokener

public class JSONArray
{

    private final ArrayList myArrayList;

    public JSONArray()
    {
        myArrayList = new ArrayList();
    }

    public JSONArray(Object obj)
    {
        this();
        if (obj.getClass().isArray())
        {
            int i = Array.getLength(obj);
            for (int j = 0; j < i; j++)
            {
                put(JSONObject.wrap(Array.get(obj, j)));
            }

        } else
        {
            throw new JSONException("JSONArray initial value should be a string or collection or array.");
        }
    }

    public JSONArray(String s)
    {
        this(new JSONTokener(s));
    }

    public JSONArray(Collection collection)
    {
        myArrayList = new ArrayList();
        if (collection != null)
        {
            Object obj;
            for (Iterator iterator = collection.iterator(); iterator.hasNext(); myArrayList.add(JSONObject.wrap(obj)))
            {
                obj = iterator.next();
            }

        }
    }

    public JSONArray(JSONTokener jsontokener)
    {
        this();
        if (jsontokener.nextClean() != '[')
        {
            throw jsontokener.syntaxError("A JSONArray text must start with '['");
        }
        if (jsontokener.nextClean() == ']') goto _L2; else goto _L1
_L1:
        jsontokener.back();
_L7:
        if (jsontokener.nextClean() == ',')
        {
            jsontokener.back();
            myArrayList.add(JSONObject.NULL);
        } else
        {
            jsontokener.back();
            myArrayList.add(jsontokener.nextValue());
        }
        jsontokener.nextClean();
        JVM INSTR lookupswitch 3: default 96
    //                   44: 122
    //                   59: 122
    //                   93: 131;
           goto _L3 _L4 _L4 _L2
_L3:
        throw jsontokener.syntaxError("Expected a ',' or ']'");
_L4:
        if (jsontokener.nextClean() != ']') goto _L5; else goto _L2
_L2:
        return;
_L5:
        jsontokener.back();
        if (true) goto _L7; else goto _L6
_L6:
    }

    public Object get(int i)
    {
        Object obj = opt(i);
        if (obj == null)
        {
            throw new JSONException((new StringBuilder()).append("JSONArray[").append(i).append("] not found.").toString());
        } else
        {
            return obj;
        }
    }

    public boolean getBoolean(int i)
    {
        Object obj = get(i);
        if (obj.equals(Boolean.FALSE) || (obj instanceof String) && ((String)obj).equalsIgnoreCase("false"))
        {
            return false;
        }
        if (obj.equals(Boolean.TRUE) || (obj instanceof String) && ((String)obj).equalsIgnoreCase("true"))
        {
            return true;
        } else
        {
            throw new JSONException((new StringBuilder()).append("JSONArray[").append(i).append("] is not a boolean.").toString());
        }
    }

    public double getDouble(int i)
    {
        Object obj = get(i);
        double d;
        try
        {
            if (obj instanceof Number)
            {
                return ((Number)obj).doubleValue();
            }
            d = Double.parseDouble((String)obj);
        }
        catch (Exception exception)
        {
            throw new JSONException((new StringBuilder()).append("JSONArray[").append(i).append("] is not a number.").toString());
        }
        return d;
    }

    public int getInt(int i)
    {
        Object obj = get(i);
        int j;
        try
        {
            if (obj instanceof Number)
            {
                return ((Number)obj).intValue();
            }
            j = Integer.parseInt((String)obj);
        }
        catch (Exception exception)
        {
            throw new JSONException((new StringBuilder()).append("JSONArray[").append(i).append("] is not a number.").toString());
        }
        return j;
    }

    public JSONArray getJSONArray(int i)
    {
        Object obj = get(i);
        if (obj instanceof JSONArray)
        {
            return (JSONArray)obj;
        } else
        {
            throw new JSONException((new StringBuilder()).append("JSONArray[").append(i).append("] is not a JSONArray.").toString());
        }
    }

    public JSONObject getJSONObject(int i)
    {
        Object obj = get(i);
        if (obj instanceof JSONObject)
        {
            return (JSONObject)obj;
        } else
        {
            throw new JSONException((new StringBuilder()).append("JSONArray[").append(i).append("] is not a JSONObject.").toString());
        }
    }

    public long getLong(int i)
    {
        Object obj = get(i);
        long l;
        try
        {
            if (obj instanceof Number)
            {
                return ((Number)obj).longValue();
            }
            l = Long.parseLong((String)obj);
        }
        catch (Exception exception)
        {
            throw new JSONException((new StringBuilder()).append("JSONArray[").append(i).append("] is not a number.").toString());
        }
        return l;
    }

    public String getString(int i)
    {
        Object obj = get(i);
        if (obj == JSONObject.NULL)
        {
            return null;
        } else
        {
            return obj.toString();
        }
    }

    public boolean isNull(int i)
    {
        return JSONObject.NULL.equals(opt(i));
    }

    public String join(String s)
    {
        int i = length();
        StringBuilder stringbuilder = new StringBuilder();
        for (int j = 0; j < i; j++)
        {
            if (j > 0)
            {
                stringbuilder.append(s);
            }
            stringbuilder.append(JSONObject.valueToString(myArrayList.get(j)));
        }

        return stringbuilder.toString();
    }

    public int length()
    {
        return myArrayList.size();
    }

    public Object opt(int i)
    {
        if (i < 0 || i >= length())
        {
            return null;
        } else
        {
            return myArrayList.get(i);
        }
    }

    public JSONArray put(int i)
    {
        put(new Integer(i));
        return this;
    }

    public JSONArray put(int i, double d)
    {
        put(i, new Double(d));
        return this;
    }

    public JSONArray put(int i, int j)
    {
        put(i, new Integer(j));
        return this;
    }

    public JSONArray put(int i, long l)
    {
        put(i, new Long(l));
        return this;
    }

    public JSONArray put(int i, Object obj)
    {
        JSONObject.testValidity(obj);
        if (i < 0)
        {
            throw new JSONException((new StringBuilder()).append("JSONArray[").append(i).append("] not found.").toString());
        }
        if (i < length())
        {
            myArrayList.set(i, obj);
            return this;
        }
        for (; i != length(); put(JSONObject.NULL)) { }
        put(obj);
        return this;
    }

    public JSONArray put(int i, Collection collection)
    {
        put(i, new JSONArray(collection));
        return this;
    }

    public JSONArray put(int i, Map map)
    {
        put(i, new JSONObject(map));
        return this;
    }

    public JSONArray put(int i, boolean flag)
    {
        Boolean boolean1;
        if (flag)
        {
            boolean1 = Boolean.TRUE;
        } else
        {
            boolean1 = Boolean.FALSE;
        }
        put(i, boolean1);
        return this;
    }

    public JSONArray put(long l)
    {
        put(new Long(l));
        return this;
    }

    public JSONArray put(Object obj)
    {
        myArrayList.add(obj);
        return this;
    }

    public JSONArray put(Collection collection)
    {
        put(new JSONArray(collection));
        return this;
    }

    public JSONArray put(Map map)
    {
        put(new JSONObject(map));
        return this;
    }

    public JSONArray put(boolean flag)
    {
        Boolean boolean1;
        if (flag)
        {
            boolean1 = Boolean.TRUE;
        } else
        {
            boolean1 = Boolean.FALSE;
        }
        put(boolean1);
        return this;
    }

    public String toString()
    {
        String s;
        try
        {
            s = (new StringBuilder()).append('[').append(join(",")).append(']').toString();
        }
        catch (Exception exception)
        {
            return null;
        }
        return s;
    }

    public String toString(int i)
    {
        return toString(i, 0);
    }

    String toString(int i, int j)
    {
        int k = 0;
        int l = length();
        if (l == 0)
        {
            return "[]";
        }
        StringBuilder stringbuilder = new StringBuilder("[");
        if (l == 1)
        {
            stringbuilder.append(JSONObject.valueToString(myArrayList.get(0), i, j));
        } else
        {
            int i1 = j + i;
            stringbuilder.append('\n');
            for (int j1 = 0; j1 < l; j1++)
            {
                if (j1 > 0)
                {
                    stringbuilder.append(",\n");
                }
                for (int k1 = 0; k1 < i1; k1++)
                {
                    stringbuilder.append(' ');
                }

                stringbuilder.append(JSONObject.valueToString(myArrayList.get(j1), i, i1));
            }

            stringbuilder.append('\n');
            while (k < j) 
            {
                stringbuilder.append(' ');
                k++;
            }
        }
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

    public Writer write(Writer writer)
    {
        boolean flag;
        int j;
        Object obj;
        flag = false;
        int i;
        try
        {
            i = length();
            writer.write(91);
        }
        catch (IOException ioexception)
        {
            throw new JSONException(ioexception);
        }
        j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        writer.write(44);
        obj = myArrayList.get(j);
        if (obj instanceof JSONObject)
        {
            ((JSONObject)obj).write(writer);
            break MISSING_BLOCK_LABEL_117;
        }
        if (obj instanceof JSONArray)
        {
            ((JSONArray)obj).write(writer);
            break MISSING_BLOCK_LABEL_117;
        }
        writer.write(JSONObject.valueToString(obj));
        break MISSING_BLOCK_LABEL_117;
        writer.write(93);
        return writer;
        j++;
        flag = true;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
