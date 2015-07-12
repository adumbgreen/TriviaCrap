.class Lcom/etermax/gamescommon/login/ui/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/g;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/g;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/g$2;->a:Lcom/etermax/gamescommon/login/ui/g;

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
    .line 59
    packed-switch p2, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$2;->a:Lcom/etermax/gamescommon/login/ui/g;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/g;->c()V

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
