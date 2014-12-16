.class Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/16 v4, 0x280

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://graph.facebook.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->g:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture?width=%s&height=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v3, v3, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v4, v4, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    invoke-static {v2, v3, v0, v4}, Lcom/etermax/preguntados/sharing/j;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;Ljava/lang/String;Lcom/etermax/preguntados/sharing/n;)Lcom/etermax/preguntados/sharing/i;

    move-result-object v0

    iput-object v0, v1, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->c:Lcom/etermax/preguntados/sharing/ShareView;

    .line 124
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->b(Lcom/etermax/preguntados/ui/profile/ProfileActivity;)V

    .line 125
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v3, v3, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    invoke-static {v1, v2, p1, v3}, Lcom/etermax/preguntados/sharing/j;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;Ljava/lang/String;Lcom/etermax/preguntados/sharing/n;)Lcom/etermax/preguntados/sharing/i;

    move-result-object v1

    iput-object v1, v0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->c:Lcom/etermax/preguntados/sharing/ShareView;

    .line 117
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->b(Lcom/etermax/preguntados/ui/profile/ProfileActivity;)V

    .line 118
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;->a:Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->b(Lcom/etermax/preguntados/ui/profile/ProfileActivity;)V

    .line 130
    return-void
.end method
