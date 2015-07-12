.class public Lorg/b/c/b/c/e;
.super Lorg/b/c/b/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/b/c/b/c;-><init>()V

    .line 32
    new-instance v0, Lorg/b/c/b/c/c;

    invoke-direct {v0}, Lorg/b/c/b/c/c;-><init>()V

    invoke-virtual {p0, v0}, Lorg/b/c/b/c/e;->a(Lorg/b/c/b/f;)V

    .line 33
    return-void
.end method
