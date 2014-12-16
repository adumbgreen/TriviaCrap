.class Lcom/mopub/nativeads/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/al;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/mopub/nativeads/ag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Iterator;Lcom/mopub/nativeads/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/nativeads/ag;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/x;->a:Landroid/content/Context;

    .line 347
    iput-object p2, p0, Lcom/mopub/nativeads/x;->b:Ljava/util/Iterator;

    .line 348
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/x;->c:Ljava/lang/ref/SoftReference;

    .line 349
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mopub/nativeads/x;->c:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/ag;

    .line 381
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/mopub/nativeads/ag;->a()Z

    .line 384
    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    .prologue
    .line 375
    const-string v0, "Failed to resolve URL for click."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/mopub/nativeads/x;->a()V

    .line 377
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 355
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 357
    invoke-static {p1}, Lcom/mopub/common/util/IntentUtils;->isDeepLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/nativeads/x;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mopub/common/util/IntentUtils;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/mopub/nativeads/x;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 370
    :goto_0
    invoke-direct {p0}, Lcom/mopub/nativeads/x;->a()V

    .line 371
    :goto_1
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/x;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/mopub/nativeads/x;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mopub/nativeads/ak;->getResolvedUrl(Ljava/lang/String;Lcom/mopub/nativeads/al;)V

    goto :goto_1

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/x;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mopub/common/MoPubBrowser;->open(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
