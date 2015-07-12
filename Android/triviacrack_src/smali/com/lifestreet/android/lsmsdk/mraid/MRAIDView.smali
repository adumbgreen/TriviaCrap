.class public final Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mDestroyed:Z

.field private mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

.field private final mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

.field private mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

.field private mViewId:J

.field private mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean v5, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mViewId:J

    .line 43
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-direct {v0, p1, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;-><init>(Landroid/content/Context;Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    .line 44
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-virtual {v0, p4}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->setPlacementType(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;)V

    .line 46
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {p0, v5}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->setBackgroundColor(I)V

    .line 51
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;

    invoke-direct {v2, p0, v5}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;Z)V

    new-instance v3, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-direct {v3, v5, v4}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;-><init>(ZLcom/lifestreet/android/lsmsdk/mraid/MRAIDController;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    .line 53
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 57
    check-cast p1, Landroid/app/Activity;

    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INLINE:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;-><init>(Landroid/app/Activity;IILcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    return-object v0
.end method

.method private addViewDelayed(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method private onCloseExpandedView()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->defaultState()V

    .line 152
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    invoke-interface {v0, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;->onClose(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V

    .line 155
    :cond_0
    return-void
.end method

.method private showViewDelayed(Ljava/lang/ref/WeakReference;J)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$3;

    invoke-direct {v0, p0, p1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$3;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z

    .line 63
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->destroy()V

    .line 65
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    .line 66
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    .line 68
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->removeAllViews()V

    .line 71
    :cond_0
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    .line 72
    return-void
.end method

.method public evaluateJavaScriptString(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$1;

    invoke-direct {v0, p0, p1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$1;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method public expandToSize(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->isInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->removeView(Landroid/view/View;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    .line 115
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mViewId:J

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    invoke-static {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->show(Landroid/content/Context;JLcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;)V

    .line 117
    :cond_0
    return-void
.end method

.method public expandToSizeWithContent(Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 120
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->isInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->setVisibility(I)V

    .line 123
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;

    invoke-direct {v3, p0, v6}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;Z)V

    new-instance v4, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;

    iget-object v5, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-direct {v4, v6, v5}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;-><init>(ZLcom/lifestreet/android/lsmsdk/mraid/MRAIDController;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    .line 126
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mViewId:J

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    invoke-static {v0, v2, v3, v4}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->show(Landroid/content/Context;JLcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;)V

    .line 128
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public getListener()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    return-object v0
.end method

.method public getViewId()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mViewId:J

    return-wide v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    return-object v0
.end method

.method public loadHTML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-virtual {v0, p2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->prepareHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onCloseMraidActivity()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x12c

    .line 75
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    if-nez v0, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->onCloseExpandedView()V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->addViewDelayed(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;J)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->destroy()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    .line 84
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->onCloseExpandedView()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v3, v4}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->showViewDelayed(Ljava/lang/ref/WeakReference;J)V

    goto :goto_0
.end method

.method public setListener(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    .line 135
    return-void
.end method
