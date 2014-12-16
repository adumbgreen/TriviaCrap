.class final Lorg/b/c/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/b/c/k;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/b/c/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/c/k;Lorg/b/c/k;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 802
    invoke-virtual {p1}, Lorg/b/c/k;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lorg/b/c/k;->b()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 824
    :cond_0
    :goto_0
    return v0

    .line 804
    :cond_1
    invoke-virtual {p2}, Lorg/b/c/k;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/b/c/k;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    :cond_2
    invoke-virtual {p1}, Lorg/b/c/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/b/c/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 807
    goto :goto_0

    .line 809
    :cond_3
    invoke-virtual {p1}, Lorg/b/c/k;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lorg/b/c/k;->d()Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v2

    .line 810
    goto :goto_0

    .line 811
    :cond_4
    invoke-virtual {p2}, Lorg/b/c/k;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lorg/b/c/k;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    :cond_5
    invoke-virtual {p1}, Lorg/b/c/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/b/c/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    .line 814
    goto :goto_0

    .line 816
    :cond_6
    invoke-virtual {p1}, Lorg/b/c/k;->f()D

    move-result-wide v3

    .line 817
    invoke-virtual {p2}, Lorg/b/c/k;->f()D

    move-result-wide v5

    .line 818
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    .line 819
    if-eqz v3, :cond_7

    move v0, v3

    .line 820
    goto :goto_0

    .line 822
    :cond_7
    invoke-static {p1}, Lorg/b/c/k;->d(Lorg/b/c/k;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 823
    invoke-static {p2}, Lorg/b/c/k;->d(Lorg/b/c/k;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 824
    if-lt v4, v3, :cond_0

    if-ne v4, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 799
    check-cast p1, Lorg/b/c/k;

    check-cast p2, Lorg/b/c/k;

    invoke-virtual {p0, p1, p2}, Lorg/b/c/k$1;->a(Lorg/b/c/k;Lorg/b/c/k;)I

    move-result v0

    return v0
.end method
