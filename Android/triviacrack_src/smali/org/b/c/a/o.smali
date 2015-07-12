.class public Lorg/b/c/a/o;
.super Lorg/b/c/a/c;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
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
.method public constructor <init>(Lorg/b/c/a/g;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c/a/g;",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/b/c/a/c;-><init>(Lorg/b/c/a/g;)V

    .line 45
    const-string v0, "\'requestFactory\' must not be null"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lorg/b/c/a/o;->a:Ljava/util/List;

    .line 47
    return-void

    .line 46
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/net/URI;Lorg/b/c/f;Lorg/b/c/a/g;)Lorg/b/c/a/e;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lorg/b/c/a/m;

    iget-object v1, p0, Lorg/b/c/a/o;->a:Ljava/util/List;

    invoke-direct {v0, p3, v1, p1, p2}, Lorg/b/c/a/m;-><init>(Lorg/b/c/a/g;Ljava/util/List;Ljava/net/URI;Lorg/b/c/f;)V

    return-object v0
.end method
