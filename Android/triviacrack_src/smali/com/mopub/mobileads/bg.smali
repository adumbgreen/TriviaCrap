.class Lcom/mopub/mobileads/bg;
.super Lcom/mopub/mobileads/ba;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mopub/mobileads/ba;-><init>()V

    .line 77
    iput-boolean p1, p0, Lcom/mopub/mobileads/bg;->a:Z

    .line 78
    return-void
.end method

.method public static createWithViewable(Z)Lcom/mopub/mobileads/bg;
    .locals 1
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/mopub/mobileads/bg;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/bg;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/mopub/mobileads/bg;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
