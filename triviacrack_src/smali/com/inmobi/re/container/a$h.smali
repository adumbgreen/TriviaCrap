.class Lcom/inmobi/re/container/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/a;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/a;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/a;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/inmobi/re/container/a$h;->a:Lcom/inmobi/re/container/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 783
    const/4 v0, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 786
    const-string v0, "[InMobi]-[RE]-4.3.0"

    const-string v1, "Back Button pressed when html5 video is playing"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/inmobi/re/container/a$h;->a:Lcom/inmobi/re/container/a;

    iget-object v0, v0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->k(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 789
    iget-object v0, p0, Lcom/inmobi/re/container/a$h;->a:Lcom/inmobi/re/container/a;

    iget-object v0, v0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->l(Lcom/inmobi/re/container/IMWebView;)V

    .line 792
    :cond_0
    return v2
.end method
