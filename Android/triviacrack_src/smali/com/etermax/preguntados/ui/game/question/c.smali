.class public Lcom/etermax/preguntados/ui/game/question/c;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/question/d;",
        ">;"
    }
.end annotation


# static fields
.field static v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/graphics/drawable/ColorDrawable;

.field private B:Landroid/graphics/drawable/ClipDrawable;

.field private C:Lcom/etermax/preguntados/e/a;

.field a:Lcom/etermax/gamescommon/login/datasource/a;

.field b:Lcom/etermax/preguntados/datasource/d;

.field c:Lcom/etermax/preguntados/ui/game/a/a;

.field d:Lcom/etermax/preguntados/g/a;

.field e:Lcom/etermax/tools/f/a;

.field f:Lcom/etermax/preguntados/ui/d/i;

.field g:Lcom/etermax/preguntados/c/a/b;

.field h:Lcom/etermax/gamescommon/e;

.field i:Lcom/etermax/preguntados/e/c;

.field j:Lcom/etermax/preguntados/ui/withoutcoins/g;

.field k:J

.field l:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

.field m:Lcom/etermax/preguntados/ui/game/duelmode/g;

.field n:I

.field o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

.field p:Ljava/lang/String;

.field q:I

.field r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;"
        }
    .end annotation
.end field

.field t:J

.field u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

.field private w:Landroid/os/Handler;

.field private x:Z

.field private y:Z

