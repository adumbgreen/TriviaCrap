.class public Lorg/a/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/a/a/b/c;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/a/a/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/a/a/b/c;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Lorg/a/a/b/c;)Lorg/a/a/b/c;
    .locals 1
    .parameter

    .prologue
    .line 26
    sget-object v0, Lorg/a/a/b/c;->a:Lorg/a/a/b/c;

    .line 27
    sput-object p0, Lorg/a/a/b/c;->a:Lorg/a/a/b/c;

    .line 28
    return-object v0
.end method

.method public static a(Lorg/a/a/b/b;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    sget-object v0, Lorg/a/a/b/c;->a:Lorg/a/a/b/c;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lorg/a/a/b/c;->a:Lorg/a/a/b/c;

    iget-object v0, v0, Lorg/a/a/b/c;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lorg/a/a/b/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/b/b;

    .line 41
    invoke-interface {v0, p1}, Lorg/a/a/b/b;->a(Lorg/a/a/b/a;)V

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method
