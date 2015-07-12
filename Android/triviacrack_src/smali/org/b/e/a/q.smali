.class Lorg/b/e/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/e/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/b/e/a/i",
        "<",
        "Lorg/b/c/l",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/b/e/a/k;

.field private final b:Lorg/b/e/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/e/a/c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/b/e/a/k;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 645
    iput-object p1, p0, Lorg/b/e/a/q;->a:Lorg/b/e/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    if-eqz p2, :cond_0

    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    new-instance v0, Lorg/b/e/a/c;

    invoke-virtual {p1}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/b/e/a/c;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    iput-object v0, p0, Lorg/b/e/a/q;->b:Lorg/b/e/a/c;

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/b/e/a/q;->b:Lorg/b/e/a/c;

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Lorg/b/c/a/i;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 641
    invoke-virtual {p0, p1}, Lorg/b/e/a/q;->b(Lorg/b/c/a/i;)Lorg/b/c/l;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/b/c/a/i;)Lorg/b/c/l;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c/a/i;",
            ")",
            "Lorg/b/c/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lorg/b/e/a/q;->b:Lorg/b/e/a/c;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lorg/b/e/a/q;->b:Lorg/b/e/a/c;

    invoke-virtual {v0, p1}, Lorg/b/e/a/c;->a(Lorg/b/c/a/i;)Ljava/lang/Object;

    move-result-object v1

    .line 656
    new-instance v0, Lorg/b/c/l;

    invoke-interface {p1}, Lorg/b/c/a/i;->d()Lorg/b/c/c;

    move-result-object v2

    invoke-interface {p1}, Lorg/b/c/a/i;->a()Lorg/b/c/i;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/b/c/l;-><init>(Ljava/lang/Object;Lorg/b/d/h;Lorg/b/c/i;)V

    .line 659
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/b/c/l;

    invoke-interface {p1}, Lorg/b/c/a/i;->d()Lorg/b/c/c;

    move-result-object v1

    invoke-interface {p1}, Lorg/b/c/a/i;->a()Lorg/b/c/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/b/c/l;-><init>(Lorg/b/d/h;Lorg/b/c/i;)V

    goto :goto_0
.end method
