.class Lorg/b/c/b/c/d;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/b/c/b/c/d;->a:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/b/c/b/c/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/b/c/b/c/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/b/c/b/c/d;)J
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/b/c/b/c/d;->a:J

    return-wide v0
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .parameter

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/b/c/b/c/d;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/b/c/b/c/d;->a:J

    .line 122
    return-void
.end method

.method public write([B)V
    .locals 4
    .parameter

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/b/c/b/c/d;->a:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/b/c/b/c/d;->a:J

    .line 127
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/b/c/b/c/d;->a:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/b/c/b/c/d;->a:J

    .line 132
    return-void
.end method
