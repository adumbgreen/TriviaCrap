.class Lcom/b/a/r;
.super Lcom/b/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/b/a/i;-><init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    .line 35
    return-void
.end method

.method static a(Landroid/net/Uri;)I
    .locals 3
    .parameter

    .prologue
    .line 44
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    packed-switch v0, :pswitch_data_0

    .line 54
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 48
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 50
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 52
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p1, Lcom/b/a/ai;->c:Landroid/net/Uri;

    invoke-static {v0}, Lcom/b/a/r;->a(Landroid/net/Uri;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/r;->a(I)V

    .line 40
    invoke-super {p0, p1}, Lcom/b/a/i;->a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
