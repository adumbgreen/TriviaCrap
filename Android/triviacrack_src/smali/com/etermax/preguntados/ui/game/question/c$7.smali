.class synthetic Lcom/etermax/preguntados/ui/game/question/c$7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/game/question/c;
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 772
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->values()[Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->c:[I

    :try_start_0
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->c:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->c:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->c:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->c:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    .line 532
    :goto_3
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->values()[Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->b:[I

    :try_start_4
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->EXTRA_TIME:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->BOMB:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->DOUBLE_CHANCE:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    .line 255
    :goto_7
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->values()[Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->a:[I

    :try_start_8
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->a:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->IMAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->a:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->a:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->SOUND:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c$7;->a:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->VIDEO:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    .line 532
    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    .line 772
    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
