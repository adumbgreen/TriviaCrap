.class Lcom/millennialmedia/a/a/b/f$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/b/f;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/millennialmedia/a/a/b/q",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/b/f;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/b/f;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/f$9;->a:Lcom/millennialmedia/a/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
