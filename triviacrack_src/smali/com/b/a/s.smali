.class Lcom/b/a/s;
.super Lcom/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/b/a/aa;Lcom/b/a/ai;ZLjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 22
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v6, v5

    move-object v7, v2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/b/a/a;-><init>(Lcom/b/a/aa;Ljava/lang/Object;Lcom/b/a/ai;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method a(Landroid/graphics/Bitmap;Lcom/b/a/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    return-void
.end method
