.class Lcom/mopub/mobileads/al;
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
    .line 230
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/af;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 231
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mopub/mobileads/al;->b:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/aw;->c()V

    .line 236
    return-void
.end method
