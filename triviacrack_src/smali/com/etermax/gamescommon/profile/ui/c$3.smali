.class Lcom/etermax/gamescommon/profile/ui/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/c;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/c;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/c$3;->a:Lcom/etermax/gamescommon/profile/ui/c;

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
    .line 112
    packed-switch p2, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c$3;->a:Lcom/etermax/gamescommon/profile/ui/c;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/c;->a(Landroid/os/IBinder;)V

    .line 115
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c$3;->a:Lcom/etermax/gamescommon/profile/ui/c;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/c;->a(Ljava/lang/CharSequence;)V

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
