.class Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/chat/ui/BaseLegacyChatActivity;",
        "Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;


# direct methods
.method constructor <init>(Lcom/etermax/chat/ui/BaseLegacyChatActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iput p2, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->a:I

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b()Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->i:Lcom/etermax/gamescommon/datasource/a;

    sget-wide v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    invoke-static {v2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(Lcom/etermax/chat/ui/BaseLegacyChatActivity;)Lcom/etermax/gamescommon/f/a/b;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/etermax/gamescommon/datasource/a;->b(Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;Ljava/lang/Long;Lcom/etermax/gamescommon/f/a/b;)V

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v1, v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    sget-wide v2, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    invoke-virtual {v1, p2, v2, v3}, Lcom/etermax/chat/a/a;->a(Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;J)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    :goto_0
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isBlocked()Z

    move-result v1

    sput-boolean v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->q:Z

    .line 329
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isFriend()Z

    move-result v1

    sput-boolean v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->r:Z

    .line 331
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getLastSeen()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 334
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v3, "BrandonText-Regular.otf"

    invoke-direct {v1, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 336
    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    invoke-static {v1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->b(Lcom/etermax/chat/ui/BaseLegacyChatActivity;)Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 340
    :goto_1
    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getOpponentFacebookId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    invoke-static {v0}, Lcom/etermax/chat/a/j;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(Ljava/util/ArrayList;)V

    .line 342
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    invoke-static {v0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->c(Lcom/etermax/chat/ui/BaseLegacyChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->a:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(IZ)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->n:Lcom/etermax/gamescommon/menu/a/d;

    sget-wide v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->a(J)V

    .line 348
    return-void

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    invoke-static {v1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->b(Lcom/etermax/chat/ui/BaseLegacyChatActivity;)Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 324
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    check-cast p1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    check-cast p2, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->a(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;
    .locals 6

    .prologue
    .line 314
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->i:Lcom/etermax/gamescommon/datasource/a;

    sget-wide v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    iget v3, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->a:I

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/datasource/a;->a(JIJ)Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;

    move-result-object v0

    return-object v0
.end method
