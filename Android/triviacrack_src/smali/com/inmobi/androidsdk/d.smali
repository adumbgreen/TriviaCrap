.class Lcom/inmobi/androidsdk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/BannerView;
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/BannerView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 1137
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/BannerView;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1139
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->removeAllViews()V

    .line 1140
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->g(Lcom/inmobi/androidsdk/BannerView;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->h(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/BannerView;->h(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1147
    :goto_0
    :try_start_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1150
    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/BannerView;->h(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/androidsdk/BannerView;->c(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    .line 1151
    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/BannerView;->h(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/BannerView;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1175
    :goto_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->a()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0, v3, v4}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    .line 1181
    :cond_0
    :goto_3
    return-void

    .line 1154
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->i(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/BannerView;->i(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1158
    :goto_4
    :try_start_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1161
    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/BannerView;->i(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/androidsdk/BannerView;->c(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    .line 1162
    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/BannerView;->i(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    :try_start_5
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Error animating banner ads"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1175
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->a()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0, v3, v4}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_3

    .line 1167
    :cond_2
    :try_start_6
    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/BannerView;->g(Lcom/inmobi/androidsdk/BannerView;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v1, v0}, Lcom/inmobi/androidsdk/BannerView;->d(Lcom/inmobi/androidsdk/BannerView;Z)V

    .line 1168
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;Z)V

    .line 1169
    iget-object v0, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->o(Lcom/inmobi/androidsdk/BannerView;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 1175
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/BannerView;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1176
    iget-object v1, p0, Lcom/inmobi/androidsdk/d;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v1, v3, v4}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    :cond_4
    throw v0

    .line 1156
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1145
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1185
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    return-void
.end method
