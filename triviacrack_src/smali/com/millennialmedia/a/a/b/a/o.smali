.class final Lcom/millennialmedia/a/a/b/a/o;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/a/a/s",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/millennialmedia/a/a/e;

.field private final b:Lcom/millennialmedia/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/s;Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/e;",
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/o;->a:Lcom/millennialmedia/a/a/e;

    .line 39
    iput-object p2, p0, Lcom/millennialmedia/a/a/b/a/o;->b:Lcom/millennialmedia/a/a/s;

    .line 40
    iput-object p3, p0, Lcom/millennialmedia/a/a/b/a/o;->c:Ljava/lang/reflect/Type;

    .line 41
    return-void
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 91
    :cond_1
    return-object p1
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/o;->b:Lcom/millennialmedia/a/a/s;

    .line 61
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/o;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/millennialmedia/a/a/b/a/o;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/o;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/o;->a:Lcom/millennialmedia/a/a/e;

    invoke-static {v1}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v0

    .line 65
    instance-of v1, v0, Lcom/millennialmedia/a/a/b/a/k;

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    .line 80
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/o;->b:Lcom/millennialmedia/a/a/s;

    instance-of v1, v1, Lcom/millennialmedia/a/a/b/a/k;

    if-nez v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/o;->b:Lcom/millennialmedia/a/a/s;

    goto :goto_0
.end method

.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/o;->b:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
