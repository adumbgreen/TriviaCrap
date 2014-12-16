.class Lcom/inmobi/re/container/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 766
    iput-object p1, p0, Lcom/inmobi/re/container/a$d;->a:Lcom/inmobi/re/container/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 771
    iget-object v0, p0, Lcom/inmobi/re/container/a$d;->a:Lcom/inmobi/re/container/a;

    iget-object v0, v0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->k(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 772
    return-void
.end method
