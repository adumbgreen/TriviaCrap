.class Lcom/etermax/chat/ui/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/ui/d;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/chat/ui/d;


# direct methods
.method constructor <init>(Lcom/etermax/chat/ui/d;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/etermax/chat/ui/d$2;->a:Lcom/etermax/chat/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    packed-switch p2, :pswitch_data_0

    .line 100
    iget-object v0, p0, Lcom/etermax/chat/ui/d$2;->a:Lcom/etermax/chat/ui/d;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/d;->dismissAllowingStateLoss()V

    .line 104
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/chat/ui/d$2;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v0}, Lcom/etermax/chat/ui/d;->b(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/chat/ui/d$2;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v1}, Lcom/etermax/chat/ui/d;->a(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/a/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/chat/ui/e;->b(Lcom/etermax/chat/a/f;)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/chat/ui/d$2;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v0}, Lcom/etermax/chat/ui/d;->b(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/chat/ui/d$2;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v1}, Lcom/etermax/chat/ui/d;->a(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/a/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/chat/ui/e;->c(Lcom/etermax/chat/a/f;)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
