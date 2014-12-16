// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.TreeSet;

// Referenced classes of package twitter4j:
//            JSONTokener, JSONException, JSONArray

public class JSONObject
{

    public static final Object NULL = new Null();
    private final Map map;

    public JSONObject()
    {
        map = new HashMap();
    }

    public JSONObject(Object obj)
    {
        this();
        populateMap(obj);
    }

    public JSONObject(Object obj, String as[])
    {
        this();
        Class class1 = obj.getClass();
        int i = as.length;
        int j = 0;
        while (j < i) 
        {
            String s = as[j];
            try
            {
                putOpt(s, class1.getField(s).get(obj));
            }
            catch (Exception exception) { }
            j++;
        }
    }

    public JSONObject(String s)
    {
        this(new JSONTokener(s));
    }

    public JSONObject(String s, Locale locale)
    {
        this();
        ResourceBundle resourcebundle = ResourceBundle.getBundle(s, locale, Thread.currentThread().getContextClassLoader());
        Enumeration enumeration = resourcebundle.getKeys();
        do
        {
            if (!enumeration.hasMoreElements())
            {
                break;
            }
            Object obj = enumeration.nextElement();
            if (obj instanceof String)
            {
                String as[] = ((String)obj).split("\\.");
                int i = -1 + as.length;
                int j = 0;
                JSONObject jsonobject = this;
                while (j < i) 
                {
                    String s1 = as[j];
                    Object obj1 = jsonobject.opt(s1);
                    JSONObject jsonobject1;
                    if (obj1 instanceof JSONObject)
                    {
                        jsonobject1 = (JSONObject)obj1;
                    } else
                    {
                        jsonobject1 = null;
                    }
                    if (jsonobject1 == null)
                    {
                        jsonobject1 = new JSONObject();
                        jsonobject.put(s1, jsonobject1);
                    }
                    j++;
                    jsonobject = jsonobject1;
                }
                jsonobject.put(as[i], resourcebundle.getString((String)obj));
            }
        } while (true);
    }

