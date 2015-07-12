.class Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->l(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->m(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;J)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->n(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->n(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->n(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@seconds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->n(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@seconds"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You Can Skip Ad in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method
