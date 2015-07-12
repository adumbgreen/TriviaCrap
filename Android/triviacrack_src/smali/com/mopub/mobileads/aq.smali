.class Lcom/mopub/mobileads/aq;
.super Lcom/mopub/mobileads/af;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/mobileads/MraidView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/af;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 176
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 180
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/aq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mopub/mobileads/aq;->b:Lcom/mopub/mobileads/MraidView;

    sget-object v1, Lcom/mopub/mobileads/ak;->OPEN:Lcom/mopub/mobileads/ak;

    const-string v2, "Url can not be null."

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/aq;->b:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getBrowserController()Lcom/mopub/mobileads/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/z;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/mopub/mobileads/MraidView$PlacementType;)Z
    .locals 1
    .parameter

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method
