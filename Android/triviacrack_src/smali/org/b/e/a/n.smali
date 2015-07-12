.class Lorg/b/e/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/e/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/b/e/a/i",
        "<",
        "Lorg/b/c/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/b/e/a/k$1;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    invoke-direct {p0}, Lorg/b/e/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lorg/b/c/a/i;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lorg/b/e/a/n;->b(Lorg/b/c/a/i;)Lorg/b/c/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/b/c/a/i;)Lorg/b/c/c;
    .locals 1
    .parameter

    .prologue
    .line 718
    invoke-interface {p1}, Lorg/b/c/a/i;->d()Lorg/b/c/c;

    move-result-object v0

    return-object v0
.end method
