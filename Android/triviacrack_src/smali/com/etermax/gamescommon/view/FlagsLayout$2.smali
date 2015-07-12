.class Lcom/etermax/gamescommon/view/FlagsLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/view/FlagsLayout;->a(Lcom/etermax/gamescommon/view/a;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/view/FlagsLayout;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/view/FlagsLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/etermax/gamescommon/view/FlagsLayout$2;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout$2;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->a(Lcom/etermax/gamescommon/view/FlagsLayout;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout$2;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    invoke-static {v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->c(Lcom/etermax/gamescommon/view/FlagsLayout;)V

    .line 225
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout$2;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->b()V

    .line 226
    return-void
.end method
