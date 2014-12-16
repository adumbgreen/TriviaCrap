.class Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$3;
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
    .line 187
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$3;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$3;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->y:Lcom/etermax/gamescommon/profile/image/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/image/a;->a()V

    .line 191
    return-void
.end method
