.class Lcom/millennialmedia/a/a/b/m$1;
.super Lcom/millennialmedia/a/a/b/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/b/m;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/a/a/b/j",
        "<TK;TV;>.com/millennialmedia/a/a/b/o<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/b/m;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/b/m;)V
    .locals 2
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/m$1;->a:Lcom/millennialmedia/a/a/b/m;

    iget-object v0, p1, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/b/o;-><init>(Lcom/millennialmedia/a/a/b/j;Lcom/millennialmedia/a/a/b/j$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/m$1;->b()Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/m$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
