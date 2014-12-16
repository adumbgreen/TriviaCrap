.class Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->setOwnProfile(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 176
    new-instance v0, Lcom/etermax/widget/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v2, v2, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->x:Ljava/util/List;

    new-instance v3, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2$1;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2$1;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/widget/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/widget/c;Z)V

    .line 183
    invoke-virtual {v0}, Lcom/etermax/widget/a;->a()V

    .line 184
    return-void
.end method
