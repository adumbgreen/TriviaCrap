.class Lcom/b/a/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# direct methods
.method static a(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter

    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method
