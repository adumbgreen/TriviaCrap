.class public Lcom/b/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/io/InputStream;

.field final b:Landroid/graphics/Bitmap;

.field final c:Z

.field final d:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ZJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/b/a/p;->a:Ljava/io/InputStream;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/p;->b:Landroid/graphics/Bitmap;

    .line 108
    iput-boolean p2, p0, Lcom/b/a/p;->c:Z

    .line 109
    iput-wide p3, p0, Lcom/b/a/p;->d:J

    .line 110
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/b/a/p;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/b/a/p;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/b/a/p;->d:J

    return-wide v0
.end method
