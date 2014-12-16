.class public Lcom/etermax/gamescommon/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/view/View;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/PopupWindow;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v3, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    .line 38
    iput-object p2, p0, Lcom/etermax/gamescommon/k/a;->b:Landroid/view/View;

    .line 39
    iput-object p1, p0, Lcom/etermax/gamescommon/k/a;->e:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/k/a;->f:Landroid/view/LayoutInflater;

    .line 41
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/etermax/k;->common_quick_action:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/k/a;->a:Landroid/widget/RelativeLayout;

    .line 42
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->a:Landroid/widget/RelativeLayout;

    sget v1, Lcom/etermax/i;->quick_action_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/k/a;->c:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p1, v0

    .line 174
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 175
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 177
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->a:Landroid/widget/RelativeLayout;

    sget v1, Lcom/etermax/i;->quick_action_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    return-void
.end method

.method public a(IIZZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 106
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6, v6}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 107
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/etermax/gamescommon/k/a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 110
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 111
    iget-object v3, p0, Lcom/etermax/gamescommon/k/a;->b:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 113
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/etermax/gamescommon/k/a;->a:Landroid/widget/RelativeLayout;

    invoke-direct {v3, v4, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    .line 114
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 115
    invoke-virtual {p0, v6, v6, v6}, Lcom/etermax/gamescommon/k/a;->a(ZZZ)V

    .line 116
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/etermax/gamescommon/k/a;->b:Landroid/view/View;

    aget v4, v2, v6

    add-int/2addr v4, p2

    const/4 v5, 0x1

    aget v2, v2, v5

    iget-object v5, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v0, v3, v6, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 118
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/etermax/g;->quick_action_arrow_left_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 119
    iget-object v2, p0, Lcom/etermax/gamescommon/k/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/g;->quick_action_arrow_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 122
    packed-switch p1, :pswitch_data_0

    .line 133
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 136
    :goto_0
    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/k/a;->a(I)V

    .line 138
    return-void

    .line 124
    :pswitch_0
    float-to-int v0, v0

    .line 125
    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 130
    :pswitch_2
    int-to-float v0, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 131
    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->a:Landroid/widget/RelativeLayout;

    sget v1, Lcom/etermax/i;->quick_action_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69
    return-void
.end method

.method public a(ZZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 57
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 58
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/k/a;->d:Landroid/widget/PopupWindow;

    .line 184
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method
