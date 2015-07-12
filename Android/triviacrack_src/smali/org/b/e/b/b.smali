.class final Lorg/b/e/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/e/b/d;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    iput-object p1, p0, Lorg/b/e/b/b;->a:Ljava/lang/String;

    .line 778
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lorg/b/e/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/b/e/b/d;
    .locals 2
    .parameter

    .prologue
    .line 791
    invoke-virtual {p0}, Lorg/b/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/b/e/b/e;->f:Lorg/b/e/b/e;

    invoke-static {v0, p1, v1}, Lorg/b/e/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/b/e/b/e;)Ljava/lang/String;

    move-result-object v0

    .line 792
    new-instance v1, Lorg/b/e/b/b;

    invoke-direct {v1, v0}, Lorg/b/e/b/b;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public a(Lorg/b/e/b/f;)Lorg/b/e/b/d;
    .locals 2
    .parameter

    .prologue
    .line 800
    invoke-virtual {p0}, Lorg/b/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/b/e/b/a;->a(Ljava/lang/String;Lorg/b/e/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 801
    new-instance v1, Lorg/b/e/b/b;

    invoke-direct {v1, v0}, Lorg/b/e/b/b;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lorg/b/e/b/b;->a:Ljava/lang/String;

    sget-object v1, Lorg/b/e/b/e;->f:Lorg/b/e/b/e;

    invoke-static {v0, v1}, Lorg/b/e/b/a;->a(Ljava/lang/String;Lorg/b/e/b/e;)V

    .line 797
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 806
    if-ne p0, p1, :cond_0

    .line 807
    const/4 v0, 0x1

    .line 812
    :goto_0
    return v0

    .line 808
    :cond_0
    instance-of v0, p1, Lorg/b/e/b/b;

    if-eqz v0, :cond_1

    .line 809
    check-cast p1, Lorg/b/e/b/b;

    .line 810
    invoke-virtual {p0}, Lorg/b/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/b/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 812
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0}, Lorg/b/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
