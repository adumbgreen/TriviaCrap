.class public Lcom/etermax/preguntados/ui/newgame/g;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/h;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/RoomDTO;

.field b:J

.field c:Z

.field protected d:Lcom/etermax/preguntados/datasource/d;

.field e:Lcom/etermax/gamescommon/language/Language;

.field f:Landroid/widget/TextView;

.field g:Landroid/view/View;

.field private h:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->c:Z

    .line 49
    return-void
.end method

.method public static a(Lcom/etermax/gamescommon/language/Language;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-static {}, Lcom/etermax/preguntados/ui/newgame/i;->d()Lcom/etermax/preguntados/ui/newgame/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/j;->a(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/preguntados/ui/newgame/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/j;->a()Lcom/etermax/preguntados/ui/newgame/g;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 88
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v2, v0

    .line 92
    :goto_0
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/g$2;

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/newgame/g$2;-><init>(Lcom/etermax/preguntados/ui/newgame/g;JJ)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->h:Landroid/os/CountDownTimer;

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 106
    return-void

    .line 90
    :cond_0
    iget-wide v2, p0, Lcom/etermax/preguntados/ui/newgame/g;->b:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/g;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/g;->d()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/g;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/g;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/newgame/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/g$3;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/g$3;-><init>(Lcom/etermax/preguntados/ui/newgame/g;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/g$3;->a(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/newgame/h;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/g$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/g$1;-><init>(Lcom/etermax/preguntados/ui/newgame/g;)V

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/g;->d()V

    .line 72
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/h;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/newgame/h;->b()V

    .line 78
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/g;->a()Lcom/etermax/preguntados/ui/newgame/h;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onStart()V

    .line 145
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->c:Z

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->a:Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RoomDTO;->getCountdown()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/newgame/g;->a(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onStop()V

    .line 155
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g;->h:Landroid/os/CountDownTimer;

    .line 159
    :cond_0
    return-void
.end method
