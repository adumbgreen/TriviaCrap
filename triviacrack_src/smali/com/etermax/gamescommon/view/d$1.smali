.class Lcom/etermax/gamescommon/view/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/view/d;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/view/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/view/d;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/etermax/gamescommon/view/d$1;->a:Lcom/etermax/gamescommon/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d$1;->a:Lcom/etermax/gamescommon/view/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/view/d;->a(Lcom/etermax/gamescommon/view/d;Z)Z

    .line 64
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d$1;->a:Lcom/etermax/gamescommon/view/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/view/d;->a(Lcom/etermax/gamescommon/view/d;)V

    .line 65
    return-void
.end method
