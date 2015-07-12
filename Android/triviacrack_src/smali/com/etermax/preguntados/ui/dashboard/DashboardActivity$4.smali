.class Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1087
    new-instance v0, Lcom/etermax/gamescommon/b/d;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/d;-><init>()V

    .line 1088
    const-string v1, "mp_swipe"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/d;->a(Ljava/lang/String;)V

    .line 1089
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 1090
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->n:Lcom/etermax/gamescommon/datasource/e;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/e;->e(J)V

    .line 1091
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->w:Lcom/etermax/chat/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/chat/a/a;->a(J)V

    .line 1092
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Void;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1097
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1098
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->i:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->c(J)V

    .line 1099
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b:Lcom/etermax/gamescommon/menu/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a;->e()V

    .line 1100
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1083
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Void;)V

    return-void
.end method
