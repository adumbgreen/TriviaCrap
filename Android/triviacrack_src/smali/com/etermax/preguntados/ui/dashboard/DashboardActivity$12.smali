.class Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$12;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->d(J)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;",
        "Ljava/util/List",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$12;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iput-wide p2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$12;->a:J

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$12;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 941
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 942
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 943
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/b/a;->a(Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NEW_LEVEL_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 946
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 932
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$12;->a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Ljava/util/List;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 936
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$12;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$12;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->g(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
