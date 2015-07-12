.class Lcom/mopub/mobileads/MraidInterstitial;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/MraidInterstitial;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidInterstitial;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/mopub/mobileads/MraidActivity;->a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 1
    .parameter
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

    .prologue
    .line 15
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MraidInterstitial;->d:Ljava/lang/String;

    .line 16
    return-void
.end method

.method protected showInterstitial()V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mopub/mobileads/MraidInterstitial;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidInterstitial;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/MraidInterstitial;->b:Lcom/mopub/mobileads/AdConfiguration;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MraidActivity;->start(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)V

    .line 26
    return-void
.end method
