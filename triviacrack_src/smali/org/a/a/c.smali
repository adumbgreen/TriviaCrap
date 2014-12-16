.class public Lorg/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 2

    .prologue
    .line 24
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x3

    .line 27
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/a/a/d;->a()I

    move-result v0

    goto :goto_0
.end method
