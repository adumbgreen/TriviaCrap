.class abstract Lcom/millennialmedia/android/MMLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/InlineVideoView$TransparentFix;
.implements Lcom/millennialmedia/android/MMAd;


# static fields
.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field private static b:Z


# instance fields
.field private a:Landroid/view/GestureDetector;

.field h:Lcom/millennialmedia/android/MMAdImpl;

.field i:Ljava/lang/String;

.field j:Z

.field k:Landroid/view/View;

.field l:Landroid/widget/RelativeLayout;

.field m:Lcom/millennialmedia/android/InlineVideoView;

.field n:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMLayout;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMLayout;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 651
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 654
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    .line 658
    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    .line 659
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 660
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 664
    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 667
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/MMLayout;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMLayout;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0xb

    const/high16 v4, 0x4248

    const/16 v3, 0xc

    .line 360
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->k:Landroid/view/View;

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->k:Landroid/view/View;

    .line 363
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 364
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v2, v4, v0

    float-to-int v2, v2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 367
    const-string v0, "top-right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 382
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->k:Landroid/view/View;

    new-instance v2, Lcom/millennialmedia/android/MMLayout$2;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMLayout$2;-><init>(Lcom/millennialmedia/android/MMLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->k:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    :cond_1
    return-void

    .line 369
    :cond_2
    const-string v0, "top-center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 371
    :cond_3
    const-string v0, "bottom-left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 373
    :cond_4
    const-string v0, "bottom-center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 375
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 376
    :cond_5
    const-string v0, "bottom-right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 378
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 379
    :cond_6
    const-string v0, "center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    :try_start_0
    const-string v0, "MMLayout"

    const-string v1, "Initializing MMLayout."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->f(Landroid/content/Context;)V

    .line 85
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->g(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/MMLayout$LayoutGestureListener;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMLayout$LayoutGestureListener;-><init>(Lcom/millennialmedia/android/MMLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->a:Landroid/view/GestureDetector;

    .line 95
    sget-boolean v0, Lcom/millennialmedia/android/MMLayout;->b:Z

    if-nez v0, :cond_0

    .line 96
    const-string v0, "MMLayout"

    const-string v1, "********** Millennial Device Id *****************"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "MMLayout"

    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "MMLayout"

    const-string v1, "Use the above identifier to register this device and receive test ads. Test devices can be registered and administered through your account at http://mmedia.com."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "MMLayout"

    const-string v1, "*************************************************"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->b(Landroid/content/Context;)V

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/MMLayout;->b:Z

    .line 103
    :cond_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "MMLayout"

    const-string v2, "There was an exception initializing the MMAdView. "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMAdImplController;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    const-string v0, "MMLayout"

    const-string v1, "No network available, can\'t load overlay."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 551
    new-instance v0, Lcom/millennialmedia/android/MMLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMLayout$3;-><init>(Lcom/millennialmedia/android/MMLayout;Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->a(Ljava/lang/Runnable;)V

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public addBlackView()V
    .locals 2

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/millennialmedia/android/MMLayout;->a()V

    .line 637
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 640
    :cond_0
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method b(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 590
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_2

    .line 591
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 592
    if-eqz v0, :cond_0

    .line 593
    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 597
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    .line 599
    :cond_2
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView;-><init>(Lcom/millennialmedia/android/MMLayout;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    .line 600
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/InlineVideoView;->b(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    .line 602
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 605
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 606
    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/InlineVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->e()V

    .line 609
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImplController;->a(Ljava/lang/String;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const-string v0, "MMLayout"

    const-string v1, "No network available, can\'t load overlay."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method e()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 617
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    .line 618
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    const v1, 0x35391858

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 619
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 624
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 629
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMAdImpl;->i:Z

    .line 67
    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->e(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 70
    :cond_0
    return-void
.end method

.method g()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getListener()Lcom/millennialmedia/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getMMRequest()Lcom/millennialmedia/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method l()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->k:Landroid/view/View;

    .line 339
    :cond_0
    return-void
.end method

.method m()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->f()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    .line 541
    :cond_0
    return-void
.end method

.method n()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->g()V

    .line 547
    :cond_0
    return-void
.end method

.method o()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->h()V

    .line 568
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 311
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 312
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 315
    const-string v0, "MMLayout"

    const-string v1, "MMAd missing id from getId(). Performance will be affected for configuration changes."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMLayout;->j:Z

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->b(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->A()V

    .line 325
    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 267
    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    const-string v2, "i"

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMAdImpl;->i:Z

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMLayout;->j:Z

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->e(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 280
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter

    .prologue
    .line 289
    check-cast p1, Landroid/os/Bundle;

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v0, v0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    .line 293
    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    const-string v3, "MMAdImplId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/millennialmedia/android/MMAdImpl;->h:J

    .line 294
    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    const-string v3, "MMAdImplLinkedId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/millennialmedia/android/MMAdImpl;->n:J

    .line 295
    const-string v2, "MMLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreInstanceState replacing adImpl-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "inlineVideoViewGson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    invoke-static {v0}, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->a(Ljava/lang/String;)Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMLayout;->b(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    .line 301
    :cond_0
    const-string v0, "super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 302
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 243
    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState saving - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    const-string v1, "super"

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 246
    const-string v1, "MMAdImplId"

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v2, v2, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 247
    const-string v1, "MMAdImplLinkedId"

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v2, v2, Lcom/millennialmedia/android/MMAdImpl;->n:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 248
    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v2

    iput v2, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    .line 252
    :cond_0
    const-string v1, "inlineVideoViewGson"

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 164
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 166
    if-eqz p1, :cond_5

    .line 167
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->j()V

    .line 177
    :cond_0
    :goto_0
    const-string v0, "MMLayout"

    const-string v1, "Window Focus Changed. For %s, Window in focus?: %b Controllers: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {}, Lcom/millennialmedia/android/MMAdImplController;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    .line 182
    if-eqz p1, :cond_6

    .line 183
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->onResumeWebView()V

    .line 184
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->q()V

    .line 193
    :cond_1
    :goto_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 195
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_3

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iput-boolean v5, v0, Lcom/millennialmedia/android/MMAdImpl;->i:Z

    .line 198
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->o()V

    .line 202
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->e(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 207
    :cond_3
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_4

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->b()Lcom/millennialmedia/android/MMJSResponse;

    .line 213
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_4
    return-void

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->i()V

    goto/16 :goto_0

    .line 187
    :cond_6
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a()Z

    .line 188
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->p()V

    .line 189
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->onPauseWebView()V

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method p()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->i()V

    .line 574
    :cond_0
    return-void
.end method

.method q()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->j()V

    .line 580
    :cond_0
    return-void
.end method

.method r()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeBlackView()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->n:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    :cond_0
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setApid(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method setCloseArea(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    new-instance v0, Lcom/millennialmedia/android/MMLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMLayout$1;-><init>(Lcom/millennialmedia/android/MMLayout;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMLayout;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 1
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setIgnoresDensityScaling(Z)V

    .line 502
    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 1
    .parameter

    .prologue
    .line 489
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 490
    return-void
.end method

.method public setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 514
    return-void
.end method

.method setMediaPlaybackRequiresUserGesture(Z)V
    .locals 5
    .parameter

    .prologue
    .line 148
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "setMediaPlaybackRequiresUserGesture"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setVideoSource(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 584
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/InlineVideoView;->a(Ljava/lang/String;)V

    .line 586
    :cond_0
    return-void
.end method
