.class Lcom/amazon/device/ads/AdContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION_AD_CONTAINER:Ljava/lang/String; = "adContainerObject"

.field private static final CONTENT_DESCRITPION_NATIVE_CLOSE_BUTTON:Ljava/lang/String; = "nativeCloseButton"

.field private static final CONTENT_DESCRITPION_NATIVE_CLOSE_BUTTON_CONTAINER:Ljava/lang/String; = "nativeCloseButtonContainer"

.field private static final CONTENT_DESCRITPION_NATIVE_CLOSE_BUTTON_IMAGE:Ljava/lang/String; = "nativeCloseButtonImage"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final CLOSE_BUTTON_SIZE_DP:I

.field private final CLOSE_BUTTON_TAP_TARGET_SIZE_DP:I

.field private final adController:Lcom/amazon/device/ads/AdController;

.field private adWebViewClient:Lcom/amazon/device/ads/AdWebViewClient;

.field private baseUrl:Ljava/lang/String;

.field private final bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

.field private closeButton:Landroid/widget/RelativeLayout;

.field private closeButtonContainer:Landroid/widget/RelativeLayout;

.field private closeButtonImage:Landroid/widget/ImageView;

.field private html:Ljava/lang/String;

.field private preloadCallback:Lcom/amazon/device/ads/PreloadCallback;

.field private shouldPreload:Z

.field private viewManager:Lcom/amazon/device/ads/ViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/amazon/device/ads/AdContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdContainer;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdController;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/amazon/device/ads/AdContainer;->CLOSE_BUTTON_SIZE_DP:I

    .line 41
    const/16 v0, 0x50

    iput v0, p0, Lcom/amazon/device/ads/AdContainer;->CLOSE_BUTTON_TAP_TARGET_SIZE_DP:I

    .line 54
    new-instance v0, Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdSDKBridgeList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdContainer;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    .line 64
    iput-object p2, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    .line 65
    const-string v0, "adContainerObject"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdContainer;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/amazon/device/ads/AdContainer;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdContainer;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/device/ads/AdContainer;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/amazon/device/ads/AdContainer;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amazon/device/ads/AdContainer;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/AdContainer;)Lcom/amazon/device/ads/AdController;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->closeButtonContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/amazon/device/ads/AdContainer;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer;->closeButtonContainer:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method private addHeadData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 288
    const-string v0, "<[Hh][Ee][Aa][Dd](\\s*>|\\s[^>]*>)"

    invoke-static {v0, p1}, Lcom/amazon/device/ads/StringUtils;->getFirstMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    const-string v0, ""

    .line 291
    const-string v2, "<[Mm][Ee][Tt][Aa](\\s[^>]*\\s|\\s)[Nn][Aa][Mm][Ee]\\s*=\\s*[\"\'][Vv][Ii][Ee][Ww][Pp][Oo][Rr][Tt][\"\']"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<meta name=\"viewport\" content=\"width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getWindowWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getWindowHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", initial-scale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazon/device/ads/AdUtils;->getViewportInitialScale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", minimum-scale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", maximum-scale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<style>html,body{margin:0;padding:0;height:100%;border:none;}</style>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<script type=\'text/javascript\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</script>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 310
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<meta name=\"viewport\" content=\"width=device-width, height=device-height, user-scalable=no, initial-scale=1.0\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ensureHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 251
    const-string v0, ""

    .line 252
    const-string v1, ""

    .line 254
    const-string v2, "\\A\\s*<![Dd][Oo][Cc][Tt][Yy][Pp][Ee]\\s+[Hh][Tt][Mm][Ll][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    const-string v0, "<!DOCTYPE html>"

    .line 259
    :cond_0
    const-string v2, "<[Hh][Tt][Mm][Ll][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    const-string v0, "</html>"

    .line 266
    :goto_0
    const-string v2, "<[Hh][Ee][Aa][Dd][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<head></head>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_1
    const-string v2, "<[Bb][Oo][Dd][Yy][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0
.end method

