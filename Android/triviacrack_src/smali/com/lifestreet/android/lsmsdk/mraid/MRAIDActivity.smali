.class public final Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;
.super Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "com.lifestreet.action.CLOSE"

.field public static final ACTION_HIDE_CLOSE_BUTTON:Ljava/lang/String; = "com.lifestreet.action.HIDE_CLOSE_BUTTON"

.field public static final ACTION_SHOW_CLOSE_BUTTON:Ljava/lang/String; = "com.lifestreet.action.SHOW_CLOSE_BUTTON"

.field public static final CATEGORY:Ljava/lang/String; = "com.lifestreet.category.MRAIDActivity"

.field public static final EXTRA_VIEW_ID:Ljava/lang/String; = "com.lifestreet.extra.VIEW_ID"

.field public static final WEB_VIEWS:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

.field private mContainerView:Landroid/widget/RelativeLayout;

.field private mMraidViewId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->WEB_VIEWS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;-><init>()V

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mMraidViewId:J

    .line 47
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity$1;

    invoke-direct {v0, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity$1;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mMraidViewId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->showCloseButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->hideCloseButton()V

    return-void
.end method

.method private broadcastAction(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "com.lifestreet.category.MRAIDActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "com.lifestreet.extra.VIEW_ID"

    iget-wide v2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mMraidViewId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public static getMraidWebView(J)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;
    .locals 3
    .parameter

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->WEB_VIEWS:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private hideCloseButton()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;->setVisibility(I)V

    .line 147
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    const-string v1, "com.lifestreet.action.CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "com.lifestreet.action.SHOW_CLOSE_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "com.lifestreet.action.HIDE_CLOSE_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "com.lifestreet.category.MRAIDActivity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void
.end method

.method public static show(Landroid/content/Context;JLcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->WEB_VIEWS:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v1, "com.lifestreet.WebViewId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method private showCloseButton()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;->setVisibility(I)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->finish()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 92
    invoke-super {p0, p1}, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    const-string v1, "com.lifestreet.WebViewId"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mMraidViewId:J

    .line 97
    const/4 v0, -0x1

    .line 98
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mContainerView:Landroid/widget/RelativeLayout;

    .line 99
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mContainerView:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mContainerView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 102
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    invoke-direct {v0, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    .line 103
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    invoke-virtual {v0, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-wide v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mMraidViewId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 106
    iget-wide v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mMraidViewId:J

    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->getMraidWebView(J)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mContainerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    invoke-virtual {v2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;->getLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->setContentView(Landroid/view/View;)V

    .line 115
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->registerReceiver()V

    .line 116
    const-string v0, "com.lifestreet.action.PRESENT_SCREEN"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->broadcastAction(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 124
    iget-wide v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mMraidViewId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->WEB_VIEWS:Ljava/util/Map;

    iget-wide v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mMraidViewId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    const-string v0, "com.lifestreet.action.DISMISS_SCREEN"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->broadcastAction(Ljava/lang/String;)V

    .line 129
    invoke-super {p0}, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;->onDestroy()V

    .line 130
    return-void
.end method
