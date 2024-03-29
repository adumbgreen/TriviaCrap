// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.view.Menu;
import android.view.MenuItem;

public class ShareCompat
{

    public static final String EXTRA_CALLING_ACTIVITY = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_PACKAGE = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
    private static ShareCompatImpl IMPL;

    public ShareCompat()
    {
    }

    public static void configureMenuItem(Menu menu, int i, IntentBuilder intentbuilder)
    {
        MenuItem menuitem = menu.findItem(i);
        if (menuitem == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Could not find menu item with id ").append(i).append(" in the supplied menu").toString());
        } else
        {
            configureMenuItem(menuitem, intentbuilder);
            return;
        }
    }

    public static void configureMenuItem(MenuItem menuitem, IntentBuilder intentbuilder)
    {
        IMPL.configureMenuItem(menuitem, intentbuilder);
    }

    public static ComponentName getCallingActivity(Activity activity)
    {
        ComponentName componentname = activity.getCallingActivity();
        if (componentname == null)
        {
            componentname = (ComponentName)activity.getIntent().getParcelableExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY");
        }
        return componentname;
    }

    public static String getCallingPackage(Activity activity)
    {
        String s = activity.getCallingPackage();
        if (s == null)
        {
            s = activity.getIntent().getStringExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE");
        }
        return s;
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            IMPL = new ShareCompatImplJB();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            IMPL = new ShareCompatImplICS();
        } else
        {
            IMPL = new ShareCompatImplBase();
        }
    }


    private class ShareCompatImpl
    {

        public abstract void configureMenuItem(MenuItem menuitem, IntentBuilder intentbuilder);

        public abstract String escapeHtml(CharSequence charsequence);
    }


    private class ShareCompatImplJB extends ShareCompatImplICS
    {
        private class ShareCompatImplICS extends ShareCompatImplBase
        {
            private class ShareCompatImplBase
                implements ShareCompatImpl
            {

                private static void withinStyle(StringBuilder stringbuilder, CharSequence charsequence, int i, int j)
                {
                    int k = i;
                    while (k < j) 
                    {
                        char c = charsequence.charAt(k);
                        if (c == '<')
                        {
                            stringbuilder.append("&lt;");
                        } else
                        if (c == '>')
                        {
                            stringbuilder.append("&gt;");
                        } else
                        if (c == '&')
                        {
                            stringbuilder.append("&amp;");
                        } else
                        if (c > '~' || c < ' ')
                        {
                            stringbuilder.append((new StringBuilder()).append("&#").append(c).append(";").toString());
                        } else
                        if (c == ' ')
                        {
                            for (; k + 1 < j && charsequence.charAt(k + 1) == ' '; k++)
                            {
                                stringbuilder.append("&nbsp;");
                            }

                            stringbuilder.append(' ');
                        } else
                        {
                            stringbuilder.append(c);
                        }
                        k++;
                    }
                }

                public void configureMenuItem(MenuItem menuitem, IntentBuilder intentbuilder)
                {
                    menuitem.setIntent(intentbuilder.createChooserIntent());
                }

                public String escapeHtml(CharSequence charsequence)
                {
                    StringBuilder stringbuilder = new StringBuilder();
                    withinStyle(stringbuilder, charsequence, 0, charsequence.length());
                    return stringbuilder.toString();
                }

                ShareCompatImplBase()
                {
                }

                private class IntentBuilder
                {

                    private Activity mActivity;
                    private ArrayList mBccAddresses;
                    private ArrayList mCcAddresses;
                    private CharSequence mChooserTitle;
                    private Intent mIntent;
                    private ArrayList mStreams;
                    private ArrayList mToAddresses;

                    private void combineArrayExtra(String s, ArrayList arraylist)
                    {
                        String as[] = mIntent.getStringArrayExtra(s);
                        int i;
                        String as1[];
                        if (as != null)
                        {
                            i = as.length;
                        } else
                        {
                            i = 0;
                        }
                        as1 = new String[i + arraylist.size()];
                        arraylist.toArray(as1);
                        if (as != null)
                        {
                            System.arraycopy(as, 0, as1, arraylist.size(), i);
                        }
                        mIntent.putExtra(s, as1);
                    }

                    private void combineArrayExtra(String s, String as[])
                    {
                        Intent intent = getIntent();
                        String as1[] = intent.getStringArrayExtra(s);
                        int i;
                        String as2[];
                        if (as1 != null)
                        {
                            i = as1.length;
                        } else
                        {
                            i = 0;
                        }
                        as2 = new String[i + as.length];
                        if (as1 != null)
                        {
                            System.arraycopy(as1, 0, as2, 0, i);
                        }
                        System.arraycopy(as, 0, as2, i, as.length);
                        intent.putExtra(s, as2);
                    }

                    public static IntentBuilder from(Activity activity)
                    {
                        return new IntentBuilder(activity);
                    }

                    public IntentBuilder addEmailBcc(String s)
                    {
                        if (mBccAddresses == null)
                        {
                            mBccAddresses = new ArrayList();
                        }
                        mBccAddresses.add(s);
                        return this;
                    }

                    public IntentBuilder addEmailBcc(String as[])
                    {
                        combineArrayExtra("android.intent.extra.BCC", as);
                        return this;
                    }

                    public IntentBuilder addEmailCc(String s)
                    {
                        if (mCcAddresses == null)
                        {
                            mCcAddresses = new ArrayList();
                        }
                        mCcAddresses.add(s);
                        return this;
                    }

                    public IntentBuilder addEmailCc(String as[])
                    {
                        combineArrayExtra("android.intent.extra.CC", as);
                        return this;
                    }

                    public IntentBuilder addEmailTo(String s)
                    {
                        if (mToAddresses == null)
                        {
                            mToAddresses = new ArrayList();
                        }
                        mToAddresses.add(s);
                        return this;
                    }

                    public IntentBuilder addEmailTo(String as[])
                    {
                        combineArrayExtra("android.intent.extra.EMAIL", as);
                        return this;
                    }

                    public IntentBuilder addStream(Uri uri)
                    {
                        Uri uri1 = (Uri)mIntent.getParcelableExtra("android.intent.extra.STREAM");
                        if (uri1 == null)
                        {
                            return setStream(uri);
                        }
                        if (mStreams == null)
                        {
                            mStreams = new ArrayList();
                        }
                        if (uri1 != null)
                        {
                            mIntent.removeExtra("android.intent.extra.STREAM");
                            mStreams.add(uri1);
                        }
                        mStreams.add(uri);
                        return this;
                    }

                    public Intent createChooserIntent()
                    {
                        return Intent.createChooser(getIntent(), mChooserTitle);
                    }

                    Activity getActivity()
                    {
                        return mActivity;
                    }

                    public Intent getIntent()
                    {
                        if (mToAddresses != null)
                        {
                            combineArrayExtra("android.intent.extra.EMAIL", mToAddresses);
                            mToAddresses = null;
                        }
                        if (mCcAddresses != null)
                        {
                            combineArrayExtra("android.intent.extra.CC", mCcAddresses);
                            mCcAddresses = null;
                        }
                        if (mBccAddresses != null)
                        {
                            combineArrayExtra("android.intent.extra.BCC", mBccAddresses);
                            mBccAddresses = null;
                        }
                        boolean flag;
                        boolean flag1;
                        if (mStreams != null && mStreams.size() > 1)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        flag1 = mIntent.getAction().equals("android.intent.action.SEND_MULTIPLE");
                        if (!flag && flag1)
                        {
                            mIntent.setAction("android.intent.action.SEND");
                            if (mStreams != null && !mStreams.isEmpty())
                            {
                                mIntent.putExtra("android.intent.extra.STREAM", (Parcelable)mStreams.get(0));
                            } else
                            {
                                mIntent.removeExtra("android.intent.extra.STREAM");
                            }
                            mStreams = null;
                        }
                        if (flag && !flag1)
                        {
                            mIntent.setAction("android.intent.action.SEND_MULTIPLE");
                            if (mStreams != null && !mStreams.isEmpty())
                            {
                                mIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", mStreams);
                            } else
                            {
                                mIntent.removeExtra("android.intent.extra.STREAM");
                            }
                        }
                        return mIntent;
                    }

                    public IntentBuilder setChooserTitle(int i)
                    {
                        return setChooserTitle(mActivity.getText(i));
                    }

                    public IntentBuilder setChooserTitle(CharSequence charsequence)
                    {
                        mChooserTitle = charsequence;
                        return this;
                    }

                    public IntentBuilder setEmailBcc(String as[])
                    {
                        mIntent.putExtra("android.intent.extra.BCC", as);
                        return this;
                    }

                    public IntentBuilder setEmailCc(String as[])
                    {
                        mIntent.putExtra("android.intent.extra.CC", as);
                        return this;
                    }

                    public IntentBuilder setEmailTo(String as[])
                    {
                        if (mToAddresses != null)
                        {
                            mToAddresses = null;
                        }
                        mIntent.putExtra("android.intent.extra.EMAIL", as);
                        return this;
                    }

                    public IntentBuilder setHtmlText(String s)
                    {
                        mIntent.putExtra("android.intent.extra.HTML_TEXT", s);
                        if (!mIntent.hasExtra("android.intent.extra.TEXT"))
                        {
                            setText(Html.fromHtml(s));
                        }
                        return this;
                    }

                    public IntentBuilder setStream(Uri uri)
                    {
                        if (!mIntent.getAction().equals("android.intent.action.SEND"))
                        {
                            mIntent.setAction("android.intent.action.SEND");
                        }
                        mStreams = null;
                        mIntent.putExtra("android.intent.extra.STREAM", uri);
                        return this;
                    }

                    public IntentBuilder setSubject(String s)
                    {
                        mIntent.putExtra("android.intent.extra.SUBJECT", s);
                        return this;
                    }

                    public IntentBuilder setText(CharSequence charsequence)
                    {
                        mIntent.putExtra("android.intent.extra.TEXT", charsequence);
                        return this;
                    }

                    public IntentBuilder setType(String s)
                    {
                        mIntent.setType(s);
                        return this;
                    }

                    public void startChooser()
                    {
                        mActivity.startActivity(createChooserIntent());
                    }

                    private IntentBuilder(Activity activity)
                    {
                        mActivity = activity;
                        mIntent = (new Intent()).setAction("android.intent.action.SEND");
                        mIntent.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", activity.getPackageName());
                        mIntent.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", activity.getComponentName());
                        mIntent.addFlags(0x80000);
                    }
                }

            }


            public void configureMenuItem(MenuItem menuitem, IntentBuilder intentbuilder)
            {
                ShareCompatICS.configureMenuItem(menuitem, intentbuilder.getActivity(), intentbuilder.getIntent());
                if (shouldAddChooserIntent(menuitem))
                {
                    menuitem.setIntent(intentbuilder.createChooserIntent());
                }
            }

            boolean shouldAddChooserIntent(MenuItem menuitem)
            {
                return !menuitem.hasSubMenu();
            }

            ShareCompatImplICS()
            {
            }
        }


        public String escapeHtml(CharSequence charsequence)
        {
            return ShareCompatJB.escapeHtml(charsequence);
        }

        boolean shouldAddChooserIntent(MenuItem menuitem)
        {
            return false;
        }

        ShareCompatImplJB()
        {
        }
    }

}
