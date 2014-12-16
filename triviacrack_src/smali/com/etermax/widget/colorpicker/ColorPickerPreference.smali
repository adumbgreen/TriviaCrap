.class public Lcom/etermax/widget/colorpicker/ColorPickerPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/widget/colorpicker/c;


# instance fields
.field private a:Lcom/etermax/widget/colorpicker/ColorPickerView;

.field private b:Lcom/etermax/widget/colorpicker/ColorPanelView;

.field private c:Lcom/etermax/widget/colorpicker/ColorPanelView;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->e:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->f:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->g:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->h:Z

    .line 27
    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->i:I

    .line 28
    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->j:I

    .line 32
    invoke-direct {p0, p2}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a(Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-boolean v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->e:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->f:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->g:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->h:Z

    .line 27
    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->i:I

    .line 28
    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->j:I

    .line 37
    invoke-direct {p0, p2}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a(Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/etermax/q;->ColorPickerPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->g:Z

    .line 44
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->h:Z

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/etermax/q;->ColorPickerView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->e:Z

    .line 50
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->f:Ljava/lang/String;

    .line 51
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->i:I

    .line 52
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->j:I

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    iget-boolean v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->h:Z

    if-eqz v0, :cond_0

    .line 57
    sget v0, Lcom/etermax/k;->preference_preview_layout:I

    invoke-virtual {p0, v0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->setWidgetLayoutResource(I)V

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->g:Z

    if-nez v0, :cond_1

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    sget v0, Lcom/etermax/k;->dialog_color_picker:I

    invoke-virtual {p0, v0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->setDialogLayoutResource(I)V

    .line 66
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->setPositiveButtonText(I)V

    .line 67
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->setNegativeButtonText(I)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->setPersistent(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->c:Lcom/etermax/widget/colorpicker/ColorPanelView;

    invoke-virtual {v0, p1}, Lcom/etermax/widget/colorpicker/ColorPanelView;->setColor(I)V

    .line 194
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 128
    sget v0, Lcom/etermax/i;->color_picker_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/widget/colorpicker/ColorPickerView;

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    .line 130
    sget v0, Lcom/etermax/i;->dialog_color_picker_extra_layout_landscape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 132
    if-eqz v0, :cond_3

    move v2, v3

    .line 136
    :goto_0
    sget v1, Lcom/etermax/i;->color_picker_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/etermax/widget/colorpicker/ColorPickerView;

    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    .line 137
    sget v1, Lcom/etermax/i;->color_panel_old:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/etermax/widget/colorpicker/ColorPanelView;

    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->b:Lcom/etermax/widget/colorpicker/ColorPanelView;

    .line 138
    sget v1, Lcom/etermax/i;->color_panel_new:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/etermax/widget/colorpicker/ColorPanelView;

    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->c:Lcom/etermax/widget/colorpicker/ColorPanelView;

    .line 140
    if-nez v2, :cond_2

    .line 141
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->b:Lcom/etermax/widget/colorpicker/ColorPanelView;

    invoke-virtual {v0}, Lcom/etermax/widget/colorpicker/ColorPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    invoke-virtual {v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    invoke-virtual {v2}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    iget-boolean v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->e:Z

    invoke-virtual {v0, v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 148
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->i:I

    invoke-virtual {v0, v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->setSliderTrackerColor(I)V

    .line 151
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->i:I

    if-eq v0, v5, :cond_0

    .line 152
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->i:I

    invoke-virtual {v0, v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->setSliderTrackerColor(I)V

    .line 155
    :cond_0
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->j:I

    if-eq v0, v5, :cond_1

    .line 156
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->j:I

    invoke-virtual {v0, v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->setBorderColor(I)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    invoke-virtual {v0, p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->setOnColorChangedListener(Lcom/etermax/widget/colorpicker/c;)V

    .line 162
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->b:Lcom/etermax/widget/colorpicker/ColorPanelView;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->d:I

    invoke-virtual {v0, v1}, Lcom/etermax/widget/colorpicker/ColorPanelView;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->d:I

    invoke-virtual {v0, v1, v3}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(IZ)V

    .line 164
    return-void

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    invoke-virtual {v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    move v2, v4

    goto/16 :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 114
    sget v0, Lcom/etermax/i;->preference_preview_color_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/widget/colorpicker/ColorPanelView;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->d:I

    invoke-virtual {v0, v1}, Lcom/etermax/widget/colorpicker/ColorPanelView;->setColor(I)V

    .line 120
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->d:I

    .line 170
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->d:I

    invoke-virtual {p0, v0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->persistInt(I)Z

    .line 171
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->notifyChanged()V

    .line 173
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    const/high16 v0, -0x100

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    .line 92
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    check-cast p1, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;

    .line 100
    invoke-virtual {p1}, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 103
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    iget v1, p1, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(IZ)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 80
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->a:Lcom/etermax/widget/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    iput v0, v1, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;->a:I

    .line 86
    :goto_0
    return-object v1

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput v0, v1, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;->a:I

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->d:I

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->d:I

    .line 182
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->d:I

    invoke-virtual {p0, v0}, Lcom/etermax/widget/colorpicker/ColorPickerPreference;->persistInt(I)Z

    goto :goto_0
.end method
