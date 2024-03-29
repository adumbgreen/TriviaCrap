.class public Lcom/admarvel/android/ads/AdMarvelInternalWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action"

.field static BUNDLE_ID:Ljava/lang/String; = null

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field private static final MESSAGE_PLAY_AUDIO:I = 0x3f0

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field static VIEW_ID:I

.field private static final internalWebViewInAppBrowserPrivateListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/admarvel/android/ads/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final internalWebViewTwoPartPrivateListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/admarvel/android/ads/o;",
            ">;"
        }
    .end annotation
.end field

.field private static isInAppFirstTimeLoaded:Z

.field private static isPageFinished:Z

.field private static isPageFinishedInAppBrowser:Z


# instance fields
.field final GUID:Ljava/lang/String;

.field private final adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;

.field final adMarvelTwoPartLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field final adMarvelViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelView;",
            ">;"
        }
    .end annotation
.end field

.field public audioCachedCallback:Ljava/lang/String;

.field public audioCompletedCallback:Ljava/lang/String;

.field public audioPositionChangeCallback:Ljava/lang/String;

.field public audioStartedCallback:Ljava/lang/String;

.field private brightrollVideoStarted:Z

.field private final contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private disableCloseButton:Z

.field private final enableAutoDetect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private enableCloseAreaOnly:Z

.field private final enableFullScreenControls:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public gestureDetector:Landroid/view/GestureDetector;

.field private final handler:Landroid/os/Handler;

.field private final init:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isAdClosing:Z

.field public isAdExpanding:Z

.field private final isBannerAd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isInteratitialAd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isInterstitialAdDisplayed:Z

.field public isLastStateOfKeyLocked:Z

.field public isLastStateVisible:Z

.field private isTwoPartAdLoadingWithoutMraidInjection:Z

.field private final isTwoPartExpandAd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isfirst:Z

.field private mHeight:I

.field public mInAppBrowserCloseCallback:Ljava/lang/String;

.field public mInitLayoutX:I

.field public mInitLayoutY:I

.field private mLastLayoutHeight:I

.field private mLastLayoutWidth:I

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mWidth:I

.field private redirectionCheckCount:I

.field public setSoftwareLayer:Z

.field private signalShutdown:Z

.field public sizeChangeCallback:Ljava/lang/String;

.field private userInteractionDetected:Z

.field private viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

.field public visibilityCallback:Ljava/lang/String;

