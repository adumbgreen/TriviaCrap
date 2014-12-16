.class public final enum Lcom/etermax/gamescommon/language/LanguageResourceMapper;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/language/LanguageResourceMapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum AF:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum AR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum BG:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum CA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum CS:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum CY:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum DA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum DE:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum EL:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum EN:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum EN_UK:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum EN_US:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum EO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum ES:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum ES_ES:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum ES_LA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum ET:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum EU:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum FI:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum FR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum GA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum HE:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum HI:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum HR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum HU:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum ID:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum IS:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum IT:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum JA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum KO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum LA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum LT:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum LV:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum MS_LATN:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum NL:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum NW:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum PO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum PT:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum PT_BR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum RO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum RU:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum SK:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum SL:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum SV:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum TH:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum TR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum UK:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

.field public static final enum ZH_HANS:Lcom/etermax/gamescommon/language/LanguageResourceMapper;


# instance fields
.field private final code:Lcom/etermax/gamescommon/language/Language;

.field private final flagResource:I

.field private final nameResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v1, "ES"

    sget-object v3, Lcom/etermax/gamescommon/language/Language;->ES:Lcom/etermax/gamescommon/language/Language;

    sget v4, Lcom/etermax/h;->country_es:I

    sget v5, Lcom/etermax/o;->language_es:I

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ES:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 8
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "EN"

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_us:I

    sget v8, Lcom/etermax/o;->language_en:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EN:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 9
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "FR"

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->FR:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_fr:I

    sget v8, Lcom/etermax/o;->language_fr:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->FR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 10
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "DE"

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->DE:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_de:I

    sget v8, Lcom/etermax/o;->language_de:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->DE:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 12
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "IT"

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->IT:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_it:I

    sget v8, Lcom/etermax/o;->language_it:I

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->IT:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 13
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "SV"

    const/4 v5, 0x5

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->SV:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_se:I

    sget v8, Lcom/etermax/o;->language_sv:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->SV:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 14
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "CA"

    const/4 v5, 0x6

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->CA:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->language_flag_catalan:I

    sget v8, Lcom/etermax/o;->language_ca:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->CA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 15
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "PT"

    const/4 v5, 0x7

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->PT:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_pt:I

    sget v8, Lcom/etermax/o;->language_pt:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->PT:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 16
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "PT_BR"

    const/16 v5, 0x8

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->PT_BR:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_br:I

    sget v8, Lcom/etermax/o;->language_pt_br:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->PT_BR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 17
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "NL"

    const/16 v5, 0x9

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->NL:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_nl:I

    sget v8, Lcom/etermax/o;->language_nl:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->NL:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 18
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "EN_UK"

    const/16 v5, 0xa

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->EN_UK:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_gb:I

    sget v8, Lcom/etermax/o;->language_en_uk:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EN_UK:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 19
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "EU"

    const/16 v5, 0xb

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->EU:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->language_flag_euskera:I

    sget v8, Lcom/etermax/o;->language_eu:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EU:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 20
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "GA"

    const/16 v5, 0xc

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->GA:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->language_flag_galicia:I

    sget v8, Lcom/etermax/o;->language_ga:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->GA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 21
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "NW"

    const/16 v5, 0xd

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->NW:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_no:I

    sget v8, Lcom/etermax/o;->language_nw:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->NW:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 22
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "PO"

    const/16 v5, 0xe

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->PO:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_pl:I

    sget v8, Lcom/etermax/o;->language_po:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->PO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 23
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "RU"

    const/16 v5, 0xf

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->RU:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_ru:I

    sget v8, Lcom/etermax/o;->language_ru:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->RU:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 25
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "TR"

    const/16 v5, 0x10

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->TR:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_tr:I

    sget v8, Lcom/etermax/o;->language_tr:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->TR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 26
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "AR"

    const/16 v5, 0x11

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->AR:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_sa:I

    sget v8, Lcom/etermax/o;->language_ar:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->AR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 27
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "FI"

    const/16 v5, 0x12

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->FI:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_fi:I

    sget v8, Lcom/etermax/o;->language_fi:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->FI:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 28
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "HE"

    const/16 v5, 0x13

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->HE:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_il:I

    sget v8, Lcom/etermax/o;->language_he:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->HE:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 29
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "ZH_HANS"

    const/16 v5, 0x14

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->ZH_HANS:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_cn:I

    sget v8, Lcom/etermax/o;->language_zh_hans:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ZH_HANS:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 30
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "KO"

    const/16 v5, 0x15

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->KO:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_kr:I

    sget v8, Lcom/etermax/o;->language_ko:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->KO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 31
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "JA"

    const/16 v5, 0x16

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->JA:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_jp:I

    sget v8, Lcom/etermax/o;->language_ja:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->JA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 32
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "HI"

    const/16 v5, 0x17

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->HI:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_in:I

    sget v8, Lcom/etermax/o;->language_hi:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->HI:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 33
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "TH"

    const/16 v5, 0x18

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->TH:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_th:I

    sget v8, Lcom/etermax/o;->language_th:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->TH:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 34
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "DA"

    const/16 v5, 0x19

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->DA:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_dk:I

    sget v8, Lcom/etermax/o;->language_da:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->DA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 35
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "ID"

    const/16 v5, 0x1a

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->ID:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_id:I

    sget v8, Lcom/etermax/o;->language_id:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ID:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 36
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "BG"

    const/16 v5, 0x1b

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->BG:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_bg:I

    sget v8, Lcom/etermax/o;->language_bg:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->BG:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 37
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "HR"

    const/16 v5, 0x1c

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->HR:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_hr:I

    sget v8, Lcom/etermax/o;->language_hr:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->HR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 38
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "CS"

    const/16 v5, 0x1d

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->CS:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_cz:I

    sget v8, Lcom/etermax/o;->language_cs:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->CS:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 39
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "EO"

    const/16 v5, 0x1e

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->EO:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->language_flag_esperanto:I

    sget v8, Lcom/etermax/o;->language_eo:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 40
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "ET"

    const/16 v5, 0x1f

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->ET:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_ee:I

    sget v8, Lcom/etermax/o;->language_et:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ET:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 41
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "EL"

    const/16 v5, 0x20

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->EL:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_gr:I

    sget v8, Lcom/etermax/o;->language_el:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EL:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 42
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "HU"

    const/16 v5, 0x21

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->HU:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_hu:I

    sget v8, Lcom/etermax/o;->language_hu:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->HU:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 43
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "IS"

    const/16 v5, 0x22

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->IS:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_is:I

    sget v8, Lcom/etermax/o;->language_is:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->IS:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 44
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "LA"

    const/16 v5, 0x23

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->LA:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->language_flag_latin:I

    sget v8, Lcom/etermax/o;->language_la:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->LA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 45
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "LV"

    const/16 v5, 0x24

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->LV:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_lv:I

    sget v8, Lcom/etermax/o;->language_lv:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->LV:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 46
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "LT"

    const/16 v5, 0x25

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->LT:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_lt:I

    sget v8, Lcom/etermax/o;->language_lt:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->LT:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 47
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "MS_LATN"

    const/16 v5, 0x26

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->MS_LATN:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_my:I

    sget v8, Lcom/etermax/o;->language_ms_latn:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->MS_LATN:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 48
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "RO"

    const/16 v5, 0x27

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->RO:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_ro:I

    sget v8, Lcom/etermax/o;->language_ro:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->RO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 49
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "SK"

    const/16 v5, 0x28

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->SK:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_sk:I

    sget v8, Lcom/etermax/o;->language_sk:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->SK:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 50
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "SL"

    const/16 v5, 0x29

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->SL:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_si:I

    sget v8, Lcom/etermax/o;->language_sl:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->SL:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 51
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "UK"

    const/16 v5, 0x2a

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->UK:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_ua:I

    sget v8, Lcom/etermax/o;->language_uk:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->UK:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 52
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "CY"

    const/16 v5, 0x2b

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->CY:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->language_flag_wales:I

    sget v8, Lcom/etermax/o;->language_cy:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->CY:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 53
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "ES_LA"

    const/16 v5, 0x2c

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->ES_LA:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->language_flag_latam:I

    sget v8, Lcom/etermax/o;->language_es:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ES_LA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 54
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "ES_ES"

    const/16 v5, 0x2d

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->ES_ES:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_es:I

    sget v8, Lcom/etermax/o;->language_es:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ES_ES:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 55
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "EN_US"

    const/16 v5, 0x2e

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->EN_US:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->country_us:I

    sget v8, Lcom/etermax/o;->language_en:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EN_US:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 56
    new-instance v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    const-string v4, "AF"

    const/16 v5, 0x2f

    sget-object v6, Lcom/etermax/gamescommon/language/Language;->AF:Lcom/etermax/gamescommon/language/Language;

    sget v7, Lcom/etermax/h;->language_flag_africanunion:I

    sget v8, Lcom/etermax/o;->language_af:I

    invoke-direct/range {v3 .. v8}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V

    sput-object v3, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->AF:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    .line 5
    const/16 v0, 0x30

    new-array v0, v0, [Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    sget-object v1, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ES:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EN:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v1, v0, v9

    sget-object v1, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->FR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v1, v0, v10

    sget-object v1, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->DE:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v1, v0, v11

    sget-object v1, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->IT:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->SV:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->CA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->PT:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->PT_BR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->NL:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EN_UK:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EU:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->GA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->NW:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->PO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->RU:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->TR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->AR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->FI:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->HE:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ZH_HANS:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->KO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->JA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->HI:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->TH:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->DA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ID:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->BG:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->HR:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->CS:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ET:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EL:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->HU:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->IS:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->LA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->LV:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->LT:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->MS_LATN:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->RO:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->SK:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->SL:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->UK:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->CY:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ES_LA:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->ES_ES:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EN_US:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->AF:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->$VALUES:[Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/language/Language;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->code:Lcom/etermax/gamescommon/language/Language;

    .line 65
    iput p4, p0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->flagResource:I

    .line 66
    iput p5, p0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->nameResource:I

    .line 67
    return-void
.end method

.method public static getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;
    .locals 5
    .parameter

    .prologue
    .line 82
    invoke-static {}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->values()[Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 83
    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v4

    if-ne v4, p0, :cond_0

    .line 87
    :goto_1
    return-object v0

    .line 82
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getByString(Ljava/lang/String;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;
    .locals 6
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;Z)Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    .line 92
    invoke-static {}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->values()[Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 93
    iget-object v5, v0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->code:Lcom/etermax/gamescommon/language/Language;

    if-ne v5, v2, :cond_0

    .line 97
    :goto_1
    return-object v0

    .line 92
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getDefault()Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v0

    goto :goto_1
.end method

.method public static getDefault()Lcom/etermax/gamescommon/language/LanguageResourceMapper;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->EN:Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/language/LanguageResourceMapper;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->$VALUES:[Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/language/LanguageResourceMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    return-object v0
.end method


# virtual methods
.method public getCode()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->code:Lcom/etermax/gamescommon/language/Language;

    return-object v0
.end method

.method public getFlagResource()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->flagResource:I

    return v0
.end method

.method public getNameResource()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->nameResource:I

    return v0
.end method
