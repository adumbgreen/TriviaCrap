.class Lcom/etermax/chat/ui/d$1;
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
    .line 64
    iput-object p1, p0, Lcom/etermax/chat/ui/d$1;->a:Lcom/etermax/chat/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    packed-switch p2, :pswitch_data_0

    .line 79
    iget-object v0, p0, Lcom/etermax/chat/ui/d$1;->a:Lcom/etermax/chat/ui/d;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/d;->dismissAllowingStateLoss()V

    .line 83
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/chat/ui/d$1;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v0}, Lcom/etermax/chat/ui/d;->b(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/chat/ui/d$1;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v1}, Lcom/etermax/chat/ui/d;->a(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/a/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/chat/ui/e;->b(Lcom/etermax/chat/a/f;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/chat/ui/d$1;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v0}, Lcom/etermax/chat/ui/d;->b(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/chat/ui/d$1;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v1}, Lcom/etermax/chat/ui/d;->a(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/chat/ui/d$1;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v2}, Lcom/etermax/chat/ui/d;->c(Lcom/etermax/chat/ui/d;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/etermax/chat/ui/e;->a(Lcom/etermax/chat/a/f;I)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/chat/ui/d$1;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v0}, Lcom/etermax/chat/ui/d;->b(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/chat/ui/d$1;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v1}, Lcom/etermax/chat/ui/d;->a(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/chat/ui/d$1;->a:Lcom/etermax/chat/ui/d;

    invoke-static {v2}, Lcom/etermax/chat/ui/d;->c(Lcom/etermax/chat/ui/d;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/etermax/chat/ui/e;->b(Lcom/etermax/chat/a/f;I)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
