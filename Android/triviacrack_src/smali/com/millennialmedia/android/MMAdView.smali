.class public final Lcom/millennialmedia/android/MMAdView;
.super Lcom/millennialmedia/android/MMLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field public static final TRANSITION_DOWN:I = 0x3

.field public static final TRANSITION_FADE:I = 0x1

.field public static final TRANSITION_NONE:I = 0x0

.field public static final TRANSITION_RANDOM:I = 0x4

.field public static final TRANSITION_UP:I = 0x2


# instance fields
.field a:Landroid/widget/ImageView;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Lcom/millennialmedia/android/MMAdView$ResizeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, -0x32

    .line 65
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->b:I

    .line 48
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->c:I

    .line 49
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->d:I

    .line 546
    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->e:I

    .line 547
    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->f:I

    .line 66
    new-instance v0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    .line 67
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->b(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v1, -0x32

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->b:I

    .line 48
    iput v3, p0, Lcom/millennialmedia/android/MMAdView;->c:I

    .line 49
    iput v3, p0, Lcom/millennialmedia/android/MMAdView;->d:I

    .line 546
    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->e:I

    .line 547
    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->f:I

    .line 94
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    const-string v0, "MMAdView"

    const-string v1, "Creating MMAdView from XML layout."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    .line 97
    if-eqz p2, :cond_3

    .line 98
    const-string v1, "http://millennialmedia.com/android/schema"

    .line 99
    const-string v0, "apid"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    const-string v2, "ignoreDensityScaling"

    invoke-interface {p2, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMAdImpl;->d:Z

    .line 102
    const-string v0, "height"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v2, "width"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->c:I

    .line 108
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->d:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "age"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->a:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "children"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->b:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "education"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->c:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "ethnicity"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->d:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "gender"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->e:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "income"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->f:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "keywords"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->g:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "marital"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->h:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "politics"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->i:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "vendor"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->j:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "zip"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/MMRequest;->k:Ljava/lang/String;

    .line 142
    :cond_2
    const-string v0, "goalId"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->i:Ljava/lang/String;

    .line 144
    :cond_3
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->b(Landroid/content/Context;)V

    .line 148
    :goto_1
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v2, "MMAdView"

    const-string v3, "Error reading attrs file from xml"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 146
    :cond_4
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->c(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    .line 695
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setTranslationX"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 697
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    const-string v1, "MMAdView"

    const-string v2, "Unable to call setTranslationX"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 587
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 590
    check-cast v0, Landroid/view/ViewGroup;

    .line 591
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_0
    monitor-exit p0

    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->b(Landroid/view/View;)V

    return-void
.end method

.method private b(I)V
    .locals 5
    .parameter

    .prologue
    .line 706
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setTranslationY"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 708
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 710
    const-string v1, "MMAdView"

    const-string v2, "Unable to call setTranslationY"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V

    .line 164
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    const-string v1, "b"

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    .line 165
    invoke-virtual {p0, p0}, Lcom/millennialmedia/android/MMAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setFocusable(Z)V

    .line 170
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->a:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 172
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void
.end method

.method private declared-synchronized b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->a(Landroid/view/View;)V

    .line 601
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 603
    check-cast v0, Landroid/app/Activity;

    .line 604
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 605
    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 608
    check-cast v0, Landroid/view/ViewGroup;

    .line 609
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :cond_0
    monitor-exit p0

    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->a(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 718
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->f:I

    .line 719
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->e:I

    .line 720
    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->f:I

    if-gtz v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->f:I

    .line 723
    :cond_0
    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->e:I

    if-gtz v0, :cond_1

    .line 724
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->e:I

    .line 727
    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 183
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 184
    const-string v0, "http://images.millennialmedia.com/9513/192134.gif"

    .line 188
    :try_start_0
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "millenial355jns6u3l1nmedia.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 195
    new-instance v0, Ljava/net/URL;

    const-string v2, "http://images.millennialmedia.com/9513/192134.gif"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 197
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 198
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 201
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 202
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 203
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 205
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_3

    .line 206
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 215
    :goto_1
    :try_start_3
    const-string v3, "MMAdView"

    const-string v5, "Error with eclipse xml image display: "

    invoke-static {v3, v5, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 218
    if-eqz v2, :cond_1

    .line 219
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 221
    :cond_1
    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 228
    :cond_2
    :goto_2
    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V

    .line 229
    return-void

    :cond_3
    move-object v1, v2

    move-object v2, v3

    .line 209
    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 218
    :cond_4
    if-eqz v2, :cond_5

    .line 219
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 221
    :cond_5
    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 224
    :catch_1
    move-exception v0

    .line 225
    const-string v1, "MMAdView"

    const-string v2, "Error closing file"

    :goto_4
    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 217
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 218
    :goto_5
    if-eqz v2, :cond_6

    .line 219
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 221
    :cond_6
    if-eqz v1, :cond_7

    .line 222
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 217
    :cond_7
    :goto_6
    throw v0

    .line 224
    :catch_2
    move-exception v1

    .line 225
    const-string v2, "MMAdView"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 224
    :catch_3
    move-exception v0

    .line 225
    const-string v1, "MMAdView"

    const-string v2, "Error closing file"

    goto :goto_4

    .line 217
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 214
    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1

    :cond_8
    move-object v2, v1

    goto :goto_3
.end method

.method private d()Z
    .locals 2

    .prologue
    const/16 v1, -0x32

    .line 731
    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdInternal()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->f()V

    .line 508
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 2

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->l()V

    .line 668
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 670
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 671
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->e:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 672
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->a(I)V

    .line 673
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->b(I)V

    .line 674
    const/16 v0, -0x32

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->f:I

    .line 675
    const/16 v0, -0x32

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->e:I

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    if-eqz v0, :cond_2

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->j:Z

    .line 679
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->a(Landroid/view/View;)V

    .line 680
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 682
    check-cast v0, Landroid/view/ViewGroup;

    .line 683
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 687
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :cond_2
    monitor-exit p0

    return-void

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 5
    .parameter

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 624
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    if-nez v0, :cond_0

    .line 626
    new-instance v0, Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/MMAdView$ResizeView;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    .line 627
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    const v1, 0x121f0dbe

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setId(I)V

    .line 628
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setBackgroundColor(I)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 632
    if-nez v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 635
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->g:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 638
    :cond_1
    new-instance v0, Lcom/millennialmedia/android/MMAdView$BannerBounds;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

    .line 640
    iget-boolean v1, p1, Lcom/millennialmedia/android/DTOResizeParameters;->f:Z

    if-nez v1, :cond_2

    .line 641
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->a()V

    .line 644
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 645
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    .line 647
    invoke-direct {p0, p0}, Lcom/millennialmedia/android/MMAdView;->b(Landroid/view/View;)V

    .line 648
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 649
    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    .line 651
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->c()V

    .line 653
    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    sub-int/2addr v3, v4

    .line 654
    const/4 v4, 0x1

    aget v1, v1, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-int/2addr v1, v2

    .line 656
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 657
    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 658
    iget v2, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->a:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/MMAdView;->a(I)V

    .line 659
    iget v0, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->b:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->b(I)V

    .line 660
    iget-object v0, p1, Lcom/millennialmedia/android/DTOResizeParameters;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setCloseArea(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    :cond_3
    monitor-exit p0

    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic addBlackView()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->addBlackView()V

    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->p()V

    .line 305
    return-void
.end method

.method public getAd()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->c:Lcom/millennialmedia/android/RequestListener;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->c:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->getAd(Lcom/millennialmedia/android/RequestListener;)V

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAdInternal()V

    goto :goto_0
.end method

.method public getAd(Lcom/millennialmedia/android/RequestListener;)V
    .locals 1
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdImpl;->c:Lcom/millennialmedia/android/RequestListener;

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAdInternal()V

    .line 501
    return-void
.end method

.method public bridge synthetic getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getListener()Lcom/millennialmedia/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getMMRequest()Lcom/millennialmedia/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 471
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 240
    const-string v0, "MMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On click for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adimpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-super/range {p0 .. p5}, Lcom/millennialmedia/android/MMLayout;->onLayout(ZIIII)V

    .line 252
    new-instance v0, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 513
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->onWindowFocusChanged(Z)V

    .line 515
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-nez v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-nez v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdImplController;->d(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    .line 528
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v1, v1, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/MMWebView;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/android/MMWebView;->c:Ljava/lang/String;

    const-string v2, "expanded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->v()V

    .line 542
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public bridge synthetic removeBlackView()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->removeBlackView()V

    return-void
.end method

.method public bridge synthetic setApid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setApid(Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setBackgroundColor(I)V

    .line 154
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMWebView;->setBackgroundColor(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->c:I

    .line 278
    return-void
.end method

.method public bridge synthetic setIgnoresDensityScaling(Z)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setIgnoresDensityScaling(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    return-void
.end method

.method public bridge synthetic setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    return-void
.end method

.method public setTransitionType(I)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->b:I

    .line 299
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->d:I

    .line 290
    return-void
.end method
