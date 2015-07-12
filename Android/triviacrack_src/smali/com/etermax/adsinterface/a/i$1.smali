.class Lcom/etermax/adsinterface/a/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/adsinterface/a/i;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/adsinterface/a/i;


# direct methods
.method constructor <init>(Lcom/etermax/adsinterface/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLoadCompleted(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    const-string v0, "Admob ads"

    const-string v1, "CustomBannerContainerfinished loading custom image"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-static {v0}, Lcom/etermax/adsinterface/a/i;->b(Lcom/etermax/adsinterface/a/i;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->custom_banner_image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    sget v0, Lcom/etermax/i;->ad_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    iget-object v2, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-static {v2}, Lcom/etermax/adsinterface/a/i;->a(Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/m;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/etermax/adsinterface/a/m;->onReceivedAd(Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-static {v0}, Lcom/etermax/adsinterface/a/i;->c(Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/adsinterface/a/a;->a(J)V

    .line 81
    return-void
.end method

.method public contentLoadCompleted(Landroid/webkit/WebView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 85
    const-string v0, "Admob ads"

    const-string v1, "CustomBannerContainer finished loading custom web content"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-static {v0}, Lcom/etermax/adsinterface/a/i;->b(Lcom/etermax/adsinterface/a/i;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->custom_banner_richmedia:I

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-static {v3}, Lcom/etermax/adsinterface/a/i;->b(Lcom/etermax/adsinterface/a/i;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 88
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 89
    invoke-virtual {v0, p1, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v1, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-static {v1}, Lcom/etermax/adsinterface/a/i;->a(Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/m;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/etermax/adsinterface/a/m;->onReceivedAd(Landroid/view/View;)V

    .line 93
    sget v1, Lcom/etermax/i;->click_interceptor:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-static {v0}, Lcom/etermax/adsinterface/a/i;->c(Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/adsinterface/a/a;->a(J)V

    .line 96
    return-void
.end method

.method public contentLoadFailed(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    const-string v0, "Admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomBannerContainer failed to load custom content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i$1;->a:Lcom/etermax/adsinterface/a/i;

    invoke-static {v0}, Lcom/etermax/adsinterface/a/i;->a(Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/adsinterface/a/m;->onFailedToReceiveAd()V

    .line 68
    return-void
.end method
