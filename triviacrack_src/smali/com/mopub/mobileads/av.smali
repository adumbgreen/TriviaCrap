.class Lcom/mopub/mobileads/av;
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
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/af;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 164
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/av;->c(Ljava/lang/String;)Z

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/mopub/mobileads/av;->b:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/aw;->b(Z)V

    .line 170
    return-void
.end method
