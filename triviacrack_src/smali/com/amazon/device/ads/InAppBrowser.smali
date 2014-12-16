.class Lcom/amazon/device/ads/InAppBrowser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;


# static fields
.field protected static final BUTTON_SIZE_DP:I = 0x32

.field private static final CONTENT_DESCRIPTION_BACK_BUTTON:Ljava/lang/String; = "inAppBrowserBackButton"

.field private static final CONTENT_DESCRIPTION_BUTTON_LAYOUT:Ljava/lang/String; = "inAppBrowserButtonLayout"

.field private static final CONTENT_DESCRIPTION_CLOSE_BUTTON:Ljava/lang/String; = "inAppBrowserCloseButton"

.field private static final CONTENT_DESCRIPTION_FORWARD_BUTTON:Ljava/lang/String; = "inAppBrowserForwardButton"

.field private static final CONTENT_DESCRIPTION_HORZ_RULE:Ljava/lang/String; = "inAppBrowserHorizontalRule"

.field private static final CONTENT_DESCRIPTION_MAIN_LAYOUT:Ljava/lang/String; = "inAppBrowserMainLayout"

.field private static final CONTENT_DESCRIPTION_OPEN_EXT_BRWSR_BUTTON:Ljava/lang/String; = "inAppBrowserOpenExternalBrowserButton"

.field private static final CONTENT_DESCRIPTION_REFRESH_BUTTON:Ljava/lang/String; = "inAppBrowserRefreshButton"

.field private static final CONTENT_DESCRIPTION_RELATIVE_LAYOUT:Ljava/lang/String; = "inAppBrowserRelativeLayout"

.field private static final CONTENT_DESCRIPTION_WEB_VIEW:Ljava/lang/String; = "inAppBrowserWebView"

.field protected static final HORIZONTAL_RULE_SIZE_DP:I = 0x3

.field protected static final LOG_TAG:Ljava/lang/String; = null

.field protected static final SHOW_OPEN_EXTERNAL_BROWSER_BTN:Ljava/lang/String; = "extra_open_btn"

.field protected static final URL_EXTRA:Ljava/lang/String; = "extra_url"


# instance fields
.field private activity:Landroid/app/Activity;

.field private browserBackButton:Landroid/widget/ImageButton;

.field private browserForwardButton:Landroid/widget/ImageButton;

.field private final buttonsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private closeButton:Landroid/widget/ImageButton;

.field private openExternalBrowserButton:Landroid/widget/ImageButton;

.field private refreshButton:Landroid/widget/ImageButton;

