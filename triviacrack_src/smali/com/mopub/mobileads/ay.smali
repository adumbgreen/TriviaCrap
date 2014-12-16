.class Lcom/mopub/mobileads/ay;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/aw;

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/mopub/mobileads/ay;->a:Lcom/mopub/mobileads/aw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/mopub/mobileads/ay;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/mopub/mobileads/ay;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 837
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/mopub/mobileads/ay;->a:Lcom/mopub/mobileads/aw;

    invoke-static {v0}, Lcom/mopub/mobileads/aw;->c(Lcom/mopub/mobileads/aw;)I

    move-result v0

    .line 839
    iget v1, p0, Lcom/mopub/mobileads/ay;->b:I

    if-eq v0, v1, :cond_0

    .line 840
    iput v0, p0, Lcom/mopub/mobileads/ay;->b:I

    .line 841
    iget-object v0, p0, Lcom/mopub/mobileads/ay;->a:Lcom/mopub/mobileads/aw;

    iget v1, p0, Lcom/mopub/mobileads/ay;->b:I

    invoke-static {v0, v1}, Lcom/mopub/mobileads/aw;->a(Lcom/mopub/mobileads/aw;I)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/mopub/mobileads/ay;->c:Landroid/content/Context;

    .line 852
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 854
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/mopub/mobileads/ay;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/ay;->c:Landroid/content/Context;

    .line 859
    return-void
.end method
