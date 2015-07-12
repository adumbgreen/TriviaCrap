.class Lcom/mopub/mobileads/d;
.super Lcom/mopub/mobileads/c;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdViewController;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/AdViewController;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/c;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    .line 154
    iput-object p2, p0, Lcom/mopub/mobileads/d;->b:Ljava/util/Map;

    .line 155
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mopub/mobileads/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdViewController;

    .line 161
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 166
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/d;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/d;->b:Ljava/util/Map;

    .line 172
    return-void
.end method
