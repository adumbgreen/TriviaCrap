.class Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/gifting/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$6;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 555
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$6;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a:Z

    .line 556
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$6;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->x()V

    .line 557
    return-void
.end method
