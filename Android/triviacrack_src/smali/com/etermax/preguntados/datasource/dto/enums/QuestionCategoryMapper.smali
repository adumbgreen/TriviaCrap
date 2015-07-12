.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/c/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;",
        ">;",
        "Lcom/etermax/preguntados/c/a/g;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

.field public static final enum ARTS:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

.field public static final enum ENTERTAINMENT:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

.field public static final enum GEOGRAPHY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

.field public static final enum HISTORY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

.field public static final enum SCIENCE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

.field public static final enum SPORTS:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;


# instance fields
.field private final category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private final headerColorResource:I

.field private final iconColouredResource:I

.field private final iconResource:I

.field private final nameResource:I

.field private final textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    const-string v1, "ENTERTAINMENT"

    sget-object v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->ENTERTAINMENT:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    sget v4, Lcom/etermax/o;->trivia_cat_05:I

    sget v5, Lcom/etermax/f;->pink:I

    sget v6, Lcom/etermax/h;->icon_category_04:I

    sget v7, Lcom/etermax/f;->pink:I

    sget v8, Lcom/etermax/h;->crown_entertainment:I

    invoke-direct/range {v0 .. v8}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;-><init>(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;IIIII)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->ENTERTAINMENT:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    .line 9
    new-instance v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    const-string v4, "ARTS"

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->ARTS:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    sget v7, Lcom/etermax/o;->trivia_cat_03:I

    sget v8, Lcom/etermax/f;->redLight:I

    sget v9, Lcom/etermax/h;->icon_category_06:I

    sget v10, Lcom/etermax/f;->redLight:I

    sget v11, Lcom/etermax/h;->crown_arts:I

    move v5, v12

    invoke-direct/range {v3 .. v11}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;-><init>(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;IIIII)V

    sput-object v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->ARTS:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    .line 10
    new-instance v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    const-string v4, "SPORTS"

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->SPORTS:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    sget v7, Lcom/etermax/o;->trivia_cat_04:I

    sget v8, Lcom/etermax/f;->orangeLight:I

    sget v9, Lcom/etermax/h;->icon_category_05:I

    sget v10, Lcom/etermax/f;->orangeLight:I

    sget v11, Lcom/etermax/h;->crown_sports:I

    move v5, v13

    invoke-direct/range {v3 .. v11}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;-><init>(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;IIIII)V

    sput-object v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->SPORTS:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    .line 11
    new-instance v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    const-string v4, "HISTORY"

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->HISTORY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    sget v7, Lcom/etermax/o;->trivia_cat_01:I

    sget v8, Lcom/etermax/f;->yellow:I

    sget v9, Lcom/etermax/h;->icon_category_03:I

    sget v10, Lcom/etermax/f;->yellow:I

    sget v11, Lcom/etermax/h;->crown_history:I

    move v5, v14

    invoke-direct/range {v3 .. v11}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;-><init>(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;IIIII)V

    sput-object v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->HISTORY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    .line 12
    new-instance v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    const-string v4, "SCIENCE"

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->SCIENCE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    sget v7, Lcom/etermax/o;->trivia_cat_06:I

    sget v8, Lcom/etermax/f;->greenLight:I

    sget v9, Lcom/etermax/h;->icon_category_01:I

    sget v10, Lcom/etermax/f;->greenLight:I

    sget v11, Lcom/etermax/h;->crown_science:I

    move v5, v15

    invoke-direct/range {v3 .. v11}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;-><init>(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;IIIII)V

    sput-object v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->SCIENCE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    .line 13
    new-instance v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    const-string v4, "GEOGRAPHY"

    const/4 v5, 0x5

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->GEOGRAPHY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    sget v7, Lcom/etermax/o;->trivia_cat_02:I

    sget v8, Lcom/etermax/f;->blue:I

    sget v9, Lcom/etermax/h;->icon_category_02:I

    sget v10, Lcom/etermax/f;->blue:I

    sget v11, Lcom/etermax/h;->crown_geography:I

    invoke-direct/range {v3 .. v11}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;-><init>(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;IIIII)V

    sput-object v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->GEOGRAPHY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->ENTERTAINMENT:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->ARTS:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    aput-object v1, v0, v12

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->SPORTS:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    aput-object v1, v0, v13

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->HISTORY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    aput-object v1, v0, v14

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->SCIENCE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->GEOGRAPHY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;IIIII)V
    .locals 0
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
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "IIIII)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 24
    iput p4, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->nameResource:I

    .line 25
    iput p5, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->headerColorResource:I

    .line 26
    iput p6, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->iconResource:I

    .line 27
    iput p7, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->textColor:I

    .line 28
    iput p8, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->iconColouredResource:I

    .line 29
    return-void
.end method

.method public static getByCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;
    .locals 5
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->values()[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 50
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    if-ne v4, p0, :cond_0

    .line 54
    :goto_1
    return-object v0

    .line 49
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getByString(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;
    .locals 5
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->values()[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 59
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    :goto_1
    return-object v0

    .line 58
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getCategoryAtIndex(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->values()[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    move-result-object v0

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    return-object v0
.end method

.method public static getIconByCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 5
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->values()[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 72
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    if-ne v4, p0, :cond_0

    .line 73
    iget v0, v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->iconResource:I

    .line 76
    :goto_1
    return v0

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getOrdinalByCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->getByCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->ordinal()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    return-object v0
.end method

.method public getColouredIconResource()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->iconColouredResource:I

    return v0
.end method

.method public getHeaderColorResource()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->headerColorResource:I

    return v0
.end method

.method public getNameResource()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->nameResource:I

    return v0
.end method

.method public getTextColorResource()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->textColor:I

    return v0
.end method