.field private showOpenExternalBrowserButton:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/amazon/device/ads/InAppBrowser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/InAppBrowser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->buttonsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 434
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/InAppBrowser;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/InAppBrowser;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/InAppBrowser;->updateNavigationButtons(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/device/ads/InAppBrowser;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/InAppBrowser;->initializeButtons(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/device/ads/InAppBrowser;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->buttonsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;IIII)Landroid/widget/ImageButton;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/amazon/device/ads/InAppBrowser;->createButton(Ljava/lang/String;IIII)Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$502(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$602(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/device/ads/InAppBrowser;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    return v0
.end method

.method static synthetic access$800(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$802(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$900(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$902(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method private createButton(Ljava/lang/String;IIII)Landroid/widget/ImageButton;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    invoke-virtual {v1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 151
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    return-object v0
.end method

.method private enableCookies()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 291
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 292
    return-void
.end method

.method private initialize(Landroid/content/Intent;)V
    .locals 8
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x3f00

    const/4 v7, -0x1

    .line 88
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/InAppBrowser;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 91
    const/high16 v2, 0x4248

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v5, v2

    .line 92
    const/high16 v2, 0x4040

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v6, v0

    .line 93
    iget-boolean v0, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 94
    :goto_0
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v0, v1, v0

    mul-int/lit8 v1, v5, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 96
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/InAppBrowser;->createRelativeLayout(Landroid/app/Activity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 97
    const-string v0, "inAppBrowserButtonLayout"

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    const/16 v0, 0x2828

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 99
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v1, v5, v6

    invoke-direct {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const v0, -0xf0f10

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 104
    new-instance v0, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;-><init>(Lcom/amazon/device/ads/InAppBrowser;Landroid/content/Intent;Landroid/view/ViewGroup;II)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/ThreadUtils;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 107
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 108
    const-string v1, "inAppBrowserHorizontalRule"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-static {}, Lcom/amazon/device/ads/WebViewFactory;->getInstance()Lcom/amazon/device/ads/WebViewFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebViewFactory;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/device/ads/IInternalAdRegistration;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-inAppBrowser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    const-string v1, "inAppBrowserWebView"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    const/4 v1, 0x2

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 120
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 123
    const-string v1, "inAppBrowserRelativeLayout"

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 129
    const-string v2, "inAppBrowserMainLayout"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 135
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x4

    goto/16 :goto_0
.end method

.method private initializeButtons(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$3;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$3;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$4;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$4;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$5;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$5;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$6;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$6;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-boolean v0, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "extra_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/amazon/device/ads/InAppBrowser$7;

    invoke-direct {v2, p0, v0}, Lcom/amazon/device/ads/InAppBrowser$7;-><init>(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_0
    return-void
.end method

.method private initializeWebView(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 158
    invoke-static {}, Lcom/amazon/device/ads/WebViewFactory;->getInstance()Lcom/amazon/device/ads/WebViewFactory;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    sget-object v3, Lcom/amazon/device/ads/InAppBrowser;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/WebViewFactory;->setJavaScriptEnabledForWebView(ZLandroid/webkit/WebView;Ljava/lang/String;)Z

    .line 160
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    const-string v1, "extra_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$1;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 186
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$2;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$2;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 200
    return-void
.end method

.method private updateNavigationButtons(Landroid/webkit/WebView;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x66

    .line 267
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    .line 278
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    .line 287
    :cond_0
    :goto_1
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    goto :goto_1
.end method


# virtual methods
.method protected canPauseWebViewTimers()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->getShouldPauseWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canResumeWebViewTimers()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->getShouldPauseWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createRelativeLayout(Landroid/app/Activity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 139
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 507
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 508
    return-void
.end method

.method protected getShouldPauseWebViewTimers()Z
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "shouldPauseWebViewTimersInWebViewRelatedActivities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xc

    .line 514
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 515
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/InAppBrowser;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 516
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 517
    const/high16 v2, 0x4248

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f00

    add-float/2addr v0, v2

    float-to-int v2, v0

    .line 518
    iget-boolean v0, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 519
    :goto_0
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v0, v3, v0

    mul-int/lit8 v3, v2, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 520
    sget-object v3, Lcom/amazon/device/ads/InAppBrowser;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ButtonWidth: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 523
    iget-object v3, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 525
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 526
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 527
    iget-object v3, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 532
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 533
    iget-object v3, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 534
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 535
    iget-object v3, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 540
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 541
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 542
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 543
    iget-object v3, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    .line 548
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 549
    iget-object v3, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 550
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 551
    iget-object v3, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    .line 555
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 556
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 557
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 558
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    :cond_3
    :goto_1
    return-void

    .line 518
    :cond_4
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 561
    :cond_5
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    .line 563
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 564
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 565
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 566
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 74
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 75
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 77
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    const-string v1, "extra_open_btn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    .line 79
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/InAppBrowser;->initialize(Landroid/content/Intent;)V

    .line 80
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/InAppBrowser;->initializeWebView(Landroid/content/Intent;)V

    .line 81
    invoke-direct {p0}, Lcom/amazon/device/ads/InAppBrowser;->enableCookies()V

    .line 82
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 314
    sget-object v0, Lcom/amazon/device/ads/InAppBrowser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->pauseWebView()V

    .line 317
    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->canPauseWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 322
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 323
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 345
    sget-object v0, Lcom/amazon/device/ads/InAppBrowser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->resumeWebView()V

    .line 348
    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->canResumeWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 353
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 354
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method pauseWebView()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 328
    return-void
.end method

.method public preOnCreate()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method resumeWebView()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 359
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    .line 69
    return-void
.end method
