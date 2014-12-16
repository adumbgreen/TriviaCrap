.class Lcom/etermax/gamescommon/login/ui/q$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/q;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/q;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/q;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/q$3;->a:Lcom/etermax/gamescommon/login/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    packed-switch p2, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q$3;->a:Lcom/etermax/gamescommon/login/ui/q;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/q;->a()V

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
