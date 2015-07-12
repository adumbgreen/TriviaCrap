.class public Lcom/etermax/preguntados/d/c;
.super Lcom/etermax/gamescommon/gifting/c;
.source "SourceFile"


# instance fields
.field f:Lcom/etermax/gamescommon/login/datasource/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/gamescommon/gifting/c;-><init>()V

    .line 65
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/d/c;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Lcom/etermax/preguntados/d/c;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/etermax/preguntados/d/f;->d()Lcom/etermax/preguntados/d/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/d/g;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/d/g;->a()Lcom/etermax/preguntados/d/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/d/c;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/d/c;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/d/c;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/d/c;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/d/c;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/d/c;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/List;)Landroid/widget/BaseAdapter;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/etermax/preguntados/d/d;

    invoke-virtual {p0}, Lcom/etermax/preguntados/d/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/d/d;-><init>(Lcom/etermax/preguntados/d/c;Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/etermax/o;->push_gifting_tittle:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/d/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/etermax/preguntados/d/c;->f:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/etermax/o;->user_sent_spin:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/d/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;->EXTRA_SHOT:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    return-object v0
.end method
