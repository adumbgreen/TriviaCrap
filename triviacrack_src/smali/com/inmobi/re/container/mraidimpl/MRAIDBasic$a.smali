.class Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->open(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    iput-object p2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getFinalRedirectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->b(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->b(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->b(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    const-string v1, "Invalid url"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