.field private final xml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x186a2

    sput v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->VIEW_ID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admarvel_internal_webview_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->VIEW_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->BUNDLE_ID:Ljava/lang/String;

    sput-boolean v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isPageFinished:Z

    sput-boolean v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isPageFinishedInAppBrowser:Z

    sput-boolean v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppFirstTimeLoaded:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->internalWebViewTwoPartPrivateListener:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->internalWebViewInAppBrowserPrivateListener:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/admarvel/android/ads/AdMarvelView;Landroid/widget/RelativeLayout;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setSoftwareLayer:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isAdExpanding:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isAdClosing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isfirst:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->disableCloseButton:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->enableCloseAreaOnly:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isTwoPartAdLoadingWithoutMraidInjection:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mInitLayoutX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mInitLayoutY:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateOfKeyLocked:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInterstitialAdDisplayed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->sizeChangeCallback:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->audioStartedCallback:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->audioCachedCallback:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->audioCompletedCallback:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->audioPositionChangeCallback:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mWidth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->brightrollVideoStarted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mInAppBrowserCloseCallback:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->userInteractionDetected:Z

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->xml:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->enableFullScreenControls:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->enableAutoDetect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->contextReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isBannerAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInteratitialAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isTwoPartExpandAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->redirectionCheckCount:I

    iput-object p8, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz p1, :cond_a

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_9

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInteratitialAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelViewReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelTwoPartLayoutReference:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setSoftwareLayer:Z

    :cond_1
    invoke-virtual {p0, p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/admarvel/android/ads/x;

    invoke-direct {v1}, Lcom/admarvel/android/ads/x;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setSoftwareLayer:Z

    invoke-static {p0, p1, v0, v1}, Lcom/admarvel/android/ads/ae;->a(Landroid/webkit/WebView;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    :cond_2
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setSoftwareLayer:Z

    invoke-static {p0, p1, v0, v1}, Lcom/admarvel/android/ads/ah;->a(Landroid/webkit/WebView;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    :goto_1
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setScrollBarStyle(I)V

    :cond_3
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isBannerAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setLayoutParams(Z)V

    if-eqz p1, :cond_6

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isTwoPartAdLoadingWithoutMraidInjection:Z

    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BTN_CLOSE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p0, v4, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;-><init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_10

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$b;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$b;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :goto_3
    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isTwoPartExpandAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isBannerAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isBannerAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setSoftwareLayer:Z

    invoke-static {p0, p1, v0, v1}, Lcom/admarvel/android/ads/ag;->a(Landroid/webkit/WebView;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0, p1, v0}, Lcom/admarvel/android/ads/af;->a(Landroid/webkit/WebView;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0, p1, v0}, Lcom/admarvel/android/ads/aj;->a(Landroid/webkit/WebView;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0, p1, v0}, Lcom/admarvel/android/ads/ai;->a(Landroid/webkit/WebView;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_1

    :cond_f
    const/4 v0, 0x0

    goto :goto_2

    :cond_10
    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->redirectionCheckCount:I

    return p1
.end method

.method static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->internalWebViewTwoPartPrivateListener:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/admarvel/android/ads/g;)V
    .locals 2

    const-class v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->internalWebViewInAppBrowserPrivateListener:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/admarvel/android/ads/o;)V
    .locals 2

    const-class v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->internalWebViewTwoPartPrivateListener:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isTwoPartAdLoadingWithoutMraidInjection:Z

    return p1
.end method

.method static b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->internalWebViewInAppBrowserPrivateListener:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->disableCloseButton:Z

    return v0
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->brightrollVideoStarted:Z

    return p1
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isPageFinishedInAppBrowser:Z

    return p0
.end method

.method public static c(Ljava/lang/String;)Lcom/admarvel/android/ads/o;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->internalWebViewTwoPartPrivateListener:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/o;

    return-object v0
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->internalWebViewInAppBrowserPrivateListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->internalWebViewTwoPartPrivateListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->enableCloseAreaOnly:Z

    return v0
.end method

.method static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppFirstTimeLoaded:Z

    return p0
.end method

.method public static d(Ljava/lang/String;)Lcom/admarvel/android/ads/g;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->internalWebViewInAppBrowserPrivateListener:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/g;

    return-object v0
.end method

.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->enableFullScreenControls:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isPageFinished:Z

    return p0
.end method

.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic g(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isTwoPartAdLoadingWithoutMraidInjection:Z

    return v0
.end method

.method static synthetic h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->redirectionCheckCount:I

    return v0
.end method

.method static synthetic j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->xml:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->enableAutoDetect:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic k()Z
    .locals 1

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isPageFinished:Z

    return v0
.end method

.method static synthetic l(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isBannerAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic l()Z
    .locals 1

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isPageFinishedInAppBrowser:Z

    return v0
.end method

.method static synthetic m()Z
    .locals 1

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppFirstTimeLoaded:Z

    return v0
.end method

.method static synthetic m(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->brightrollVideoStarted:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelTwoPartLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    :cond_1
    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->gestureDetector:Landroid/view/GestureDetector;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->gestureDetector:Landroid/view/GestureDetector;

    const-string v0, "AdMarveInternalWebView:cleanup"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    return-void
.end method

.method a(IIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelWebView;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->g()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_1
    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    invoke-direct {v1, p0, v0, p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelWebView;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Z)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->disableCloseButton:Z

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->enableCloseAreaOnly:Z

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->userInteractionDetected:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d()V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    const-string v0, "AdMarveInternalWebView:destroy()"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInteratitialAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isTwoPartExpandAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInteratitialAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInterstitialAdDisplayed:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isBannerAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getLocationInWindow([I)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v5, v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v5, :cond_6

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v0, :cond_6

    iget v5, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I

    const/high16 v6, -0x8000

    if-eq v5, v6, :cond_4

    iget v5, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I

    if-lez v5, :cond_4

    iget v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I

    :goto_2
    aget v5, v4, v3

    sub-int v0, v5, v0

    add-int/2addr v0, v1

    if-ltz v0, :cond_5

    aget v0, v4, v3

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_5

    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public f()V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInteratitialAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isTwoPartExpandAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInteratitialAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInterstitialAdDisplayed:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isBannerAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getLocationInWindow([I)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v5, v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v5, :cond_6

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v0, :cond_6

    iget v5, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I

    const/high16 v6, -0x8000

    if-eq v5, v6, :cond_5

    iget v5, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I

    if-lez v5, :cond_5

    iget v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I

    :goto_2
    aget v5, v4, v3

    sub-int v0, v5, v0

    add-int/2addr v0, v1

    if-ltz v0, :cond_3

    aget v0, v4, v3

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_3

    move v2, v3

    :cond_3
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_2

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->viewableRunnable:Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableAutoDetect()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->enableAutoDetect:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method h()V
    .locals 3

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mLastLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mLastLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    iget v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mLastLayoutWidth:I

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mLastLayoutHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->requestLayout()V

    goto :goto_0
.end method

.method i()V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->enableFullScreenControls:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    sget v2, Lcom/admarvel/android/ads/w;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_3

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-direct {v1, p0, v0, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;)V

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelAd:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-direct {v1, p0, v0, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;)V

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView$j;

    invoke-direct {v1, p0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$j;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isSignalShutdown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    return v0
.end method

.method public j()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->disableCloseButton:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput-boolean v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->disableCloseButton:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v3

    instance-of v0, v1, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mLastLayoutHeight:I

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mLastLayoutWidth:I

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isfirst:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isfirst:Z

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mHeight:I

    if-eq v0, v6, :cond_3

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mWidth:I

    if-eq v0, v6, :cond_3

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mWidth:I

    if-ne v2, v0, :cond_2

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mHeight:I

    if-eq v3, v0, :cond_3

    :cond_2
    if-lez v2, :cond_3

    if-lez v3, :cond_3

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mWidth:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mHeight:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->sizeChangeCallback:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->sizeChangeCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    :cond_3
    iput v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mWidth:I

    iput v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mHeight:I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInteratitialAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isTwoPartExpandAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    :cond_6
    iput-boolean v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInterstitialAdDisplayed:Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    :cond_8
    iput-boolean v5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInterstitialAdDisplayed:Z

    goto/16 :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->userInteractionDetected:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isInAppBrowser:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_2

    :cond_1
    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method setLayoutParams(Z)V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1
.end method

.method public setSignalShutdown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->signalShutdown:Z

    return-void
.end method
