.class Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a(Landroid/view/ViewGroup;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$b;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 304
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    .line 305
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$b;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-boolean v0, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$b;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->close()V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$b;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->close()V

    goto :goto_0
.end method
