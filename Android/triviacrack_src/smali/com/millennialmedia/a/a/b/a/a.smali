.class public final Lcom/millennialmedia/a/a/b/a/a;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/millennialmedia/a/a/t;


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/millennialmedia/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/s",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/millennialmedia/a/a/b/a/a$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/a$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/a;->a:Lcom/millennialmedia/a/a/t;

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/s;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/e;",
            "Lcom/millennialmedia/a/a/s",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    .line 66
    new-instance v0, Lcom/millennialmedia/a/a/b/a/o;

    invoke-direct {v0, p1, p2, p3}, Lcom/millennialmedia/a/a/b/a/o;-><init>(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/s;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/a;->c:Lcom/millennialmedia/a/a/s;

    .line 68
    iput-object p3, p0, Lcom/millennialmedia/a/a/b/a/a;->b:Ljava/lang/Class;

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    if-nez p2, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->b()Lcom/millennialmedia/a/a/d/c;

    .line 102
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 103
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/millennialmedia/a/a/b/a/a;->c:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v3, p1, v2}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->c()Lcom/millennialmedia/a/a/d/c;

    goto :goto_0
.end method

.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 75
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V

    .line 80
    :goto_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/a;->c:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V

    .line 85
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/a;->b:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 86
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 87
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 89
    goto :goto_0
.end method