    public JSONObject(Map map1)
    {
        map = new HashMap();
        if (map1 != null)
        {
            Iterator iterator = map1.entrySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                Object obj = entry.getValue();
                if (obj != null)
                {
                    map.put(entry.getKey(), wrap(obj));
                }
            } while (true);
        }
    }

    public JSONObject(JSONObject jsonobject, String as[])
    {
        this();
        int i = as.length;
        int j = 0;
        while (j < i) 
        {
            String s = as[j];
            try
            {
                putOnce(s, jsonobject.opt(s));
            }
            catch (Exception exception) { }
            j++;
        }
    }

    public JSONObject(JSONTokener jsontokener)
    {
        this();
        if (jsontokener.nextClean() != '{')
        {
            throw jsontokener.syntaxError((new StringBuilder()).append("A JSONObject text must begin with '{' found:").append(jsontokener.nextClean()).toString());
        }
          goto _L1
_L11:
        jsontokener.back();
_L1:
        jsontokener.nextClean();
        JVM INSTR lookupswitch 2: default 76
    //                   0: 167
    //                   125: 196;
           goto _L2 _L3 _L4
_L2:
        String s;
        char c;
        jsontokener.back();
        s = jsontokener.nextValue().toString();
        c = jsontokener.nextClean();
        if (c != '=') goto _L6; else goto _L5
_L5:
        if (jsontokener.next() != '>')
        {
            jsontokener.back();
        }
_L10:
        putOnce(s, jsontokener.nextValue());
        jsontokener.nextClean();
        JVM INSTR lookupswitch 3: default 160
    //                   44: 187
    //                   59: 187
    //                   125: 196;
           goto _L7 _L8 _L8 _L4
_L7:
        throw jsontokener.syntaxError("Expected a ',' or '}'");
_L3:
        throw jsontokener.syntaxError("A JSONObject text must end with '}'");
_L6:
        if (c == ':') goto _L10; else goto _L9
_L9:
        throw jsontokener.syntaxError("Expected a ':' after a key");
_L8:
        if (jsontokener.nextClean() != '}') goto _L11; else goto _L4
_L4:
    }

    public static String numberToString(Number number)
    {
        if (number == null)
        {
            throw new JSONException("Null pointer");
        }
        testValidity(number);
        String s = number.toString();
        if (s.indexOf('.') > 0 && s.indexOf('e') < 0 && s.indexOf('E') < 0)
        {
            for (; s.endsWith("0"); s = s.substring(0, -1 + s.length())) { }
            if (s.endsWith("."))
            {
                s = s.substring(0, -1 + s.length());
            }
        }
        return s;
    }

    private void populateMap(Object obj)
    {
        String s;
        String s1;
        String s2;
        Class class1 = obj.getClass();
        boolean flag;
        Method amethod[];
        int i;
        int j;
        Method method;
        Object obj1;
        if (class1.getClassLoader() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            amethod = class1.getMethods();
        } else
        {
            amethod = class1.getDeclaredMethods();
        }
        i = amethod.length;
        j = 0;
        if (j >= i) goto _L2; else goto _L1
_L1:
        method = amethod[j];
        if (!Modifier.isPublic(method.getModifiers())) goto _L4; else goto _L3
_L3:
        s = method.getName();
        s1 = "";
        if (!s.startsWith("get")) goto _L6; else goto _L5
_L5:
        if (s.equals("getClass") || s.equals("getDeclaringClass"))
        {
            break MISSING_BLOCK_LABEL_299;
        }
          goto _L7
_L15:
        if (s1.length() <= 0 || !Character.isUpperCase(s1.charAt(0)) || method.getParameterTypes().length != 0) goto _L4; else goto _L8
_L8:
        if (s1.length() != 1) goto _L10; else goto _L9
_L9:
        s2 = s1.toLowerCase();
_L13:
        obj1 = method.invoke(obj, (Object[])null);
        String s3;
        if (obj1 != null)
        {
            try
            {
                map.put(s2, wrap(obj1));
            }
            catch (Exception exception) { }
        }
_L4:
        j++;
        break MISSING_BLOCK_LABEL_32;
_L7:
        s1 = s.substring(3);
        continue; /* Loop/switch isn't completed */
_L6:
        if (s.startsWith("is"))
        {
            s1 = s.substring(2);
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if (Character.isUpperCase(s1.charAt(1))) goto _L12; else goto _L11
_L11:
        s3 = (new StringBuilder()).append(s1.substring(0, 1).toLowerCase()).append(s1.substring(1)).toString();
        s2 = s3;
          goto _L13
_L2:
        return;
_L12:
        s2 = s1;
          goto _L13
        s1 = "";
        if (true) goto _L15; else goto _L14
_L14:
    }

    public static String quote(String s)
    {
        StringBuilder stringbuilder;
label0:
        {
label1:
            {
label2:
                {
label3:
                    {
label4:
                        {
label5:
                            {
label6:
                                {
                                    int i = 0;
                                    if (s == null || s.length() == 0)
                                    {
                                        return "\"\"";
                                    }
                                    int j = s.length();
                                    stringbuilder = new StringBuilder(j + 4);
                                    stringbuilder.append('"');
                                    char c = '\0';
label7:
                                    do
                                    {
                                        {
                                            if (i >= j)
                                            {
                                                break label0;
                                            }
                                            char c1 = s.charAt(i);
                                            switch (c1)
                                            {
                                            default:
                                                if (c1 < ' ' || c1 >= '\200' && c1 < '\240' || c1 >= '\u2000' && c1 < '\u2100')
                                                {
                                                    String s1 = (new StringBuilder()).append("000").append(Integer.toHexString(c1)).toString();
                                                    stringbuilder.append("\\u").append(s1.substring(-4 + s1.length()));
                                                } else
                                                {
                                                    stringbuilder.append(c1);
                                                }
                                                break;

                                            case 8: // '\b'
                                                break label5;

                                            case 9: // '\t'
                                                break label4;

                                            case 10: // '\n'
                                                break label3;

                                            case 12: // '\f'
                                                break label2;

                                            case 13: // '\r'
                                                break label1;

                                            case 34: // '"'
                                            case 92: // '\\'
                                                break label7;

                                            case 47: // '/'
                                                break label6;
                                            }
                                        }
                                        i++;
                                        c = c1;
                                    } while (true);
                                    stringbuilder.append('\\');
                                    stringbuilder.append(c1);
                                    break MISSING_BLOCK_LABEL_221;
                                }
                                if (c == '<')
                                {
                                    stringbuilder.append('\\');
                                }
                                stringbuilder.append(c1);
                                break MISSING_BLOCK_LABEL_221;
                            }
                            stringbuilder.append("\\b");
                            break MISSING_BLOCK_LABEL_221;
                        }
                        stringbuilder.append("\\t");
                        break MISSING_BLOCK_LABEL_221;
                    }
                    stringbuilder.append("\\n");
                    break MISSING_BLOCK_LABEL_221;
                }
                stringbuilder.append("\\f");
                break MISSING_BLOCK_LABEL_221;
            }
            stringbuilder.append("\\r");
            break MISSING_BLOCK_LABEL_221;
        }
        stringbuilder.append('"');
        return stringbuilder.toString();
    }

    public static Object stringToValue(String s)
    {
        if (!s.equals("")) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        char c;
        if (s.equalsIgnoreCase("true"))
        {
            return Boolean.TRUE;
        }
        if (s.equalsIgnoreCase("false"))
        {
            return Boolean.FALSE;
        }
        if (s.equalsIgnoreCase("null"))
        {
            return NULL;
        }
        c = s.charAt(0);
        if ((c < '0' || c > '9') && c != '.' && c != '-' && c != '+') goto _L1; else goto _L3
_L3:
        if (c != '0' || s.length() <= 2 || s.charAt(1) != 'x' && s.charAt(1) != 'X')
        {
            break MISSING_BLOCK_LABEL_143;
        }
        Integer integer1 = Integer.valueOf(Integer.parseInt(s.substring(2), 16));
        return integer1;
        Exception exception1;
        exception1;
label0:
        {
            Long long1;
            Integer integer;
            try
            {
                if (s.indexOf('.') > -1 || s.indexOf('e') > -1 || s.indexOf('E') > -1)
                {
                    return Double.valueOf(s);
                }
                long1 = new Long(s);
                if (long1.longValue() != (long)long1.intValue())
                {
                    break label0;
                }
                integer = Integer.valueOf(long1.intValue());
            }
            catch (Exception exception)
            {
                return s;
            }
            return integer;
        }
        return long1;
    }

    public static void testValidity(Object obj)
    {
        if (obj != null)
        {
            if (obj instanceof Double)
            {
                if (((Double)obj).isInfinite() || ((Double)obj).isNaN())
                {
                    throw new JSONException("JSON does not allow non-finite numbers.");
                }
            } else
            if ((obj instanceof Float) && (((Float)obj).isInfinite() || ((Float)obj).isNaN()))
            {
                throw new JSONException("JSON does not allow non-finite numbers.");
            }
        }
    }

    public static String valueToString(Object obj)
    {
        if (obj == null || obj.equals(null))
        {
            return "null";
        }
        if (obj instanceof Number)
        {
            return numberToString((Number)obj);
        }
        if ((obj instanceof Boolean) || (obj instanceof JSONObject) || (obj instanceof JSONArray))
        {
            return obj.toString();
        }
        if (obj instanceof Map)
        {
            return (new JSONObject((Map)obj)).toString();
        }
        if (obj instanceof Collection)
        {
            return (new JSONArray((Collection)obj)).toString();
        }
        if (obj.getClass().isArray())
        {
            return (new JSONArray(obj)).toString();
        } else
        {
            return quote(obj.toString());
        }
    }

    static String valueToString(Object obj, int i, int j)
    {
        if (obj == null || obj.equals(null))
        {
            return "null";
        }
        if (obj instanceof Number)
        {
            return numberToString((Number)obj);
        }
        if (obj instanceof Boolean)
        {
            return obj.toString();
        }
        if (obj instanceof JSONObject)
        {
            return ((JSONObject)obj).toString(i, j);
        }
        if (obj instanceof JSONArray)
        {
            return ((JSONArray)obj).toString(i, j);
        }
        if (obj instanceof Map)
        {
            return (new JSONObject((Map)obj)).toString(i, j);
        }
        if (obj instanceof Collection)
        {
            return (new JSONArray((Collection)obj)).toString(i, j);
        }
        if (obj.getClass().isArray())
        {
            return (new JSONArray(obj)).toString(i, j);
        } else
        {
            return quote(obj.toString());
        }
    }

    public static Object wrap(Object obj)
    {
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        return NULL;
        if ((obj instanceof JSONObject) || (obj instanceof JSONArray) || NULL.equals(obj) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Boolean) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof String)) goto _L2; else goto _L1
