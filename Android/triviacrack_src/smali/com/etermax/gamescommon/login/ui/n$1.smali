.class Lcom/etermax/gamescommon/login/ui/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/n;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/n;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/n;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/n$1;->a:Lcom/etermax/gamescommon/login/ui/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/n$1;->a:Lcom/etermax/gamescommon/login/ui/n;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/n;->c()V

    .line 54
    return-void
.end method
