.class public abstract Lorg/b/c/a/a/b;
.super Lorg/b/c/a/a/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/b/c/a/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/b/c/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/b/c/a/g;
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lorg/b/c/a/a/a;->a()Lorg/b/c/a/g;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lorg/b/c/a/a/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/b/d/c;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lorg/b/c/a/o;

    invoke-virtual {p0}, Lorg/b/c/a/a/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/b/c/a/o;-><init>(Lorg/b/c/a/g;Ljava/util/List;)V

    .line 60
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lorg/b/c/a/a/b;->a:Ljava/util/List;

    .line 44
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/a/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/b/c/a/a/b;->a:Ljava/util/List;

    return-object v0
.end method
