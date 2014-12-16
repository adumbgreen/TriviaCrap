// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget.colorpicker;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.etermax.i;
import com.etermax.k;
import com.etermax.q;

// Referenced classes of package com.etermax.widget.colorpicker:
//            c, ColorPanelView, ColorPickerView

public class ColorPickerPreference extends DialogPreference
    implements c
{

    private ColorPickerView a;
    private ColorPanelView b;
    private ColorPanelView c;
    private int d;
    private boolean e;
    private String f;
    private boolean g;
    private boolean h;
    private int i;
    private int j;

    public ColorPickerPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        e = false;
        f = null;
        g = false;
        h = true;
        i = -1;
        j = -1;
        a(attributeset);
    }

    public ColorPickerPreference(Context context, AttributeSet attributeset, int l)
    {
        super(context, attributeset, l);
        e = false;
        f = null;
        g = false;
        h = true;
        i = -1;
        j = -1;
        a(attributeset);
    }

    private void a(AttributeSet attributeset)
    {
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, q.ColorPickerPreference);
        g = typedarray.getBoolean(0, false);
        h = typedarray.getBoolean(1, true);
        typedarray.recycle();
        TypedArray typedarray1 = getContext().obtainStyledAttributes(attributeset, q.ColorPickerView);
        e = typedarray1.getBoolean(0, false);
        f = typedarray1.getString(1);
        i = typedarray1.getColor(2, -1);
        j = typedarray1.getColor(3, -1);
        typedarray1.recycle();
        if (h)
        {
            setWidgetLayoutResource(k.preference_preview_layout);
        }
        if (!g)
        {
            setDialogTitle(null);
        }
        setDialogLayoutResource(k.dialog_color_picker);
        setPositiveButtonText(0x104000a);
        setNegativeButtonText(0x1040000);
        setPersistent(true);
    }

    public void a(int l)
    {
        c.setColor(l);
    }

    protected void onBindDialogView(View view)
    {
        super.onBindDialogView(view);
        a = (ColorPickerView)view.findViewById(i.color_picker_view);
        LinearLayout linearlayout = (LinearLayout)view.findViewById(i.dialog_color_picker_extra_layout_landscape);
        boolean flag;
        if (linearlayout != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = (ColorPickerView)view.findViewById(i.color_picker_view);
        b = (ColorPanelView)view.findViewById(i.color_panel_old);
        c = (ColorPanelView)view.findViewById(i.color_panel_new);
        if (!flag)
        {
            ((LinearLayout)b.getParent()).setPadding(Math.round(a.getDrawingOffset()), 0, Math.round(a.getDrawingOffset()), 0);
        } else
        {
            linearlayout.setPadding(0, 0, Math.round(a.getDrawingOffset()), 0);
        }
        a.setAlphaSliderVisible(e);
        a.setAlphaSliderText(f);
        a.setSliderTrackerColor(i);
        if (i != -1)
        {
            a.setSliderTrackerColor(i);
        }
        if (j != -1)
        {
            a.setBorderColor(j);
        }
        a.setOnColorChangedListener(this);
        b.setColor(d);
        a.a(d, true);
    }

    protected void onBindView(View view)
    {
        super.onBindView(view);
        ColorPanelView colorpanelview = (ColorPanelView)view.findViewById(i.preference_preview_color_panel);
        if (colorpanelview != null)
        {
            colorpanelview.setColor(d);
        }
    }

    protected void onDialogClosed(boolean flag)
    {
        if (flag)
        {
            d = a.getColor();
            persistInt(d);
            notifyChanged();
        }
    }

    protected Object onGetDefaultValue(TypedArray typedarray, int l)
    {
        return Integer.valueOf(typedarray.getInteger(l, 0xff000000));
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        if (parcelable == null || !parcelable.getClass().equals(com/etermax/widget/colorpicker/ColorPickerPreference$SavedState))
        {
            super.onRestoreInstanceState(parcelable);
        } else
        {
            SavedState savedstate = (SavedState)parcelable;
            super.onRestoreInstanceState(savedstate.getSuperState());
            if (getDialog() != null && a != null)
            {
                a.a(savedstate.a, true);
                return;
            }
        }
    }

    protected Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        if (getDialog() != null && a != null)
        {
            savedstate.a = a.getColor();
            return savedstate;
        } else
        {
            savedstate.a = 0;
            return savedstate;
        }
    }

    protected void onSetInitialValue(boolean flag, Object obj)
    {
        if (flag)
        {
            d = getPersistedInt(0xff000000);
            return;
        } else
        {
            d = ((Integer)obj).intValue();
            persistInt(d);
            return;
        }
    }

    private class SavedState extends android.preference.Preference.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState a(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public SavedState[] a(int l)
            {
                return new SavedState[l];
            }

            public Object createFromParcel(Parcel parcel)
            {
                return a(parcel);
            }

            public Object[] newArray(int l)
            {
                return a(l);
            }

        };
        int a;

        public void writeToParcel(Parcel parcel, int l)
        {
            super.writeToParcel(parcel, l);
            parcel.writeInt(a);
        }


        public SavedState(Parcel parcel)
        {
            super(parcel);
            a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

}
