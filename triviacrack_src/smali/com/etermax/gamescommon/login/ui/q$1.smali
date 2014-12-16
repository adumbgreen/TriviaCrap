.class Lcom/etermax/gamescommon/login/ui/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 42
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/q$1;->a:Lcom/etermax/gamescommon/login/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q$1;->a:Lcom/etermax/gamescommon/login/ui/q;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/q;->a()V

    .line 46
    return-void
.end method
