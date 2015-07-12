.class public abstract Lorg/b/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/c/a/g;


# instance fields
.field private final a:Lorg/b/c/a/g;


# direct methods
.method protected constructor <init>(Lorg/b/c/a/g;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "\'requestFactory\' must not be null"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lorg/b/c/a/c;->a:Lorg/b/c/a/g;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URI;Lorg/b/c/f;)Lorg/b/c/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lorg/b/c/a/c;->a:Lorg/b/c/a/g;

    invoke-virtual {p0, p1, p2, v0}, Lorg/b/c/a/c;->a(Ljava/net/URI;Lorg/b/c/f;Lorg/b/c/a/g;)Lorg/b/c/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/net/URI;Lorg/b/c/f;Lorg/b/c/a/g;)Lorg/b/c/a/e;
.end method
