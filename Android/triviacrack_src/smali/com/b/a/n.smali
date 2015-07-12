.class Lcom/b/a/n;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Lcom/b/a/k;


# direct methods
.method constructor <init>(Lcom/b/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 403
    iput-object p1, p0, Lcom/b/a/n;->a:Lcom/b/a/k;

    .line 404
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 407
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 408
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/b/a/n;->a:Lcom/b/a/k;

    iget-boolean v1, v1, Lcom/b/a/k;->m:Z

    if-eqz v1, :cond_0

    .line 410
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/b/a/n;->a:Lcom/b/a/k;

    iget-object v1, v1, Lcom/b/a/k;->b:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 413
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 422
    if-nez p2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 426
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/b/a/n;->a:Lcom/b/a/k;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/k;->a(Z)V

    goto :goto_0

    .line 431
    :cond_2
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "connectivity"

    invoke-static {p1, v0}, Lcom/b/a/au;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 433
    iget-object v1, p0, Lcom/b/a/n;->a:Lcom/b/a/k;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/k;->a(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method
