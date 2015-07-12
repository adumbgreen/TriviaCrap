.class public Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEFAULT_IMAGE_WEB_VIEW_CSS:Ljava/lang/String;

.field private static DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

.field private static DEFAULT_WEB_VIEW_CSS:Ljava/lang/String;

.field private static DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

.field private static DEFAULT_WEB_VIEW_VIEWPORT:Ljava/lang/String;

.field protected static final GUID:Ljava/lang/String;

.field private static IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT:Ljava/lang/String;

.field private static ORMMA_WEB_VIEW_CSS:Ljava/lang/String;

.field private static checkForUpdatedPackage:Lcom/admarvel/android/b/c;

.field private static enableClickRedirect:Z

.field private static enableNetworkActivity:Z

.field public static enableOfflineSDK:Z

.field private static final listener:Lcom/admarvel/android/ads/i;


# instance fields
.field private final admarvelInterstitialAds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundColor:I

.field contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private enableAutoScaling:Z

.field private final handler:Landroid/os/Handler;

.field private final internalAdMarvelInterstitialAdapterListener:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

.field private final lockTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private optionalFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textBackgroundColor:I

.field private final textBorderColor:I

.field private final textFontColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_CSS:Ljava/lang/String;

    const-string v0, "<style>#u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S{display:table;height:100%;width:100%;margin:0;padding:0;background-color:transparent;}#u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S>div{display:table-cell;vertical-align:middle;text-align:center;}</style>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_IMAGE_WEB_VIEW_CSS:Ljava/lang/String;

    const-string v0, "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style><script type=\'text/javascript\' src=\'http://admarvel.s3.amazonaws.com/js/admarvel_compete_v1.1.js\'></script>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->ORMMA_WEB_VIEW_CSS:Ljava/lang/String;

    const-string v0, "<html><head>%s</head><body><div align=\"center\">%s</div></body></html>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    const-string v0, "<html><head>%s</head><body id=\"u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S\"><div>%s</div></body></html>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    const-string v0, "<meta name=\"viewport\" content=\"initial-scale=1.0,maximum-scale=1.0,target-densitydpi=device-dpi, width=device-width\" />"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_VIEWPORT:Ljava/lang/String;

    const-string v0, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT:Ljava/lang/String;

    new-instance v0, Lcom/admarvel/android/ads/i;

    invoke-direct {v0}, Lcom/admarvel/android/ads/i;-><init>()V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableClickRedirect:Z

    sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableNetworkActivity:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->GUID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableAutoScaling:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->lockTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;-><init>(Lcom/admarvel/android/ads/AdMarvelInterstitialAds;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->internalAdMarvelInterstitialAdapterListener:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    if-nez p2, :cond_0

    iput v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->backgroundColor:I

    :goto_0
    if-nez p3, :cond_1

    iput v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textBackgroundColor:I

    :goto_1
    iput p4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textFontColor:I

    iput p5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textBorderColor:I

    return-void

    :cond_0
    or-int v0, v3, p2

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->backgroundColor:I

    goto :goto_0

    :cond_1
    or-int v0, v3, p3

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textBackgroundColor:I

    goto :goto_1
.end method

.method static synthetic access$000()Lcom/admarvel/android/b/c;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    return-object v0
.end method

.method static synthetic access$002(Lcom/admarvel/android/b/c;)Lcom/admarvel/android/b/c;
    .locals 0

    sput-object p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    return-object p0
.end method

.method static synthetic access$100(Lcom/admarvel/android/ads/AdMarvelInterstitialAds;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Lcom/admarvel/android/ads/i;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    return-object v0
.end method

.method public static declared-synchronized disableNetworkActivity()V
    .locals 3

    const-class v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableNetworkActivity:Z

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-virtual {v0}, Lcom/admarvel/android/b/c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private displayPendingAdMarvelAd(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 6

    const/high16 v5, 0x1000

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "custom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/admarvel/android/b/a;

    invoke-direct {v2}, Lcom/admarvel/android/b/a;-><init>()V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p2, v1, v4}, Lcom/admarvel/android/b/a;->a(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;Landroid/os/Handler;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v4, "custom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "html"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "GUID"

    sget-object v3, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z

    if-nez v2, :cond_0

    new-instance v2, Lcom/admarvel/android/ads/ab;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    invoke-direct {v2, v1, v4}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v2, p2}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "source"

    const-string v4, "campaign"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "html"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "xml"

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getXml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "backgroundcolor"

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->backgroundColor:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "isInterstitial"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isInterstitialClick"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "GUID"

    sget-object v3, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    const-string v3, "serialized_admarvelad"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static declared-synchronized enableNetworkActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xb

    const-class v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableNetworkActivity:Z

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-virtual {v0}, Lcom/admarvel/android/b/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    new-instance v0, Lcom/admarvel/android/b/c;

    invoke-direct {v0, p1, p0}, Lcom/admarvel/android/b/c;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/admarvel/android/b/c;

    invoke-direct {v0, p1, p0}, Lcom/admarvel/android/b/c;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    if-lt v0, v2, :cond_2

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->run()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static getEnableClickRedirect()Z
    .locals 1

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableClickRedirect:Z

    return v0
.end method

.method public static getListener()Lcom/admarvel/android/ads/i;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    return-object v0
.end method

.method public static initializeOfflineSDK(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z

    sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableNetworkActivity:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/admarvel/android/b/c;

    invoke-direct {v1, p1, v0}, Lcom/admarvel/android/b/c;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static setEnableClickRedirect(Z)V
    .locals 0

    sput-boolean p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableClickRedirect:Z

    return-void
.end method

.method public static setListener(Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;)V
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/i;->a(Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;)V

    return-void
.end method


# virtual methods
.method protected disableAdRequest(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
    .locals 10

    const/16 v4, 0x130

    const/4 v2, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duration"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "admarvel"

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v5

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    move-object v1, p3

    move-object v3, v2

    invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public displayInterstitial(Landroid/app/Activity;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->GOOGLEPLAY:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_2

    :try_start_0
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_b

    invoke-virtual {v0, p1, p3}, Lcom/admarvel/android/ads/AdMarvelAdapter;->displayInterstitial(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, p4}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$c;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, p4, v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$c;-><init>(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->RHYTHM:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_3

    :try_start_1
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->GREYSTRIPE:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_4

    :try_start_2
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->MILLENNIAL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_5

    :try_start_3
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->AMAZON:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_6

    :try_start_4
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADCOLONY:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_7

    :try_start_5
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->PULSE3D:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_8

    :try_start_6
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->FACEBOOK:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_9

    :try_start_7
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->INMOBI:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_a

    :try_start_8
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->HEYZAP:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_0

    :try_start_9
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADMARVEL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p3, p4}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->displayPendingAdMarvelAd(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto/16 :goto_0

    :catch_8
    move-exception v1

    goto/16 :goto_0

    :catch_9
    move-exception v1

    goto/16 :goto_0
.end method

.method public getAdMarvelBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->backgroundColor:I

    return v0
.end method

.method public getTextBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textBackgroundColor:I

    return v0
.end method

.method public getTextBorderColor()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textBorderColor:I

    return v0
.end method

.method public getTextFontColor()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textFontColor:I

    return v0
.end method

.method public isAutoScalingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableAutoScaling:Z

    return v0
.end method

.method public requestNewInterstitialAd(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    const-string v1, "admarvel"

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST"

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x130

    const/16 v2, 0x130

    invoke-static {v2}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v6

    const/4 v8, 0x0

    const-string v10, ""

    move-object/from16 v2, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v10}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duration"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/admarvel/android/a/a;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/admarvel/android/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/admarvel/android/a/a;->a()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->lockTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x7d0

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/i;->a()V

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    const-string v1, "UNIQUE_ID"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    :cond_2
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    iget-object v13, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;

    invoke-static/range {p1 .. p1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, ""

    iget-object v12, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    move-object/from16 v2, p2

    move-object v8, p0

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v12}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelInterstitialAds;ILjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    :try_start_1
    iget-object v13, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$a;

    invoke-static/range {p1 .. p1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, ""

    iget-object v12, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    move-object/from16 v2, p2

    move-object v8, p0

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v12}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$a;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelInterstitialAds;ILjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_4
    const-string v1, "requestNewAd: AD REQUEST PENDING, IGNORING REQUEST"

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x130

    const/16 v1, 0x130

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v10

    const/4 v12, 0x0

    const-string v14, ""

    move-object/from16 v6, p1

    move-object v11, v4

    move-object/from16 v13, p2

    invoke-virtual/range {v5 .. v14}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public requestNewInterstitialAd(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->requestNewInterstitialAd(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected requestPendingAdMarvelAd(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
    .locals 10

    const/16 v4, 0x130

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v0, ""

    if-nez p1, :cond_1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADMARVEL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    const-string v3, ""

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v5

    const-string v6, ""

    const/4 v8, 0x0

    const-string v9, ""

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->CUSTOM:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXhtml()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->CUSTOM:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    const-string v2, "custom"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADMARVEL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v6

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    move-object v1, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->IMAGE:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageHeight()I

    move-result v0

    if-lez v0, :cond_a

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_5

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v0

    :goto_2
    int-to-float v0, v0

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->i(Landroid/content/Context;)F

    move-result v1

    div-float/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device Relative Screen Width :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"><img src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" width=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\" /></a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_IMAGE_WEB_VIEW_CSS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_9

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_6

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v0

    :goto_3
    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_7

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v1

    :goto_4
    iget-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableAutoScaling:Z

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v3

    invoke-static {p2, v0, v3}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;II)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v4

    invoke-static {p2, v0, v4}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;II)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a href=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getClickURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"><img src=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" width=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" height=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" /></a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_CSS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_VIEWPORT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_3

    :cond_7
    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v1

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageHeight()I

    move-result v0

    goto :goto_5

    :cond_9
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_CSS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_VIEWPORT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXHTML()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXhtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORMMA_API"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->ORMMA_WEB_VIEW_CSS:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXHTML()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_CSS:Ljava/lang/String;

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXHTML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/admarvel/android/ads/ab;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method requestPendingAdapterAd(Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/admarvel/android/ads/AdMarvelAd;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/16 v10, 0x130

    :try_start_0
    const-string v0, "ADMARVELGUID"

    invoke-static {v0, p3}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->internalAdMarvelInterstitialAdapterListener:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->internalAdMarvelInterstitialAdapterListener:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

    invoke-virtual {v1, p2}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V

    :cond_0
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->internalAdMarvelInterstitialAdapterListener:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->backgroundColor:I

    iget v6, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textFontColor:I

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelAdapter;->requestIntersitialNewAd(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkAdNetwork()Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    move-result-object v2

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v5

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    move-object v1, p4

    move v4, v10

    invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdMarvelBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public setEnableAutoScaling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableAutoScaling:Z

    return-void
.end method

.method public setOptionalFlags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->optionalFlags:Ljava/util/Map;

    return-void
.end method

.method public setTextBackgroundColor(I)V
    .locals 0

    return-void
.end method
