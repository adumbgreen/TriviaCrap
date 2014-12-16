.class Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/ui/BaseLegacyChatActivity;->b(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
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

.field final synthetic b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;


# direct methods
.method constructor <init>(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iput-object p2, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lcom/etermax/gamescommon/b/d;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/d;-><init>()V

    .line 230
    const-string v1, "mp_swipe"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/d;->a(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v1, v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->m:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 232
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->o:Lcom/etermax/gamescommon/datasource/e;

    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/e;->e(J)V

    .line 233
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/chat/a/a;->a(J)V

    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Void;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 239
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->n:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->c(J)V

    .line 241
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->k:Lcom/etermax/gamescommon/menu/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a;->e()V

    .line 242
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a;->d()V

    .line 243
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    invoke-virtual {v0, v3, v3}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(IZ)V

    .line 244
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Void;)V

    return-void
.end method
