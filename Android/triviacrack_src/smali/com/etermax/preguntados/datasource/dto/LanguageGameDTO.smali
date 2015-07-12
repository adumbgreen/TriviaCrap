.class public Lcom/etermax/preguntados/datasource/dto/LanguageGameDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private language:Lcom/etermax/gamescommon/language/Language;

.field private quantity:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/LanguageGameDTO;->language:Lcom/etermax/gamescommon/language/Language;

    return-object v0
.end method

.method public getQuantity()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/LanguageGameDTO;->quantity:J

    return-wide v0
.end method
