.class public Lorg/b/b/a/b;
.super Lorg/b/b/a/a;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const-string v0, "resource loaded from byte array"

    invoke-direct {p0, p1, v0}, Lorg/b/b/a/b;-><init>([BLjava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/b/b/a/a;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lorg/b/b/a/b;->a:[B

    .line 61
    if-eqz p2, :cond_1

    :goto_0
    iput-object p2, p0, Lorg/b/b/a/b;->b:Ljava/lang/String;

    .line 62
    return-void

    .line 61
    :cond_1
    const-string p2, ""

    goto :goto_0
.end method


# virtual methods
.method public b()J
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/b/b/a/b;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public d()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/b/b/a/b;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/b/b/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 110
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lorg/b/b/a/b;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/b/b/a/b;

    iget-object v0, p1, Lorg/b/b/a/b;->a:[B

    iget-object v1, p0, Lorg/b/b/a/b;->a:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 118
    const-class v0, [B

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lorg/b/b/a/b;->a:[B

    array-length v1, v1

    mul-int/2addr v0, v1

    return v0
.end method
