.class Lcom/inmobi/re/container/IMWebView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/IMWebView;->a(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcom/inmobi/re/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$i;->b:Lcom/inmobi/re/container/IMWebView;

    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView$i;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 679
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$i;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 680
    return-void
.end method
