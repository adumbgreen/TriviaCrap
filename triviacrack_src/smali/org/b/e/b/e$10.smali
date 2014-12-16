.class final enum Lorg/b/e/b/e$10;
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
    .line 660
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/b/e/b/e;-><init>(Ljava/lang/String;ILorg/b/e/b/a$1;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 663
    const/16 v1, 0x3d

    if-eq v1, p1, :cond_0

    const/16 v1, 0x2b

    if-eq v1, p1, :cond_0

    const/16 v1, 0x26

    if-ne v1, p1, :cond_1

    .line 667
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/b/e/b/e$10;->f(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x2f

    if-eq v1, p1, :cond_2

    const/16 v1, 0x3f

    if-ne v1, p1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
