.class Lcom/etermax/gamescommon/d/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/d/a/a;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/etermax/gamescommon/d/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/d/a/a;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/etermax/gamescommon/d/a/a$1;->c:Lcom/etermax/gamescommon/d/a/a;

    iput-boolean p2, p0, Lcom/etermax/gamescommon/d/a/a$1;->a:Z

    iput-boolean p3, p0, Lcom/etermax/gamescommon/d/a/a$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/etermax/gamescommon/b/e;

    sget-object v1, Lcom/etermax/gamescommon/b/h;->c:Lcom/etermax/gamescommon/b/h;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/e;-><init>(Lcom/etermax/gamescommon/b/h;)V

    .line 84
    packed-switch p2, :pswitch_data_0

    .line 106
    sget-object v1, Lcom/etermax/gamescommon/b/f;->d:Lcom/etermax/gamescommon/b/f;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/e;->a(Lcom/etermax/gamescommon/b/f;)V

    .line 107
    iget-object v1, p0, Lcom/etermax/gamescommon/d/a/a$1;->c:Lcom/etermax/gamescommon/d/a/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/d/a/a;->dismissAllowingStateLoss()V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/etermax/gamescommon/d/a/a$1;->c:Lcom/etermax/gamescommon/d/a/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/d/a/a;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 111
    return-void

    .line 86
    :pswitch_0
    sget-object v1, Lcom/etermax/gamescommon/b/f;->a:Lcom/etermax/gamescommon/b/f;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/e;->a(Lcom/etermax/gamescommon/b/f;)V

    .line 87
    iget-boolean v1, p0, Lcom/etermax/gamescommon/d/a/a$1;->a:Z

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/etermax/gamescommon/d/a/a$1;->c:Lcom/etermax/gamescommon/d/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/d/a/a;->a(Lcom/etermax/gamescommon/d/a/a;)Lcom/etermax/gamescommon/d/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/gamescommon/d/a/b;->c_()V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/d/a/a$1;->c:Lcom/etermax/gamescommon/d/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/d/a/a;->a(Lcom/etermax/gamescommon/d/a/a;)Lcom/etermax/gamescommon/d/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/gamescommon/d/a/b;->a()V

    goto :goto_0

    .line 94
    :pswitch_1
    sget-object v1, Lcom/etermax/gamescommon/b/f;->b:Lcom/etermax/gamescommon/b/f;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/e;->a(Lcom/etermax/gamescommon/b/f;)V

    .line 95
    iget-boolean v1, p0, Lcom/etermax/gamescommon/d/a/a$1;->b:Z

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/etermax/gamescommon/d/a/a$1;->c:Lcom/etermax/gamescommon/d/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/d/a/a;->a(Lcom/etermax/gamescommon/d/a/a;)Lcom/etermax/gamescommon/d/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/gamescommon/d/a/b;->d_()V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/etermax/gamescommon/d/a/a$1;->c:Lcom/etermax/gamescommon/d/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/d/a/a;->a(Lcom/etermax/gamescommon/d/a/a;)Lcom/etermax/gamescommon/d/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/gamescommon/d/a/b;->c()V

    goto :goto_0

    .line 102
    :pswitch_2
    sget-object v1, Lcom/etermax/gamescommon/b/f;->c:Lcom/etermax/gamescommon/b/f;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/e;->a(Lcom/etermax/gamescommon/b/f;)V

    .line 103
    iget-object v1, p0, Lcom/etermax/gamescommon/d/a/a$1;->c:Lcom/etermax/gamescommon/d/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/d/a/a;->a(Lcom/etermax/gamescommon/d/a/a;)Lcom/etermax/gamescommon/d/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/gamescommon/d/a/b;->f()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