.method private getAdWebViewClient()Lcom/amazon/device/ads/AdWebViewClient;
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->adWebViewClient:Lcom/amazon/device/ads/AdWebViewClient;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/amazon/device/ads/AdWebViewClient;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    iget-object v3, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->getAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AdWebViewClient;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/AdControlAccessor;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdContainer;->adWebViewClient:Lcom/amazon/device/ads/AdWebViewClient;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->adWebViewClient:Lcom/amazon/device/ads/AdWebViewClient;

    return-object v0
.end method

.method private getViewManager()Lcom/amazon/device/ads/ViewManager;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdContainer;->createViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    .line 84
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdContainer;->setAdWebViewClient()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    return-object v0
.end method

.method private loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer;->baseUrl:Ljava/lang/String;

    .line 180
    iput-object p2, p0, Lcom/amazon/device/ads/AdContainer;->html:Ljava/lang/String;

    .line 181
    iput-boolean p3, p0, Lcom/amazon/device/ads/AdContainer;->shouldPreload:Z

    .line 182
    iput-object p4, p0, Lcom/amazon/device/ads/AdContainer;->preloadCallback:Lcom/amazon/device/ads/PreloadCallback;

    .line 183
    invoke-static {}, Lcom/amazon/device/ads/BridgeSelector;->getInstance()Lcom/amazon/device/ads/BridgeSelector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/BridgeSelector;->getBridgeFactories(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdSDKBridgeFactory;

    .line 186
    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/device/ads/AdSDKBridgeFactory;->createAdSDKBridge(Lcom/amazon/device/ads/AdControlAccessor;)Lcom/amazon/device/ads/AdSDKBridge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdContainer;->addAdSDKBridge(Lcom/amazon/device/ads/AdSDKBridge;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->removePreviousInterfaces()V

    .line 190
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->clearSDKEventListeners()V

    .line 195
    sget-object v0, Lcom/amazon/device/ads/AdContainer;->LOGTAG:Ljava/lang/String;

    const-string v1, "Scaling Params: scalingDensity: %f, windowWidth: %d, windowHeight: %d, adWidth: %d, adHeight: %d, scale: %f"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/amazon/device/ads/AdUtils;->getScalingFactorAsFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdController;->getWindowWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdController;->getWindowHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdData;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/amazon/device/ads/AdUtils;->getScalingFactorAsFloat()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdData;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/amazon/device/ads/AdUtils;->getScalingFactorAsFloat()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    const-string v2, ""

    .line 204
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSDKBridgeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/device/ads/AdSDKBridge;

    .line 206
    invoke-interface {v1}, Lcom/amazon/device/ads/AdSDKBridge;->getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-interface {v1}, Lcom/amazon/device/ads/AdSDKBridge;->getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/AdController;->addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V

    .line 210
    :cond_2
    invoke-interface {v1}, Lcom/amazon/device/ads/AdSDKBridge;->getJavascript()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcom/amazon/device/ads/AdSDKBridge;->getJavascript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 214
    :cond_3
    invoke-interface {v1}, Lcom/amazon/device/ads/AdSDKBridge;->getJavascriptInterfaces()Ljava/util/Map;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    iget-object v5, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/amazon/device/ads/AdSDKBridge;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, p3, v0}, Lcom/amazon/device/ads/ViewManager;->addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_4
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/AdContainer;->ensureHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-direct {p0, v0, v2}, Lcom/amazon/device/ads/AdContainer;->addHeadData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    if-eqz p1, :cond_5

    .line 229
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v1, p1

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/device/ads/ViewManager;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 235
    :goto_2
    return-void

    .line 233
    :cond_5
    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/device/ads/ViewManager;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    goto :goto_2
.end method

.method private loadUrl(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    :cond_0
    new-instance v0, Lcom/amazon/device/ads/AdContainer$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/device/ads/AdContainer$1;-><init>(Lcom/amazon/device/ads/AdContainer;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeRunnableWithThreadCheck(Ljava/lang/Runnable;)V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getAdWebViewClient()Lcom/amazon/device/ads/AdWebViewClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/AdWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public addAdSDKBridge(Lcom/amazon/device/ads/AdSDKBridge;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdSDKBridgeList;->addBridge(Lcom/amazon/device/ads/AdSDKBridge;)V

    .line 135
    return-void
.end method

.method addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/ViewManager;->addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 431
    return-void
.end method

.method createViewManager()Lcom/amazon/device/ads/ViewManager;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/amazon/device/ads/ViewManager;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/ViewManager;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->destroy()V

    .line 125
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSDKBridgeList;->clear()V

    .line 126
    return-void
.end method

.method public enableNativeCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f00

    .line 478
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 483
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 484
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 485
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 486
    const/high16 v0, 0x4270

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v6, v0

    .line 487
    const/high16 v0, 0x42a0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v4, v0

    .line 489
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v1

    const-string v2, "amazon_ads_close_normal.png"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->getNewBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 490
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v1

    const-string v3, "amazon_ads_close_pressed.png"

    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->getNewBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 492
    new-instance v0, Lcom/amazon/device/ads/AdContainer$2;

    move-object v1, p0

    move v5, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AdContainer$2;-><init>(Lcom/amazon/device/ads/AdContainer;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;IZILcom/amazon/device/ads/RelativePosition;)V

    .line 619
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/ThreadUtils;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public hideNativeCloseButtonImage()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 644
    new-instance v0, Lcom/amazon/device/ads/AdContainer$4;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdContainer$4;-><init>(Lcom/amazon/device/ads/AdContainer;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 653
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->initialize()V

    .line 77
    return-void
.end method

.method public injectJavascript(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/amazon/device/ads/ViewManager;->loadUrl(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 144
    return-void
.end method

.method public listenForKey(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ViewManager;->listenForKey(Landroid/view/View$OnKeyListener;)V

    .line 658
    return-void
.end method

.method public loadHtml(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/AdContainer;->loadHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/device/ads/AdContainer;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 168
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/ads/AdContainer;->loadUrl(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 352
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ViewManager;->isCurrentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/AdController;->adRendered(Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method public popView()Z
    .locals 1

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->popView()Z

    move-result v0

    return v0
.end method

.method public preloadHtml(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/AdContainer;->preloadHtml(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V

    .line 333
    return-void
.end method

.method public preloadHtml(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/device/ads/AdContainer;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 343
    return-void
.end method

.method public preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 361
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/device/ads/AdContainer;->loadUrl(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 362
    return-void
.end method

.method public putUrlExecutorInAdWebViewClient(Ljava/lang/String;Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getAdWebViewClient()Lcom/amazon/device/ads/AdWebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdWebViewClient;->putUrlExecutor(Ljava/lang/String;Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;)V

    .line 116
    return-void
.end method

.method reload()V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer;->html:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/device/ads/AdContainer;->shouldPreload:Z

    iget-object v3, p0, Lcom/amazon/device/ads/AdContainer;->preloadCallback:Lcom/amazon/device/ads/PreloadCallback;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/device/ads/AdContainer;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 439
    return-void
.end method

.method public removeNativeCloseButton()V
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lcom/amazon/device/ads/AdContainer$3;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdContainer$3;-><init>(Lcom/amazon/device/ads/AdContainer;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 635
    return-void
.end method

.method setAdWebViewClient()V
    .locals 3

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getAdWebViewClient()Lcom/amazon/device/ads/AdWebViewClient;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/AdContainer$AdContainerAdWebViewClientListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/device/ads/AdContainer$AdContainerAdWebViewClientListener;-><init>(Lcom/amazon/device/ads/AdContainer;Lcom/amazon/device/ads/AdContainer$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdWebViewClient;->setListener(Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;)V

    .line 110
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getAdWebViewClient()Lcom/amazon/device/ads/AdWebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ViewManager;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    return-void
.end method

.method public setViewHeight(I)V
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ViewManager;->setHeight(I)V

    .line 149
    return-void
.end method

.method public stashView()V
    .locals 1

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/amazon/device/ads/AdContainer;->getViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->stashView()V

    .line 460
    return-void
.end method
