.class public Lcom/etermax/preguntados/ui/questionsfactory/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/etermax/preguntados/ui/questionsfactory/e;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "preguntados_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/e;->b:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/e;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-static {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByString(Ljava/lang/String;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 90
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByString(Ljava/lang/String;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/e;
    .locals 1
    .parameter

    .prologue
    .line 33
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/e;->a:Lcom/etermax/preguntados/ui/questionsfactory/e;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/e;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/e;->a:Lcom/etermax/preguntados/ui/questionsfactory/e;

    .line 36
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/e;->a:Lcom/etermax/preguntados/ui/questionsfactory/e;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 102
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 103
    const-string v1, ""

    .line 105
    sget-object v2, Lcom/etermax/gamescommon/language/Language;->ES:Lcom/etermax/gamescommon/language/Language;

    if-ne p1, v2, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xbf

    if-ne v2, v3, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 110
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 111
    sget-object v3, Lcom/etermax/gamescommon/language/Language;->ES:Lcom/etermax/gamescommon/language/Language;

    if-ne p1, v3, :cond_1

    if-eqz p2, :cond_1

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u00bf"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    :cond_2
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/Country;
    .locals 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/e;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/etermax/preguntados/h/a;->a(Ljava/lang/String;)Lcom/etermax/preguntados/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/h/a;->a()Lcom/etermax/preguntados/datasource/dto/enums/Country;

    move-result-object v0

    .line 98
    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 40
    const-string v0, "suggest_question_language"

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/language/Language;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "suggest_question_language"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rate_question_country"

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/enums/Country;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method

.method public b()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 44
    const-string v0, "rate_question_language"

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/etermax/gamescommon/language/Language;)V
    .locals 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rate_question_language"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public c()Lcom/etermax/preguntados/datasource/dto/enums/Country;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/e;->b:Landroid/content/SharedPreferences;

    const-string v1, "rate_question_first_time"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rate_question_first_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "rate_question_country"

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->b(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/Country;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/etermax/gamescommon/language/Language;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "translate_language_from"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method public d()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 57
    const-string v0, "translate_language_from"

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/etermax/gamescommon/language/Language;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "translate_language_to"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void
.end method

.method public e()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 61
    const-string v0, "translate_language_to"

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    return-object v0
.end method