.field private z:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    .line 125
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->EXTRA_TIME:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    new-array v2, v8, [Ljava/lang/Integer;

    sget v3, Lcom/etermax/i;->power_up_button_extra_time:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/etermax/h;->pu_clock:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/etermax/i;->arrow_start_0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/etermax/i;->text_free_0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->BOMB:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    new-array v2, v8, [Ljava/lang/Integer;

    sget v3, Lcom/etermax/i;->power_up_button_bomb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/etermax/h;->pu_bomb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/etermax/i;->arrow_start_1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/etermax/i;->text_free_1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->DOUBLE_CHANCE:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    new-array v2, v8, [Ljava/lang/Integer;

    sget v3, Lcom/etermax/i;->power_up_button_double_chance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/etermax/h;->pu_replay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/etermax/i;->arrow_start_2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/etermax/i;->text_free_2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    new-array v2, v8, [Ljava/lang/Integer;

    sget v3, Lcom/etermax/i;->power_up_button_swap_question:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/etermax/h;->pu_next:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/etermax/i;->arrow_start_3:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/etermax/i;->text_free_3:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 111
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/etermax/f;->white:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->A:Landroid/graphics/drawable/ColorDrawable;

    .line 112
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->A:Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->B:Landroid/graphics/drawable/ClipDrawable;

    .line 367
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/c$4;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/question/c$4;-><init>(Lcom/etermax/preguntados/ui/game/question/c;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->C:Lcom/etermax/preguntados/e/a;

    .line 792
    return-void
.end method

.method public static a(JLcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/preguntados/ui/game/duelmode/g;ILcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/etermax/preguntados/datasource/dto/enums/GameType;",
            "Lcom/etermax/preguntados/ui/game/duelmode/g;",
            "I",
            "Lcom/etermax/preguntados/datasource/dto/enums/SpinType;",
            "Ljava/lang/String;",
            "I",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/etermax/preguntados/ui/game/question/f;->i()Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/etermax/preguntados/ui/game/question/g;->b(J)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/question/g;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/game/question/g;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/etermax/preguntados/ui/game/question/g;->a(I)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/etermax/preguntados/ui/game/question/g;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/etermax/preguntados/ui/game/question/g;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/etermax/preguntados/ui/game/question/g;->b(I)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/etermax/preguntados/ui/game/question/g;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p10}, Lcom/etermax/preguntados/ui/game/question/g;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/g;->a()Lcom/etermax/preguntados/ui/game/question/c;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method public static a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/etermax/preguntados/datasource/dto/enums/SpinType;",
            "Ljava/lang/String;",
            "I",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 166
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide v0, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/preguntados/ui/game/duelmode/g;ILcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/support/v4/app/Fragment;
    .locals 1
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
            "(J",
            "Lcom/etermax/preguntados/datasource/dto/enums/SpinType;",
            "Ljava/lang/String;",
            "I",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/etermax/preguntados/ui/game/question/f;->i()Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/etermax/preguntados/ui/game/question/g;->b(J)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/question/g;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/game/question/g;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/etermax/preguntados/ui/game/question/g;->b(I)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/etermax/preguntados/ui/game/question/g;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/etermax/preguntados/ui/game/question/g;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/etermax/preguntados/ui/game/question/g;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/g;->a()Lcom/etermax/preguntados/ui/game/question/c;

    move-result-object v0

    .line 182
    return-object v0
.end method

.method public static a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;JLjava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/support/v4/app/Fragment;
    .locals 1
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
            "(J",
            "Lcom/etermax/preguntados/datasource/dto/enums/SpinType;",
            "Ljava/lang/String;",
            "I",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcom/etermax/preguntados/ui/game/question/f;->i()Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/etermax/preguntados/ui/game/question/g;->b(J)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/question/g;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/game/question/g;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/etermax/preguntados/ui/game/question/g;->b(I)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/etermax/preguntados/ui/game/question/g;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/etermax/preguntados/ui/game/question/g;->a(J)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/etermax/preguntados/ui/game/question/g;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0, p9}, Lcom/etermax/preguntados/ui/game/question/g;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Lcom/etermax/preguntados/ui/game/question/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/g;->a()Lcom/etermax/preguntados/ui/game/question/c;

    move-result-object v0

    .line 147
    return-object v0
.end method

.method public static a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/etermax/preguntados/datasource/dto/enums/SpinType;",
            "Ljava/lang/String;",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 132
    sget v4, Lcom/etermax/f;->challenge_header:I

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 772
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->c:[I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 786
    const-string v0, ""

    .line 789
    :goto_0
    return-object v0

    .line 774
    :pswitch_0
    const-string v0, "crown_question"

    goto :goto_0

    .line 777
    :pswitch_1
    const-string v0, "duel"

    goto :goto_0

    .line 780
    :pswitch_2
    const-string v0, "final_duel"

    goto :goto_0

    .line 783
    :pswitch_3
    const-string v0, "question"

    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/c;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/c;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 659
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(ILjava/lang/Integer;Z)V

    .line 660
    return-void
.end method

.method private a(ILjava/lang/Integer;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    invoke-interface {v0, p2, v1}, Lcom/etermax/preguntados/ui/game/question/d;->a(Ljava/lang/Integer;Ljava/util/ArrayList;)V

    .line 664
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->answer_try_again_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 665
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/OutlineTextView;

    .line 666
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/f;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/OutlineTextView;->a(II)V

    .line 667
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4000

    const/high16 v3, 0x4080

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/etermax/f;->gray:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/etermax/tools/widget/OutlineTextView;->setShadowLayer(FFFI)V

    .line 668
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/OutlineTextView;->setVisibility(I)V

    .line 669
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->g()Landroid/view/animation/Animation;

    move-result-object v0

    .line 670
    if-eqz p3, :cond_0

    .line 671
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/c$5;

    invoke-direct {v1, p0, p2}, Lcom/etermax/preguntados/ui/game/question/c$5;-><init>(Lcom/etermax/preguntados/ui/game/question/c;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->game_question_result_textview_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 690
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 691
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v1

    .line 389
    sget v0, Lcom/etermax/i;->question_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 390
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 392
    sget v0, Lcom/etermax/i;->question_image_switcher:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 393
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 394
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private a(Landroid/widget/Button;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 438
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 439
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 441
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 445
    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 446
    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 448
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 5
    .parameter

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 400
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 402
    :cond_0
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 695
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerButton"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 697
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->h()Landroid/view/animation/Animation;

    move-result-object v2

    .line 698
    mul-int/lit8 v3, v1, 0x64

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 701
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    .line 702
    new-instance v3, Lcom/etermax/preguntados/ui/game/question/c$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/c$6;-><init>(Lcom/etermax/preguntados/ui/game/question/c;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 710
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 695
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 712
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->power_up_buttons_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->e()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 713
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 518
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v2

    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v2

    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 524
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->d(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 525
    :goto_0
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->d(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "free"

    .line 527
    :goto_1
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/d;->t()I

    move-result v3

    if-gt v0, v3, :cond_5

    .line 528
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/datasource/d;->a(I)I

    .line 529
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/util/ArrayList;)V

    .line 531
    invoke-direct {p0, v4}, Lcom/etermax/preguntados/ui/game/question/c;->a(Z)V

    .line 532
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->b:[I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 583
    :cond_1
    :goto_2
    return-void

    .line 524
    :cond_2
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->b(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I

    move-result v0

    goto :goto_0

    .line 525
    :cond_3
    const-string v2, "normal"

    goto :goto_1

    .line 534
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->f:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/etermax/preguntados/ui/d/i;->b(Landroid/content/Context;I)V

    .line 535
    const-string v0, "extra_time"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/etermax/preguntados/ui/game/question/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->d:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->m:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 537
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;->i()V

    .line 538
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/c;->a(J)V

    goto :goto_2

    .line 541
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->f:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/etermax/preguntados/ui/d/i;->b(Landroid/content/Context;I)V

    .line 542
    const-string v0, "bomb"

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-direct {p0, v3}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/etermax/preguntados/ui/game/question/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->d:Lcom/etermax/preguntados/g/a;

    sget v2, Lcom/etermax/preguntados/g/a;->j:I

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 545
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 546
    :goto_3
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 547
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 549
    :cond_4
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCorrectAnswer()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 551
    :goto_4
    if-ge v1, v7, :cond_1

    .line 552
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, v0, v3

    .line 553
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->b(Ljava/lang/Integer;)V

    .line 554
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 558
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->f:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/etermax/preguntados/ui/d/i;->b(Landroid/content/Context;I)V

    .line 559
    const-string v0, "double"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/etermax/preguntados/ui/game/question/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->d:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->l:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 561
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->power_up_button_double_chance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->power_up_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->d()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 562
    iput-boolean v4, p0, Lcom/etermax/preguntados/ui/game/question/c;->y:Z

    goto/16 :goto_2

    .line 565
    :pswitch_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->f:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/etermax/preguntados/ui/d/i;->b(Landroid/content/Context;I)V

    .line 566
    const-string v0, "pass"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/etermax/preguntados/ui/game/question/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->d:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->k:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 568
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/a/a;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/c;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/game/question/d;->a(Ljava/util/ArrayList;JLcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V

    goto/16 :goto_2

    .line 574
    :cond_5
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->c(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c;->o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-direct {p0, v2}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/etermax/preguntados/ui/game/question/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 577
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->j:Lcom/etermax/preguntados/ui/withoutcoins/g;

    invoke-virtual {v0, v4}, Lcom/etermax/preguntados/ui/withoutcoins/g;->a(Z)V

    .line 580
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/etermax/o;->not_enough_coins:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/question/c;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/c;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;->m()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/c;ILjava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/c;->a(ILjava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/c;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->a(Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/c;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/c;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->c(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 874
    new-instance v0, Lcom/etermax/preguntados/a/a/f;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a/f;-><init>()V

    .line 875
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a/f;->a(Ljava/lang/String;)V

    .line 876
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 877
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->x:Z

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Lcom/etermax/preguntados/a/h;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/h;-><init>()V

    .line 742
    invoke-virtual {v0, p1, p2, p3}, Lcom/etermax/preguntados/a/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 743
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 745
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->x:Z

    .line 746
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->x:Z

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Lcom/etermax/preguntados/a/g;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/g;-><init>()V

    .line 733
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/etermax/preguntados/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 736
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->x:Z

    .line 737
    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 484
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 485
    sget-object v2, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 486
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 487
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 488
    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/f;->power_up_button_disabled:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 490
    sget v2, Lcom/etermax/i;->power_up_image:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 491
    sget v2, Lcom/etermax/f;->gray:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 494
    :cond_1
    return-void
.end method

.method private b(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I
    .locals 3
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getPowerUps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;

    .line 599
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;->getName()Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 600
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;->getCost()I

    move-result v0

    .line 603
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/question/c;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private b(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/c;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/etermax/preguntados/h/c;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 862
    return-object v0
.end method

.method private b(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    .line 586
    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answerButton"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 588
    sget v1, Lcom/etermax/i;->answer_button:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/etermax/tools/widget/CustomFontButton;

    .line 589
    sget v2, Lcom/etermax/h;->button_power_up_bomb_answer_background:I

    sget v3, Lcom/etermax/h;->button_power_up_bomb_answer_background:I

    invoke-virtual {v1, v2, v3}, Lcom/etermax/tools/widget/CustomFontButton;->a(II)V

    .line 590
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/f;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/etermax/tools/widget/CustomFontButton;->setTextColor(I)V

    .line 591
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/etermax/tools/widget/CustomFontButton;->setClickable(Z)V

    .line 592
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->i()Landroid/view/animation/Animation;

    .line 593
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->i()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 595
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 880
    new-instance v0, Lcom/etermax/preguntados/a/a/e;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a/e;-><init>()V

    .line 881
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a/e;->a(Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 883
    return-void
.end method

.method private c(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 750
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->b:[I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 764
    const-string v0, ""

    .line 767
    :goto_0
    return-object v0

    .line 752
    :pswitch_0
    const-string v0, "bomb"

    goto :goto_0

    .line 755
    :pswitch_1
    const-string v0, "double"

    goto :goto_0

    .line 758
    :pswitch_2
    const-string v0, "extra_time"

    goto :goto_0

    .line 761
    :pswitch_3
    const-string v0, "pass"

    goto :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/game/question/c;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;->k()V

    return-void
.end method

.method private c(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 607
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCorrectAnswer()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 608
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->a(Ljava/lang/Integer;)V

    .line 609
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;->k()V

    .line 610
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->d:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->c:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 611
    sget v0, Lcom/etermax/i;->answer_correct_textview:I

    invoke-direct {p0, v0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->a(ILjava/lang/Integer;)V

    .line 627
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->y:Z

    if-eqz v0, :cond_1

    .line 615
    sget v0, Lcom/etermax/i;->answer_try_again_textview:I

    invoke-direct {p0, v0, p1, v2}, Lcom/etermax/preguntados/ui/game/question/c;->a(ILjava/lang/Integer;Z)V

    .line 616
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->d(Ljava/lang/Integer;)V

    .line 617
    iput-boolean v2, p0, Lcom/etermax/preguntados/ui/game/question/c;->y:Z

    .line 625
    :goto_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->d:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->d:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/d;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/question/d;->d()V

    .line 620
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->d(Ljava/lang/Integer;)V

    .line 621
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCorrectAnswer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(Ljava/lang/Integer;)V

    .line 622
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;->k()V

    .line 623
    sget v0, Lcom/etermax/i;->answer_incorrect_textview:I

    invoke-direct {p0, v0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->a(ILjava/lang/Integer;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/game/question/c;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private d(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 639
    if-eqz p1, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answerButton"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 641
    sget v1, Lcom/etermax/i;->answer_button:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontButton;

    .line 642
    sget v1, Lcom/etermax/h;->button_red_background:I

    sget v2, Lcom/etermax/h;->button_red_background_pressed:I

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/CustomFontButton;->a(II)V

    .line 643
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setTextColor(I)V

    .line 644
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setClickable(Z)V

    .line 646
    :cond_0
    return-void
.end method

.method private d(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Z
    .locals 1
    .parameter

    .prologue
    .line 866
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    const/4 v0, 0x1

    .line 869
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/game/question/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/game/question/c;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->z:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->z:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 435
    :cond_0
    return-void
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 451
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 452
    sget-object v1, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 453
    sget-object v1, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 454
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->b(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I

    move-result v5

    .line 456
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 457
    sget v1, Lcom/etermax/i;->power_up_cost_textview:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    sget v1, Lcom/etermax/i;->power_up_image:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/etermax/f;->power_up_button:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 463
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    if-ne v0, v2, :cond_1

    .line 464
    invoke-direct {p0, v7}, Lcom/etermax/preguntados/ui/game/question/c;->a(Z)V

    goto :goto_1

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    invoke-direct {p0, v7}, Lcom/etermax/preguntados/ui/game/question/c;->a(Z)V

    .line 473
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    if-ne v0, v1, :cond_4

    .line 474
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 475
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 476
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 477
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->power_up_button_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 478
    sget v1, Lcom/etermax/i;->power_up_image:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 479
    sget v1, Lcom/etermax/f;->gray:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 481
    :cond_4
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 649
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;->i()V

    move v1, v2

    .line 650
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answerButton"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 652
    sget v3, Lcom/etermax/i;->answer_button:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontButton;

    .line 653
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/etermax/tools/widget/CustomFontButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v2}, Lcom/etermax/preguntados/ui/game/question/c;->a(Z)V

    .line 656
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 716
    sget v0, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/widget/b/f;->a(Ljava/lang/String;)Lcom/etermax/tools/widget/b/f;

    move-result-object v0

    .line 717
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/f;->setCancelable(Z)V

    .line 718
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "question_image_loading_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/f;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "question_image_loading_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/f;

    .line 723
    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/f;->dismissAllowingStateLoss()V

    .line 726
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/question/d;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/c$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/question/c$1;-><init>(Lcom/etermax/preguntados/ui/game/question/c;)V

    return-object v0
.end method

.method protected a(J)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v3, 0x3a98

    .line 406
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getQuestionTime()I

    move-result v6

    .line 407
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->countdown_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 408
    mul-int/lit16 v1, v6, 0x3e8

    int-to-long v1, v1

    .line 410
    mul-int/lit16 v1, v6, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 411
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    mul-int/lit16 v2, v6, 0x3e8

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->f(I)V

    .line 413
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->EXTRA_TIME:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    cmp-long v1, v3, p1

    if-lez v1, :cond_2

    mul-int/lit16 v1, v6, 0x3e8

    add-int/lit16 v1, v1, 0x3a98

    int-to-long v1, v1

    sub-long v2, v1, p1

    .line 415
    :goto_0
    mul-int/lit16 v1, v6, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 416
    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 417
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->f(I)V

    .line 423
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->z:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->z:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->z:Landroid/os/CountDownTimer;

    .line 427
    :cond_1
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/e;

    const-wide/16 v4, 0x32

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/question/e;-><init>(Lcom/etermax/preguntados/ui/game/question/c;JJI)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->z:Landroid/os/CountDownTimer;

    .line 428
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->z:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 429
    return-void

    .line 414
    :cond_2
    mul-int/lit16 v1, v6, 0x3e8

    int-to-long v1, v1

    sub-long/2addr v1, p1

    add-long v2, v1, v3

    goto :goto_0

    .line 421
    :cond_3
    mul-int/lit16 v0, v6, 0x3e8

    int-to-long v0, v0

    sub-long v2, v0, p1

    goto :goto_1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 630
    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answerButton"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 632
    sget v1, Lcom/etermax/i;->answer_button:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontButton;

    .line 633
    sget v1, Lcom/etermax/h;->button_green_background:I

    sget v2, Lcom/etermax/h;->button_green_background_pressed:I

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/CustomFontButton;->a(II)V

    .line 634
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setTextColor(I)V

    .line 636
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->w:Landroid/os/Handler;

    .line 227
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->i:Lcom/etermax/preguntados/e/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/e/c;->b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->d()V

    .line 234
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 255
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->a:[I

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 271
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->q:I

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/ui/game/question/c;->q:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_header_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const-string v0, ""

    .line 278
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->h:Lcom/etermax/gamescommon/e;

    const-string v2, "ANSWERS_CHEAT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCorrectAnswer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 282
    :goto_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->questionTextView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(Landroid/widget/TextView;)V

    .line 285
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 286
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->category_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 290
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->m:Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/h;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c;->g:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a(Lcom/etermax/preguntados/c/a/e;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->l:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->l:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_duel_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_duel_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/c;->h()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/c;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :goto_2
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->power_up_buttons_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 301
    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->answersContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 304
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 307
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->d:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->f:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 308
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v4

    move v3, v8

    .line 309
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 311
    sget v0, Lcom/etermax/k;->game_question_answer_button_layout:I

    invoke-virtual {v9, v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 312
    sget v0, Lcom/etermax/i;->answer_button:I

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answerButton"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 315
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v2}, Landroid/widget/Button;->setSingleLine()V

    .line 317
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/c$2;

    invoke-direct {v0, p0, v3}, Lcom/etermax/preguntados/ui/game/question/c$2;-><init>(Lcom/etermax/preguntados/ui/game/question/c;I)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 325
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->f()Landroid/view/animation/Animation;

    move-result-object v10

    .line 326
    mul-int/lit16 v0, v3, 0xc8

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 327
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/c$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/c$3;-><init>(Lcom/etermax/preguntados/ui/game/question/c;Landroid/widget/Button;ILjava/util/List;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 360
    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->i:Lcom/etermax/preguntados/e/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/preguntados/e/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_duel_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 363
    :cond_2
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;->j()V

    .line 364
    return-void

    :cond_3
    move-object v1, v0

    goto/16 :goto_1

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method e()V
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->EXTRA_TIME:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V

    .line 499
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->BOMB:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V

    .line 504
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 508
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->DOUBLE_CHANCE:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V

    .line 509
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/c;->a()Lcom/etermax/preguntados/ui/game/question/d;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V

    .line 514
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 207
    sget v0, Lcom/etermax/k;->game_question_fragment_layout:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 209
    sget v0, Lcom/etermax/i;->countdown_share_switcher:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 210
    sget v0, Lcom/etermax/i;->countdown_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 211
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c;->B:Landroid/graphics/drawable/ClipDrawable;

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ClipDrawable;->setAlpha(I)V

    .line 212
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c;->B:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    return-object v1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onPause()V

    .line 221
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;->i()V

    .line 222
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 238
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 239
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->i:Lcom/etermax/preguntados/e/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/e/c;->b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->r()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/c;->a(J)V

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->i:Lcom/etermax/preguntados/e/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/e/c;->c(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/d;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/question/d;->c()V

    goto :goto_0

    .line 248
    :cond_2
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;->l()V

    .line 249
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c;->i:Lcom/etermax/preguntados/e/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c;->C:Lcom/etermax/preguntados/e/a;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/e/c;->b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/e/a;)V

    goto :goto_0
.end method
