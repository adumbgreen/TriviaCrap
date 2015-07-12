.class public final enum Lcom/etermax/gamescommon/language/Language;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/language/Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/language/Language;

.field public static final enum AF:Lcom/etermax/gamescommon/language/Language;

.field public static final enum AR:Lcom/etermax/gamescommon/language/Language;

.field public static final enum BG:Lcom/etermax/gamescommon/language/Language;

.field public static final enum CA:Lcom/etermax/gamescommon/language/Language;

.field public static final enum CS:Lcom/etermax/gamescommon/language/Language;

.field public static final enum CY:Lcom/etermax/gamescommon/language/Language;

.field public static final enum DA:Lcom/etermax/gamescommon/language/Language;

.field public static final enum DE:Lcom/etermax/gamescommon/language/Language;

.field public static final DEFAULT_LANGUAGE:Lcom/etermax/gamescommon/language/Language;

.field public static final enum EL:Lcom/etermax/gamescommon/language/Language;

.field public static final enum EN:Lcom/etermax/gamescommon/language/Language;

.field public static final enum EN_UK:Lcom/etermax/gamescommon/language/Language;

.field public static final enum EN_US:Lcom/etermax/gamescommon/language/Language;

.field public static final enum EO:Lcom/etermax/gamescommon/language/Language;

.field public static final enum ES:Lcom/etermax/gamescommon/language/Language;

.field public static final enum ES_ES:Lcom/etermax/gamescommon/language/Language;

.field public static final enum ES_LA:Lcom/etermax/gamescommon/language/Language;

.field public static final enum ET:Lcom/etermax/gamescommon/language/Language;

.field public static final enum EU:Lcom/etermax/gamescommon/language/Language;

.field public static final enum FI:Lcom/etermax/gamescommon/language/Language;

.field public static final enum FR:Lcom/etermax/gamescommon/language/Language;

.field public static final enum GA:Lcom/etermax/gamescommon/language/Language;

.field public static final enum HE:Lcom/etermax/gamescommon/language/Language;

.field public static final enum HI:Lcom/etermax/gamescommon/language/Language;

.field public static final enum HR:Lcom/etermax/gamescommon/language/Language;

.field public static final enum HU:Lcom/etermax/gamescommon/language/Language;

.field public static final enum ID:Lcom/etermax/gamescommon/language/Language;

.field public static final enum IS:Lcom/etermax/gamescommon/language/Language;

.field public static final enum IT:Lcom/etermax/gamescommon/language/Language;

.field public static final enum JA:Lcom/etermax/gamescommon/language/Language;

.field public static final enum KO:Lcom/etermax/gamescommon/language/Language;

.field public static final enum LA:Lcom/etermax/gamescommon/language/Language;

.field public static final enum LT:Lcom/etermax/gamescommon/language/Language;

.field public static final enum LV:Lcom/etermax/gamescommon/language/Language;

.field public static final enum MS_LATN:Lcom/etermax/gamescommon/language/Language;

.field public static final enum NL:Lcom/etermax/gamescommon/language/Language;

.field public static final enum NW:Lcom/etermax/gamescommon/language/Language;

.field public static final enum PO:Lcom/etermax/gamescommon/language/Language;

.field public static final enum PT:Lcom/etermax/gamescommon/language/Language;

.field public static final enum PT_BR:Lcom/etermax/gamescommon/language/Language;

.field public static final enum RO:Lcom/etermax/gamescommon/language/Language;

.field public static final enum RU:Lcom/etermax/gamescommon/language/Language;

.field public static final enum SK:Lcom/etermax/gamescommon/language/Language;

.field public static final enum SL:Lcom/etermax/gamescommon/language/Language;

.field public static final enum SV:Lcom/etermax/gamescommon/language/Language;

.field public static final enum TH:Lcom/etermax/gamescommon/language/Language;

.field public static final enum TR:Lcom/etermax/gamescommon/language/Language;

.field public static final enum UK:Lcom/etermax/gamescommon/language/Language;

