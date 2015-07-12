.class Lcom/etermax/gamescommon/menu/a/a$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/a;->l()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/a$13;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    packed-switch p2, :pswitch_data_0

    .line 289
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$13;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/a;->a(Landroid/os/IBinder;)V

    .line 286
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$13;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a;->g()V

    .line 287
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