_L1:
        Package package1;
        if (obj instanceof Collection)
        {
            return new JSONArray((Collection)obj);
        }
        if (obj.getClass().isArray())
        {
            return new JSONArray(obj);
        }
        if (obj instanceof Map)
        {
            return new JSONObject((Map)obj);
        }
        package1 = obj.getClass().getPackage();
        if (package1 == null)
        {
            break MISSING_BLOCK_LABEL_222;
        }
        String s = package1.getName();
_L3:
        JSONObject jsonobject;
        if (s.startsWith("java.") || s.startsWith("javax.") || obj.getClass().getClassLoader() == null)
        {
            return obj.toString();
        }
        jsonobject = new JSONObject(obj);
        return jsonobject;
        Exception exception;
        exception;
        obj = null;
_L2:
        return obj;
        s = "";
          goto _L3
    }

    public JSONObject append(String s, Object obj)
    {
        testValidity(obj);
        Object obj1 = opt(s);
        if (obj1 == null)
        {
            put(s, (new JSONArray()).put(obj));
            return this;
        }
        if (obj1 instanceof JSONArray)
        {
            put(s, ((JSONArray)obj1).put(obj));
            return this;
        } else
        {
            throw new JSONException((new StringBuilder()).append("JSONObject[").append(s).append("] is not a JSONArray.").toString());
        }
    }

    public Object get(String s)
    {
        if (s == null)
        {
            throw new JSONException("Null key.");
        }
        Object obj = opt(s);
        if (obj == null)
        {
            throw new JSONException((new StringBuilder()).append("JSONObject[").append(quote(s)).append("] not found.").toString());
        } else
        {
            return obj;
        }
    }

    public boolean getBoolean(String s)
    {
        Object obj = get(s);
        if (obj.equals(Boolean.FALSE) || (obj instanceof String) && ((String)obj).equalsIgnoreCase("false"))
        {
            return false;
        }
        if (obj.equals(Boolean.TRUE) || (obj instanceof String) && ((String)obj).equalsIgnoreCase("true"))
        {
            return true;
        } else
        {
            throw new JSONException((new StringBuilder()).append("JSONObject[").append(quote(s)).append("] is not a Boolean.").toString());
        }
    }

    public int getInt(String s)
    {
        Object obj = get(s);
        int i;
        try
        {
            if (obj instanceof Number)
            {
                return ((Number)obj).intValue();
            }
            i = Integer.parseInt((String)obj);
        }
        catch (Exception exception)
        {
            throw new JSONException((new StringBuilder()).append("JSONObject[").append(quote(s)).append("] is not an int.").toString());
        }
        return i;
    }

    public JSONArray getJSONArray(String s)
    {
        Object obj = get(s);
        if (obj instanceof JSONArray)
        {
            return (JSONArray)obj;
        } else
        {
            throw new JSONException((new StringBuilder()).append("JSONObject[").append(quote(s)).append("] is not a JSONArray.").toString());
        }
    }

    public JSONObject getJSONObject(String s)
    {
        Object obj = get(s);
        if (obj instanceof JSONObject)
        {
            return (JSONObject)obj;
        } else
        {
            throw new JSONException((new StringBuilder()).append("JSONObject[").append(quote(s)).append("] is not a JSONObject.").toString());
        }
    }

    public long getLong(String s)
    {
        Object obj = get(s);
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
            throw new JSONException((new StringBuilder()).append("JSONObject[").append(quote(s)).append("] is not a long.").toString());
        }
        return l;
    }

    public String getString(String s)
    {
        Object obj = get(s);
        if (obj == NULL)
        {
            return null;
        } else
        {
            return obj.toString();
        }
    }

    public boolean has(String s)
    {
        return map.containsKey(s);
    }

    public boolean isNull(String s)
    {
        return NULL.equals(opt(s));
    }

    public Iterator keys()
    {
        return map.keySet().iterator();
    }

    public int length()
    {
        return map.size();
    }

    public JSONArray names()
    {
        JSONArray jsonarray = new JSONArray();
        for (Iterator iterator = keys(); iterator.hasNext(); jsonarray.put(iterator.next())) { }
        if (jsonarray.length() == 0)
        {
            jsonarray = null;
        }
        return jsonarray;
    }

    public Object opt(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return map.get(s);
        }
    }

    public JSONObject put(String s, double d)
    {
        put(s, new Double(d));
        return this;
    }

    public JSONObject put(String s, int i)
    {
        put(s, new Integer(i));
        return this;
    }

    public JSONObject put(String s, long l)
    {
        put(s, new Long(l));
        return this;
    }

    public JSONObject put(String s, Object obj)
    {
        if (s == null)
        {
            throw new JSONException("Null key.");
        }
        if (obj != null)
        {
            testValidity(obj);
            map.put(s, obj);
            return this;
        } else
        {
            remove(s);
            return this;
        }
    }

    public JSONObject put(String s, Collection collection)
    {
        put(s, new JSONArray(collection));
        return this;
    }

    public JSONObject put(String s, Map map1)
    {
        put(s, new JSONObject(map1));
        return this;
    }

    public JSONObject put(String s, boolean flag)
    {
        Boolean boolean1;
        if (flag)
        {
            boolean1 = Boolean.TRUE;
        } else
        {
            boolean1 = Boolean.FALSE;
        }
        put(s, boolean1);
        return this;
    }

    public JSONObject putOnce(String s, Object obj)
    {
        if (s != null && obj != null)
        {
            if (opt(s) != null)
            {
                throw new JSONException((new StringBuilder()).append("Duplicate key \"").append(s).append("\"").toString());
            }
            put(s, obj);
        }
        return this;
    }

    public JSONObject putOpt(String s, Object obj)
    {
        if (s != null && obj != null)
        {
            put(s, obj);
        }
        return this;
    }

    public Object remove(String s)
    {
        return map.remove(s);
    }

    public Iterator sortedKeys()
    {
        return (new TreeSet(map.keySet())).iterator();
    }

    public String toString()
    {
        StringBuilder stringbuilder;
        String s;
        try
        {
            Iterator iterator = keys();
            stringbuilder = new StringBuilder("{");
            Object obj;
            for (; iterator.hasNext(); stringbuilder.append(valueToString(map.get(obj))))
            {
                if (stringbuilder.length() > 1)
                {
                    stringbuilder.append(',');
                }
                obj = iterator.next();
                stringbuilder.append(quote(obj.toString()));
                stringbuilder.append(':');
            }

        }
        catch (Exception exception)
        {
            return null;
        }
        stringbuilder.append('}');
        s = stringbuilder.toString();
        return s;
    }

    public String toString(int i)
    {
        return toString(i, 0);
    }

    String toString(int i, int j)
    {
        int k;
        int l;
        Iterator iterator;
        int i1;
        StringBuilder stringbuilder;
        k = 0;
        l = length();
        if (l == 0)
        {
            return "{}";
        }
        iterator = sortedKeys();
        i1 = j + i;
        stringbuilder = new StringBuilder("{");
        if (l != 1) goto _L2; else goto _L1
_L1:
        Object obj1 = iterator.next();
        stringbuilder.append(quote(obj1.toString()));
        stringbuilder.append(": ");
        stringbuilder.append(valueToString(map.get(obj1), i, j));
_L6:
        stringbuilder.append('}');
        return stringbuilder.toString();
_L4:
        Object obj;
        stringbuilder.append(quote(obj.toString()));
        stringbuilder.append(": ");
        stringbuilder.append(valueToString(map.get(obj), i, i1));
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = iterator.next();
        int j1;
        if (stringbuilder.length() > 1)
        {
            stringbuilder.append(",\n");
        } else
        {
            stringbuilder.append('\n');
        }
        j1 = 0;
        while (j1 < i1) 
        {
            stringbuilder.append(' ');
            j1++;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (stringbuilder.length() > 1)
        {
            stringbuilder.append('\n');
            while (k < j) 
            {
                stringbuilder.append(' ');
                k++;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public Writer write(Writer writer)
    {
        boolean flag = false;
        Iterator iterator;
        iterator = keys();
        writer.write(123);
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        writer.write(44);
        Object obj1;
        Object obj = iterator.next();
        writer.write(quote(obj.toString()));
        writer.write(58);
        obj1 = map.get(obj);
        if (obj1 instanceof JSONObject)
        {
            ((JSONObject)obj1).write(writer);
            break MISSING_BLOCK_LABEL_146;
        }
        IOException ioexception;
        if (obj1 instanceof JSONArray)
        {
            ((JSONArray)obj1).write(writer);
            break MISSING_BLOCK_LABEL_146;
        }
        try
        {
            writer.write(valueToString(obj1));
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            throw new JSONException(ioexception);
        }
        break MISSING_BLOCK_LABEL_146;
_L2:
        writer.write(125);
        return writer;
        flag = true;
          goto _L3
    }


    private class Null
    {

        protected final Object clone()
        {
            return this;
        }

        public boolean equals(Object obj)
        {
            return obj == null || obj == this;
        }

        public String toString()
        {
            return "null";
        }

        private Null()
        {
        }

    }

}
