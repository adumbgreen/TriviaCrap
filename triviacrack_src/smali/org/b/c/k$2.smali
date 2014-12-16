.class final Lorg/b/c/k$2;
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
    .line 836
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

    .line 839
    invoke-virtual {p1}, Lorg/b/c/k;->f()D

    move-result-wide v3

    .line 840
    invoke-virtual {p2}, Lorg/b/c/k;->f()D

    move-result-wide v5

    .line 841
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    .line 842
    if-eqz v3, :cond_1

    move v0, v3

    .line 860
    :cond_0
    :goto_0
    return v0

    .line 844
    :cond_1
    invoke-virtual {p1}, Lorg/b/c/k;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lorg/b/c/k;->b()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 845
    goto :goto_0

    .line 846
    :cond_2
    invoke-virtual {p2}, Lorg/b/c/k;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lorg/b/c/k;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 848
    :cond_3
    invoke-virtual {p1}, Lorg/b/c/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/b/c/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 849
    goto :goto_0

    .line 851
    :cond_4
    invoke-virtual {p1}, Lorg/b/c/k;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lorg/b/c/k;->d()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v2

    .line 852
    goto :goto_0

    .line 853
    :cond_5
    invoke-virtual {p2}, Lorg/b/c/k;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lorg/b/c/k;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 855
    :cond_6
    invoke-virtual {p1}, Lorg/b/c/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/b/c/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v1

    .line 856
    goto :goto_0

    .line 858
    :cond_7
    invoke-static {p1}, Lorg/b/c/k;->d(Lorg/b/c/k;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 859
    invoke-static {p2}, Lorg/b/c/k;->d(Lorg/b/c/k;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 860
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
    .line 836
    check-cast p1, Lorg/b/c/k;

    check-cast p2, Lorg/b/c/k;

    invoke-virtual {p0, p1, p2}, Lorg/b/c/k$2;->a(Lorg/b/c/k;Lorg/b/c/k;)I

    move-result v0

    return v0
.end method
