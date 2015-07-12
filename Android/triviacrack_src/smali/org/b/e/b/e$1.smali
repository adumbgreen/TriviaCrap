.class final enum Lorg/b/e/b/e$1;
.super Lorg/b/e/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/b/e/b/e;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/b/e/b/e;-><init>(Ljava/lang/String;ILorg/b/e/b/a$1;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lorg/b/e/b/e$1;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/b/e/b/e$1;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2d

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2e

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
