.class Lcom/etermax/gamescommon/login/ui/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/s;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/s;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/s;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/s$1;->a:Lcom/etermax/gamescommon/login/ui/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/s$1;->a:Lcom/etermax/gamescommon/login/ui/s;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/s;->a()V

    .line 43
    return-void
.end method
