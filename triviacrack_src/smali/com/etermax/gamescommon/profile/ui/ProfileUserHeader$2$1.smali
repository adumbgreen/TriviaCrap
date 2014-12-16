.class Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/widget/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/widget/c",
        "<",
        "Lcom/etermax/gamescommon/profile/ui/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2$1;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/profile/ui/k;)V
    .locals 3
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2$1;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v1, p1, Lcom/etermax/gamescommon/profile/ui/k;->a:Lcom/etermax/tools/nationality/Nationality;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(Lcom/etermax/tools/nationality/Nationality;Z)V

    .line 181
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    check-cast p1, Lcom/etermax/gamescommon/profile/ui/k;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2$1;->a(Lcom/etermax/gamescommon/profile/ui/k;)V

    return-void
.end method
