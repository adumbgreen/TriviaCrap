.class public final enum Lcom/etermax/preguntados/ui/game/duelmode/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/ui/game/duelmode/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/preguntados/ui/game/duelmode/h;

.field private static final synthetic t:[Lcom/etermax/preguntados/ui/game/duelmode/h;


# instance fields
.field private b:Lcom/etermax/preguntados/ui/game/duelmode/g;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .prologue
    .line 13
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/h;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    sget-object v3, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    sget v4, Lcom/etermax/h;->icon_duelo_dashboard:I

    sget v5, Lcom/etermax/h;->background_challenge:I

    sget v6, Lcom/etermax/h;->won_challenge:I

    sget v7, Lcom/etermax/h;->lost_challenge:I

    sget v8, Lcom/etermax/h;->time_challenge:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, Lcom/etermax/o;->group_challenge:I

    sget v12, Lcom/etermax/o;->suggested_title_group_challenge:I

    const-string v13, "duelo_0"

    sget v14, Lcom/etermax/j;->avatar_duel_challenge_count:I

    const-string v15, "avatar_challenge_"

    sget v16, Lcom/etermax/j;->avatar_count:I

    sget v17, Lcom/etermax/preguntados/g/a;->E:I

    sget v18, Lcom/etermax/preguntados/g/a;->F:I

    sget v19, Lcom/etermax/m;->user_won_group_challenge:I

    sget v20, Lcom/etermax/m;->user_lost_group_challenge:I

    invoke-direct/range {v0 .. v20}, Lcom/etermax/preguntados/ui/game/duelmode/h;-><init>(Ljava/lang/String;ILcom/etermax/preguntados/ui/game/duelmode/g;IIIIIIIIILjava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/etermax/preguntados/ui/game/duelmode/h;->a:Lcom/etermax/preguntados/ui/game/duelmode/h;

    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/etermax/preguntados/ui/game/duelmode/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/etermax/preguntados/ui/game/duelmode/h;->a:Lcom/etermax/preguntados/ui/game/duelmode/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/ui/game/duelmode/h;->t:[Lcom/etermax/preguntados/ui/game/duelmode/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/etermax/preguntados/ui/game/duelmode/g;IIIIIIIIILjava/lang/String;ILjava/lang/String;IIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/ui/game/duelmode/g;",
            "IIIIIIIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIIII)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->b:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 40
    iput p4, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->c:I

    .line 41
    iput p5, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->d:I

    .line 42
    iput p6, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->e:I

    .line 43
    iput p7, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->f:I

    .line 44
    iput p8, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->g:I

    .line 45
    iput p9, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->h:I

    .line 46
    iput p10, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->i:I

    .line 47
    iput p11, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->j:I

    .line 48
    iput p12, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->k:I

    .line 49
    iput-object p13, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->l:Ljava/lang/String;

    .line 50
    iput p14, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->m:I

    .line 51
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->n:Ljava/lang/String;

    .line 52
    move/from16 v0, p16

    iput v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->o:I

    .line 53
    move/from16 v0, p17

    iput v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->p:I

    .line 54
    move/from16 v0, p18

    iput v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->q:I

    .line 55
    move/from16 v0, p19

    iput v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->r:I

    .line 56
    move/from16 v0, p20

    iput v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->s:I

    .line 57
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/h;
    .locals 1
    .parameter

    .prologue
    .line 60
    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/g;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/duelmode/h;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/etermax/preguntados/ui/game/duelmode/h;->m()Lcom/etermax/preguntados/ui/game/duelmode/h;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/duelmode/h;
    .locals 5
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/etermax/preguntados/ui/game/duelmode/h;->values()[Lcom/etermax/preguntados/ui/game/duelmode/h;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 68
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a()Lcom/etermax/preguntados/ui/game/duelmode/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/ui/game/duelmode/g;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    :goto_1
    return-object v0

    .line 67
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/etermax/preguntados/ui/game/duelmode/h;->m()Lcom/etermax/preguntados/ui/game/duelmode/h;

    move-result-object v0

    goto :goto_1
.end method

.method private static m()Lcom/etermax/preguntados/ui/game/duelmode/h;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/h;->a:Lcom/etermax/preguntados/ui/game/duelmode/h;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/duelmode/h;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/h;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/ui/game/duelmode/h;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/h;->t:[Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/ui/game/duelmode/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/ui/game/duelmode/h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;J)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->m:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 129
    return v0
.end method

.method public a(Lcom/etermax/preguntados/c/a/e;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->i:I

    if-eqz v0, :cond_1

    .line 109
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->i:I

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-interface {p1, p2}, Lcom/etermax/preguntados/c/a/e;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v0

    .line 112
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcom/etermax/preguntados/ui/game/duelmode/g;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->b:Lcom/etermax/preguntados/ui/game/duelmode/g;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->c:I

    return v0
.end method

.method public b(Landroid/content/Context;J)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->o:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 135
    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->j:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->k:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->p:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->q:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->r:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/h;->s:I

    return v0
.end method
