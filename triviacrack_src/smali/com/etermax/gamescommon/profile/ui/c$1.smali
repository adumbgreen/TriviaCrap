.class Lcom/etermax/gamescommon/profile/ui/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/profile/ui/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/c;->a()Lcom/etermax/gamescommon/profile/ui/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/c;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/c$1;->a:Lcom/etermax/gamescommon/profile/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/j;Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c$1;->a:Lcom/etermax/gamescommon/profile/ui/c;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/c;->a(Lcom/etermax/gamescommon/profile/ui/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/profile/ui/d;

    invoke-interface {v0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/d;->a(Lcom/etermax/gamescommon/j;Landroid/widget/BaseAdapter;)V

    .line 62
    return-void
.end method
