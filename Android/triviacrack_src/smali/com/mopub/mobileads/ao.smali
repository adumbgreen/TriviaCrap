.class Lcom/mopub/mobileads/ao;
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
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/af;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 209
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mopub/mobileads/ao;->b:Lcom/mopub/mobileads/MraidView;

    sget-object v1, Lcom/mopub/mobileads/ak;->GET_RESIZE_PROPERTIES:Lcom/mopub/mobileads/ak;

    const-string v2, "Unsupported action getResizeProperties."

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    .line 214
    return-void
.end method