.field public static final enum ZH_HANS:Lcom/etermax/gamescommon/language/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "ES"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->ES:Lcom/etermax/gamescommon/language/Language;

    .line 10
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "EN"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    .line 11
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "FR"

    invoke-direct {v0, v1, v5}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->FR:Lcom/etermax/gamescommon/language/Language;

    .line 12
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "DE"

    invoke-direct {v0, v1, v6}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->DE:Lcom/etermax/gamescommon/language/Language;

    .line 13
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "IT"

    invoke-direct {v0, v1, v7}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->IT:Lcom/etermax/gamescommon/language/Language;

    .line 14
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "SV"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->SV:Lcom/etermax/gamescommon/language/Language;

    .line 15
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "CA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->CA:Lcom/etermax/gamescommon/language/Language;

    .line 16
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "PT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->PT:Lcom/etermax/gamescommon/language/Language;

    .line 17
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "PT_BR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->PT_BR:Lcom/etermax/gamescommon/language/Language;

    .line 18
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "NL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->NL:Lcom/etermax/gamescommon/language/Language;

    .line 19
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "EN_UK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->EN_UK:Lcom/etermax/gamescommon/language/Language;

    .line 20
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "EU"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->EU:Lcom/etermax/gamescommon/language/Language;

    .line 21
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "GA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->GA:Lcom/etermax/gamescommon/language/Language;

    .line 22
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "NW"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->NW:Lcom/etermax/gamescommon/language/Language;

    .line 23
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "PO"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->PO:Lcom/etermax/gamescommon/language/Language;

    .line 24
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "RU"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->RU:Lcom/etermax/gamescommon/language/Language;

    .line 25
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "TR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->TR:Lcom/etermax/gamescommon/language/Language;

    .line 26
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "AR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->AR:Lcom/etermax/gamescommon/language/Language;

    .line 27
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "FI"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->FI:Lcom/etermax/gamescommon/language/Language;

    .line 28
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "HE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->HE:Lcom/etermax/gamescommon/language/Language;

    .line 29
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "ZH_HANS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->ZH_HANS:Lcom/etermax/gamescommon/language/Language;

    .line 30
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "KO"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->KO:Lcom/etermax/gamescommon/language/Language;

    .line 31
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "JA"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->JA:Lcom/etermax/gamescommon/language/Language;

    .line 32
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "HI"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->HI:Lcom/etermax/gamescommon/language/Language;

    .line 33
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "TH"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->TH:Lcom/etermax/gamescommon/language/Language;

    .line 34
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "DA"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->DA:Lcom/etermax/gamescommon/language/Language;

    .line 35
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "ID"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->ID:Lcom/etermax/gamescommon/language/Language;

    .line 36
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "BG"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->BG:Lcom/etermax/gamescommon/language/Language;

    .line 37
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "HR"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->HR:Lcom/etermax/gamescommon/language/Language;

    .line 38
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "CS"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->CS:Lcom/etermax/gamescommon/language/Language;

    .line 39
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "EO"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->EO:Lcom/etermax/gamescommon/language/Language;

    .line 40
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "ET"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->ET:Lcom/etermax/gamescommon/language/Language;

    .line 41
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "EL"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->EL:Lcom/etermax/gamescommon/language/Language;

    .line 42
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "HU"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->HU:Lcom/etermax/gamescommon/language/Language;

    .line 43
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "IS"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->IS:Lcom/etermax/gamescommon/language/Language;

    .line 44
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "LA"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->LA:Lcom/etermax/gamescommon/language/Language;

    .line 45
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "LV"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->LV:Lcom/etermax/gamescommon/language/Language;

    .line 46
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "LT"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->LT:Lcom/etermax/gamescommon/language/Language;

    .line 47
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "MS_LATN"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->MS_LATN:Lcom/etermax/gamescommon/language/Language;

    .line 48
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "RO"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->RO:Lcom/etermax/gamescommon/language/Language;

    .line 49
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "SK"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->SK:Lcom/etermax/gamescommon/language/Language;

    .line 50
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "SL"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->SL:Lcom/etermax/gamescommon/language/Language;

    .line 51
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "UK"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->UK:Lcom/etermax/gamescommon/language/Language;

    .line 52
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "CY"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->CY:Lcom/etermax/gamescommon/language/Language;

    .line 53
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "ES_LA"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->ES_LA:Lcom/etermax/gamescommon/language/Language;

    .line 54
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "ES_ES"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->ES_ES:Lcom/etermax/gamescommon/language/Language;

    .line 55
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "EN_US"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->EN_US:Lcom/etermax/gamescommon/language/Language;

    .line 56
    new-instance v0, Lcom/etermax/gamescommon/language/Language;

    const-string v1, "AF"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/language/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->AF:Lcom/etermax/gamescommon/language/Language;

    .line 7
    const/16 v0, 0x30

    new-array v0, v0, [Lcom/etermax/gamescommon/language/Language;

    sget-object v1, Lcom/etermax/gamescommon/language/Language;->ES:Lcom/etermax/gamescommon/language/Language;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/language/Language;->FR:Lcom/etermax/gamescommon/language/Language;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/gamescommon/language/Language;->DE:Lcom/etermax/gamescommon/language/Language;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/gamescommon/language/Language;->IT:Lcom/etermax/gamescommon/language/Language;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->SV:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->CA:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->PT:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->PT_BR:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->NL:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->EN_UK:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->EU:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->GA:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->NW:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->PO:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->RU:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->TR:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->AR:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->FI:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->HE:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->ZH_HANS:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->KO:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->JA:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->HI:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->TH:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->DA:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->ID:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->BG:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->HR:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->CS:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->EO:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->ET:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->EL:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->HU:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->IS:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->LA:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->LV:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->LT:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->MS_LATN:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->RO:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->SK:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->SL:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->UK:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->CY:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->ES_LA:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->ES_ES:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->EN_US:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->AF:Lcom/etermax/gamescommon/language/Language;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->$VALUES:[Lcom/etermax/gamescommon/language/Language;

    .line 58
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->EN_UK:Lcom/etermax/gamescommon/language/Language;

    sput-object v0, Lcom/etermax/gamescommon/language/Language;->DEFAULT_LANGUAGE:Lcom/etermax/gamescommon/language/Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;
    .locals 1
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;Z)Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Z)Lcom/etermax/gamescommon/language/Language;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->DEFAULT_LANGUAGE:Lcom/etermax/gamescommon/language/Language;

    .line 85
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const-string v1, "PT-BR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->PT_BR:Lcom/etermax/gamescommon/language/Language;

    goto :goto_0

    .line 72
    :cond_1
    const-string v1, "EN-UK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->EN_UK:Lcom/etermax/gamescommon/language/Language;

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/language/Language;->valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->DEFAULT_LANGUAGE:Lcom/etermax/gamescommon/language/Language;

    goto :goto_0

    .line 82
    :cond_3
    const-string v2, "Language"

    const-string v3, "error in: "

    invoke-static {v2, v3, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/etermax/gamescommon/language/Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->$VALUES:[Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/language/Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/language/Language;

    return-object v0
.end method
