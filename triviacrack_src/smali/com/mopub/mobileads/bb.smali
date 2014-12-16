.class Lcom/mopub/mobileads/bb;
.super Lcom/mopub/mobileads/ba;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mopub/mobileads/ba;-><init>()V

    .line 42
    iput p1, p0, Lcom/mopub/mobileads/bb;->a:I

    .line 43
    iput p2, p0, Lcom/mopub/mobileads/bb;->b:I

    .line 44
    return-void
.end method

.method public static createWithSize(II)Lcom/mopub/mobileads/bb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/mopub/mobileads/bb;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/bb;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenSize: { width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/bb;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/bb;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
