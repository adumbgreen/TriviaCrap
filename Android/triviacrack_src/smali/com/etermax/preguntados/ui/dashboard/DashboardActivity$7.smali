.class Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->H()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$7;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 698
    new-instance v0, Lcom/etermax/gamescommon/b/p;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/p;-><init>()V

    .line 699
    const-string v1, "click_inbox"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/p;->a(Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$7;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 701
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$7;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->c(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V

    .line 702
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 706
    return-void
.end method
