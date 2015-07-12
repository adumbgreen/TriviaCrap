.class final Lorg/b/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/b/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/c/a;Lorg/b/c/a;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 464
    invoke-virtual {p1}, Lorg/b/c/a;->c()D

    move-result-wide v2

    .line 465
    invoke-virtual {p2}, Lorg/b/c/a;->c()D

    move-result-wide v4

    .line 466
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    .line 467
    if-eqz v0, :cond_0

    .line 476
    :goto_0
    return v0

    .line 469
    :cond_0
    invoke-virtual {p1}, Lorg/b/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/b/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    const/4 v0, 0x1

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p2}, Lorg/b/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/b/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    const/4 v0, -0x1

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {p1}, Lorg/b/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/b/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 474
    goto :goto_0

    :cond_3
    move v0, v1

    .line 476
    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 461
    check-cast p1, Lorg/b/c/a;

    check-cast p2, Lorg/b/c/a;

    invoke-virtual {p0, p1, p2}, Lorg/b/c/a$1;->a(Lorg/b/c/a;Lorg/b/c/a;)I

    move-result v0

    return v0
.end method
