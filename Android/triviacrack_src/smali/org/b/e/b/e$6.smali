.class final enum Lorg/b/e/b/e$6;
.super Lorg/b/e/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/b/e/b/e;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 636
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/b/e/b/e;-><init>(Ljava/lang/String;ILorg/b/e/b/a$1;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lorg/b/e/b/e$6;->c(I)Z

    move-result v0

    return v0
.end method
