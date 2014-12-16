.class Lorg/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a()I
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lorg/a/a/d;->b()I

    move-result v0

    return v0
.end method

.method private static b()I
    .locals 1

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
