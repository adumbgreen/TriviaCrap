.class Lcom/millennialmedia/a/a/b/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/b/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/b/q;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/millennialmedia/a/a/b/q",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/g;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/millennialmedia/a/a/b/f;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/b/f;Lcom/millennialmedia/a/a/g;Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/f$5;->c:Lcom/millennialmedia/a/a/b/f;

    iput-object p2, p0, Lcom/millennialmedia/a/a/b/f$5;->a:Lcom/millennialmedia/a/a/g;

    iput-object p3, p0, Lcom/millennialmedia/a/a/b/f$5;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/f$5;->a:Lcom/millennialmedia/a/a/g;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/f$5;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/millennialmedia/a/a/g;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
